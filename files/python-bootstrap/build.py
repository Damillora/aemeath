import argparse
import importlib
import os
import sys

import tomllib

parser = argparse.ArgumentParser()
parser.add_argument("--no-isolation", action="store_true", help="no-op")
parser.add_argument("--wheel", action="store_true", help="no-op")
parser.add_argument("--outdir", default="dist")
parser.add_argument("workdir")


if __name__ == "__main__":
    arguments = parser.parse_args()
    os.chdir(arguments.workdir)
    with open("pyproject.toml", "rb") as pyproject:
        config = tomllib.load(pyproject)
        backend_path = config["build-system"].get("backend-path")
        if backend_path:
            sys.path.extend(backend_path)
        module = importlib.import_module(config["build-system"]["build-backend"])
        os.makedirs(arguments.outdir)
        module.build_wheel(arguments.outdir)
