kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/rust.bst
- components/kf6/extra-cmake-modules.bst
- components/dev-tools/corrosion.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: >-
    -DUSE_CORROSION_CXXBRIDGE=OFF

sources:
- kind: git_repo
  url: kde:libraries/cxx-rust-cssparser.git
  track: "v*.*"
  ref: v1.0.0-0-g2c5cd92c14164e6da2b98beba1edeaecdc1445d1
- kind: cargo2
  cargo-lock: rust/Cargo.lock
  ref:
  - kind: registry
    name: anstyle
    version: 1.0.14
    sha: 940b3a0ca603d1eade50a4846a2afffd5ef57a9feac2c0e2ec2e14f9ead76000
  - kind: registry
    name: bitflags
    version: 2.11.1
    sha: c4512299f36f043ab09a583e57bceb5a5aab7a73db1805848e8fef3c9e8c78b3
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: cc
    version: 1.2.60
    sha: 43c5703da9466b66a946814e1adf53ea2c90f10063b86290cc9eb67ce3478a20
  - kind: registry
    name: clap
    version: 4.6.1
    sha: 1ddb117e43bbf7dacf0a4190fef4d345b9bad68dfc649cb349e7d17d28428e51
  - kind: registry
    name: clap_builder
    version: 4.6.0
    sha: 714a53001bf66416adb0e2ef5ac857140e7dc3a0c48fb28b2f10762fc4b5069f
  - kind: registry
    name: clap_lex
    version: 1.1.0
    sha: c8d4a3bb8b1e0c1050499d1815f5ab16d04f0959b233085fb31653fbfc9d98f9
  - kind: registry
    name: codespan-reporting
    version: 0.13.1
    sha: af491d569909a7e4dee0ad7db7f5341fef5c614d5b8ec8cf765732aba3cff681
  - kind: registry
    name: cssparser
    version: 0.35.0
    sha: 4e901edd733a1472f944a45116df3f846f54d37e67e68640ac8bb69689aca2aa
  - kind: registry
    name: cssparser-color
    version: 0.3.0
    sha: 6eeef9ae8c0e112edd89eb6406b3156ffa99c7e037b3baef1dbdf4158d35c324
  - kind: registry
    name: cssparser-macros
    version: 0.6.1
    sha: 13b588ba4ac1a99f7f2964d24b3d896ddc6bf847ee3855dbd4366f058cfcd331
  - kind: registry
    name: cxx
    version: 1.0.194
    sha: 747d8437319e3a2f43d93b341c137927ca70c0f5dabeea7a005a73665e247c7e
  - kind: registry
    name: cxx-build
    version: 1.0.194
    sha: b0f4697d190a142477b16aef7da8a99bfdc41e7e8b1687583c0d23a79c7afc1e
  - kind: registry
    name: cxxbridge-cmd
    version: 1.0.194
    sha: d0956799fa8678d4c50eed028f2de1c0552ae183c76e976cf7ca8c4e36a7c328
  - kind: registry
    name: cxxbridge-flags
    version: 1.0.194
    sha: 23384a836ab4f0ad98ace7e3955ad2de39de42378ab487dc28d3990392cb283a
  - kind: registry
    name: cxxbridge-macro
    version: 1.0.194
    sha: e6acc6b5822b9526adfb4fc377b67128fdd60aac757cc4a741a6278603f763cf
  - kind: registry
    name: derive_more
    version: 0.99.20
    sha: 6edb4b64a43d977b8e99788fe3a04d483834fba1215a7e02caa415b626497f7f
  - kind: registry
    name: dtoa
    version: 1.0.11
    sha: 4c3cf4824e2d5f025c7b531afcb2325364084a16806f6d47fbc1f5fbd9960590
  - kind: registry
    name: dtoa-short
    version: 0.3.5
    sha: cd1511a7b6a56299bd043a9c167a6d2bfb37bf84a6dfceaba651168adfb43c87
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
  - kind: registry
    name: foldhash
    version: 0.2.0
    sha: 77ce24cb58228fbb8aa041425bb1050850ac19177686ea6e0f41a70416f56fdb
  - kind: registry
    name: fxhash
    version: 0.2.1
    sha: c31b6d751ae2c7f11320402d34e41349dd1016f8d5d45e48c4312bc8625af50c
  - kind: registry
    name: hashbrown
    version: 0.17.0
    sha: 4f467dd6dccf739c208452f8014c75c18bb8301b050ad1cfb27153803edb0f51
  - kind: registry
    name: indexmap
    version: 2.14.0
    sha: d466e9454f08e4a911e14806c24e16fba1b4c121d1ea474396f396069cf949d9
  - kind: registry
    name: itoa
    version: 1.0.18
    sha: 8f42a60cbdf9a97f5d2305f08a87dc4e09308d1276d28c869c684d7777685682
  - kind: registry
    name: link-cplusplus
    version: 1.0.12
    sha: 7f78c730aaa7d0b9336a299029ea49f9ee53b0ed06e9202e8cb7db9bae7b8c82
  - kind: registry
    name: log
    version: 0.4.29
    sha: 5e5032e24019045c762d3c0f28f5b6b8bbf38563a65908389bf7978758920897
  - kind: registry
    name: memchr
    version: 2.8.0
    sha: f8ca58f447f06ed17d5fc4043ce1b10dd205e060fb3ce5b979b8ed8e59ff3f79
  - kind: registry
    name: new_debug_unreachable
    version: 1.0.6
    sha: 650eef8c711430f1a879fdd01d4745a7deea475becfb90269c06775983bbf086
  - kind: registry
    name: nom
    version: 8.0.0
    sha: df9761775871bdef83bee530e60050f7e54b1105350d6884eb0fb4f46c2f9405
  - kind: registry
    name: phf
    version: 0.11.3
    sha: 1fd6780a80ae0c52cc120a26a1a42c1ae51b247a253e4e06113d23d2c2edd078
  - kind: registry
    name: phf_codegen
    version: 0.11.3
    sha: aef8048c789fa5e851558d709946d6d79a8ff88c0440c587967f8e94bfb1216a
  - kind: registry
    name: phf_generator
    version: 0.11.3
    sha: 3c80231409c20246a13fddb31776fb942c38553c51e871f8cbd687a4cfb5843d
  - kind: registry
    name: phf_macros
    version: 0.11.3
    sha: f84ac04429c13a7ff43785d75ad27569f2951ce0ffd30a3321230db2fc727216
  - kind: registry
    name: phf_shared
    version: 0.11.3
    sha: 67eabc2ef2a60eb7faa00097bd1ffdb5bd28e62bf39990626a582201b7a754e5
  - kind: registry
    name: precomputed-hash
    version: 0.1.1
    sha: 925383efa346730478fb4838dbe9137d2a47675ad789c546d150a6e1dd4ab31c
  - kind: registry
    name: proc-macro2
    version: 1.0.106
    sha: 8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934
  - kind: registry
    name: quote
    version: 1.0.45
    sha: 41f2619966050689382d2b44f664f4bc593e129785a36d6ee376ddf37259b924
  - kind: registry
    name: rand
    version: 0.8.6
    sha: 5ca0ecfa931c29007047d1bc58e623ab12e5590e8c7cc53200d5202b69266d8a
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: scratch
    version: 1.0.9
    sha: d68f2ec51b097e4c1a75b681a8bec621909b5e91f15bb7b840c4f2f7b01148b2
  - kind: registry
    name: selectors
    version: 0.27.0
    sha: 5b75e048a93e14929e68e37b82e207db957cbb368375a80ed3ca28ac75080856
  - kind: registry
    name: serde
    version: 1.0.228
    sha: 9a8e94ea7f378bd32cbbd37198a4a91436180c5bb472411e48b5ec2e2124ae9e
  - kind: registry
    name: serde_core
    version: 1.0.228
    sha: 41d385c7d4ca58e59fc732af25c3983b67ac852c1a25000afe1175de458b67ad
  - kind: registry
    name: serde_derive
    version: 1.0.228
    sha: d540f220d3187173da220f885ab66608367b6574e925011a9353e4badda91d79
  - kind: registry
    name: servo_arc
    version: 0.4.3
    sha: 170fb83ab34de17dc69aa7c67482b22218ddb85da56546f9bd6b929e32a05930
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: siphasher
    version: 1.0.2
    sha: b2aa850e253778c88a04c3d7323b043aeda9d3e30d5971937c1855769763678e
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: stable_deref_trait
    version: 1.2.1
    sha: 6ce2be8dc25455e1f91df71bfa12ad37d7af1092ae736f3a6cd0e37bc7810596
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: syn
    version: 2.0.117
    sha: e665b8803e7b1d2a727f4023456bbbbe74da67099c585258af0ad9c5013b9b99
  - kind: registry
    name: termcolor
    version: 1.4.1
    sha: 06794f8f6c5c898b3275aebefa6b8a1cb24cd2c6c79397ab15774837a0bc5755
  - kind: registry
    name: unicode-ident
    version: 1.0.24
    sha: e6e4313cd5fcd3dad5cafa179702e2b244f760991f45397d14d4ebf38247da75
  - kind: registry
    name: unicode-width
    version: 0.2.2
    sha: b4ac048d71ede7ee76d585517add45da530660ef4390e49b098733c6e897f254
  - kind: registry
    name: winapi-util
    version: 0.1.11
    sha: c2a7b1c03c876122aa43f3020e6c3c3ee5c05081c9a00739faf7503aeba10d22
  - kind: registry
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
