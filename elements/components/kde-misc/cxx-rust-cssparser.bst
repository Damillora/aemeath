kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/rust.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/dev-tools/corrosion.bst

depends:
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: >-
    -DUSE_CORROSION_CXXBRIDGE=OFF

sources:
- kind: git_repo
  url: kde:libraries/cxx-rust-cssparser.git
  track: master
  ref: v1.0.0-9-gd7bd0b6a6ca1db88a8189aee81498f194f1e45a5
- kind: cargo2
  vendor-dir: rust/.vendored-crates
  cargo-lock: rust/Cargo.lock
  ref:
  - kind: registry
    name: anstyle
    version: 1.0.14
    sha: 940b3a0ca603d1eade50a4846a2afffd5ef57a9feac2c0e2ec2e14f9ead76000
  - kind: registry
    name: bitflags
    version: 2.13.1
    sha: b588b76d00fde79687d7646a9b5bdf3cc0f655e0bbd080335a95d7e96f3587da
  - kind: registry
    name: cc
    version: 1.4.4
    sha: 0ad534f4357a5264cce5019c989cf66a4f0dc4e0d1b1d15f8aacec0ff7360273
  - kind: registry
    name: clap
    version: 4.6.6
    sha: 473c7e07f409a8d772161724aa8db6a765a2532a70f9667eeb7b49d3d02fbdca
  - kind: registry
    name: clap_builder
    version: 4.6.6
    sha: 7b48fea5a88e9ae728a2dcbedbfc0e730f7d60da42e1cb049a83c9fb8b789889
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
    version: 0.37.0
    sha: 8c9cdaae01d5ed7882b04d795e7f752f46ff52d2fa3b50a20d28c464510bba98
  - kind: registry
    name: cssparser-color
    version: 0.5.0
    sha: bbaa233e1dcd9c13a5d3e3a8a2c0f5a727bac380398345dbcb31db4597edc86b
  - kind: registry
    name: cssparser-macros
    version: 0.7.0
    sha: 10a2a99df6e410a8ff4245aa2006499ea662245f967cc7c0a38c83ef8eb44dbf
  - kind: registry
    name: cxx
    version: 1.0.199
    sha: 824894a4a85dca76d4c95c2b9098c036f5a29f627b30c12780774f6654e60974
  - kind: registry
    name: cxx-build
    version: 1.0.199
    sha: f1ae0b651ea5b0000b19513aef5a03f194d7e3486f2d9258b658da8677fe9036
  - kind: registry
    name: cxxbridge-cmd
    version: 1.0.199
    sha: fb05f91d3fb8435d9bab6ac5ce6ac1868be774325fb7fb2a91be39393b21388e
  - kind: registry
    name: cxxbridge-flags
    version: 1.0.199
    sha: bf293202e0e3e98495785745389e8d0755b217e66f19194a5c695c25e03282ef
  - kind: registry
    name: cxxbridge-macro
    version: 1.0.199
    sha: ca001d746947c7249ed9d332a10f7a59daedbafeb0ec68c5c18a7db7a93f6ccc
  - kind: registry
    name: derive_more
    version: 2.1.1
    sha: d751e9e49156b02b44f9c1815bcb94b984cdcc4396ecc32521c739452808b134
  - kind: registry
    name: derive_more-impl
    version: 2.1.1
    sha: 799a97264921d8623a957f6c3b9011f3b5492f557bbb7a5a19b7fa6d06ba8dcb
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
    name: fastrand
    version: 2.5.0
    sha: da7c62ceae207dd37ea5b845da6a0696c799f85e97da1ab5b7910be3c1c80223
  - kind: registry
    name: find-msvc-tools
    version: 0.1.11
    sha: d45db016d36b838f563236e9193d0ee6ce38f3f68b6c94e914b4929c96bbb890
  - kind: registry
    name: foldhash
    version: 0.2.0
    sha: 77ce24cb58228fbb8aa041425bb1050850ac19177686ea6e0f41a70416f56fdb
  - kind: registry
    name: hashbrown
    version: 0.17.1
    sha: ed5909b6e89a2db4456e54cd5f673791d7eca6732202bbf2a9cc504fe2f9b84a
  - kind: registry
    name: indexmap
    version: 2.14.1
    sha: 07aa2048142242915a31d35844fb311e0e53fcca590c3a0a40dcf1b841fa09eb
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
    version: 0.4.34
    sha: f9f8bd3e56ce4dfc153cf470fffbfa98c7620958b312ca5c3a4b8d5181fd13c6
  - kind: registry
    name: memchr
    version: 2.8.3
    sha: cf8baf1c55e62ffcace7a9f06f4bd9cd3f0c4beb022d3b367256b91b87513d98
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
    version: 0.13.1
    sha: c1562dc717473dbaa4c1f85a36410e03c047b2e7df7f45ee938fbef64ae7fadf
  - kind: registry
    name: phf_codegen
    version: 0.13.1
    sha: 49aa7f9d80421bca176ca8dbfebe668cc7a2684708594ec9f3c0db0805d5d6e1
  - kind: registry
    name: phf_generator
    version: 0.13.1
    sha: 135ace3a761e564ec88c03a77317a7c6b80bb7f7135ef2544dbe054243b89737
  - kind: registry
    name: phf_macros
    version: 0.13.1
    sha: 812f032b54b1e759ccd5f8b6677695d5268c588701effba24601f6932f8269ef
  - kind: registry
    name: phf_shared
    version: 0.13.1
    sha: e57fef6bc5981e38c2ce2d63bfa546861309f875b8a75f092d1d54ae2d64f266
  - kind: registry
    name: precomputed-hash
    version: 0.1.1
    sha: 925383efa346730478fb4838dbe9137d2a47675ad789c546d150a6e1dd4ab31c
  - kind: registry
    name: proc-macro2
    version: 1.0.107
    sha: 985e7ec9bb745e6ce6535b544d84d6cd6f7ad8bd711c398938ae983b91a766d9
  - kind: registry
    name: quote
    version: 1.0.47
    sha: 1fbf4db142a473a8d80c26bbf18454ed458bf8d26c8219c331daecfdbd079001
  - kind: registry
    name: rustc-hash
    version: 2.1.3
    sha: 6b1e7f9a428571be2dc5bc0505c13fb6bf936822b894ec87abf8a08a4e51742d
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: scratch
    version: 1.0.9
    sha: d68f2ec51b097e4c1a75b681a8bec621909b5e91f15bb7b840c4f2f7b01148b2
  - kind: registry
    name: selectors
    version: 0.40.0
    sha: eeee001a77567bb05e71652718d3ff76d8697c151ac523e68e9513194eb2b75a
  - kind: registry
    name: semver
    version: 1.0.28
    sha: 8a7852d02fc848982e0c167ef163aaff9cd91dc640ba85e263cb1ce46fae51cd
  - kind: registry
    name: serde
    version: 1.0.229
    sha: 4148590afebada386688f18773da617792bf2ef03ffc1e4cbd2b1d45b023e0ba
  - kind: registry
    name: serde_core
    version: 1.0.229
    sha: 67dca2c9c51e58a4791a4b1ed58308b39c64224d349a935ab5039aa360942a48
  - kind: registry
    name: serde_derive
    version: 1.0.229
    sha: e7a5d71263a5a7d47b41f6b3f06ba276f10cc18b0931f1799f710578e2309348
  - kind: registry
    name: servo_arc
    version: 0.4.3
    sha: 170fb83ab34de17dc69aa7c67482b22218ddb85da56546f9bd6b929e32a05930
  - kind: registry
    name: shlex
    version: 2.0.1
    sha: f8fadd59c855ef2080decdef8ff161eb6661b86933c9d82e5ba29dc602a55aba
  - kind: registry
    name: siphasher
    version: 1.0.3
    sha: 8ee5873ec9cce0195efcb7a4e9507a04cd49aec9c83d0389df45b1ef7ba2e649
  - kind: registry
    name: smallvec
    version: 1.15.2
    sha: 8ed6a63f02c8539c91a8685a86f4099661ba3da017932f6ebbea6de3f0fa7c90
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
    version: 2.0.119
    sha: 872831b642d1a07999a962a351ed35b955ea2cfc8f3862091e2a240a84f17297
  - kind: registry
    name: syn
    version: 3.0.4
    sha: e6275cddf4610d1775e6d1fe9469b2e77d0f39fd98fb7450901b821e0c53649f
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
