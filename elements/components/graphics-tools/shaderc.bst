kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-lang/python3.bst
- components/graphics-tools/spirv-tools.bst

depends:
- components/graphics-tools/glslang.bst

variables:
  cmake-local: >-
    -Dglslang_SOURCE_DIR="%{includedir}/glslang"
    -DSHADERC_SKIP_TESTS:BOOL=YES
    -DSHADERC_SKIP_EXAMPLES:BOOL=ON

config:
  configure-commands:
    (<):
    - |
      # Disable git versioning
      sed -i -e '/build-version/d' glslc/CMakeLists.txt

      # Manually create build-version.inc as we disabled git versioning
      cat <<EOF >glslc/src/build-version.inc
      "shaderc $(git describe | sed 's/^v//')"
      "spriv-tools $(spirv-cfg --version | sed '/^SPIRV-Tools v\([^ ]*\) .*$/{;s//\1/;q;};d')"
      "glslang $(glslangValidator --version | sed '/^Glslang Version: /{;s///;q;};d')"
      EOF

  install-commands:
    (>):
    - |
      if ldd -r "%{install-root}%{libdir}/libshaderc_shared.so" 2>&1 | grep -q "^undefined symbol:"; then
          echo "Undefined symbols found in libshaderc_shared.so" >&2
          exit 1
      else
          echo "No undefined symbols found in libshaderc_shared.so"
      fi

sources:
- kind: git_repo
  url: github:google/shaderc.git
  track: v*
  ref: v2026.2-0-gd5f08ae5c5a9a45165578445cbd0f9adf0223448
- kind: patch
  path: patches/shaderc/what-a-mess.patch
