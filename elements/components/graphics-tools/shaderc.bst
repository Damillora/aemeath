kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-lang/python3.bst
- components/graphics-data/spirv-headers.bst
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
  ref: v2026.4-0-gb64fd42c4a2a9d501c47aca5d3571f7673a5e9cc
- kind: patch
  path: patches/shaderc/what-a-mess.patch
