import argparse
import compileall
import configparser
import os
import shutil
import stat
import sys
import sysconfig
import textwrap

parser = argparse.ArgumentParser()
parser.add_argument("--destdir", required=True)
parser.add_argument("wheels", nargs="+")


def get_path(value):
    path = sysconfig.get_path(value)
    _, _, tail = os.path.splitroot(path)
    return tail


class Installer:
    def __init__(self, arguments):
        self.install_target = os.path.join(arguments.destdir, get_path("purelib"))
        self.scripts_target = os.path.join(arguments.destdir, get_path("scripts"))
        self.wheels = arguments.wheels

    def generate_entrypoint(self, entrypoint_path):
        parser = configparser.ConfigParser()
        parser.read(entrypoint_path)
        if not parser.has_section("console_scripts"):
            return
        os.makedirs(self.scripts_target, exist_ok=True)
        for script_name, payload in parser["console_scripts"].items():
            module, function = payload.strip().split(":")
            full_path = os.path.join(self.scripts_target, script_name)
            with open(full_path, "w", encoding="utf-8") as file:
                file.write(
                    textwrap.dedent(f"""\
                #!{sys.executable}
                from {module} import {function}
                {function}()""")
                )
            st = os.stat(full_path)
            os.chmod(full_path, st.st_mode | stat.S_IEXEC)

    def process_entrypoints(self):
        for directory in os.listdir(self.install_target):
            if directory.endswith(".dist-info"):
                entrypoint_path = os.path.join(
                    self.install_target, directory, "entry_points.txt"
                )
                if os.path.exists(entrypoint_path):
                    self.generate_entrypoint(entrypoint_path)

    def install(self):
        for wheel in self.wheels:
            shutil.unpack_archive(wheel, self.install_target, "zip")
        self.process_entrypoints()
        compileall.compile_dir(self.install_target, optimize=(0, 1, 2))


if __name__ == "__main__":
    installer = Installer(parser.parse_args())
    installer.install()
