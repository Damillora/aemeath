kind: manual

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/rust.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

environment:
  LIBSQLITE3_SYS_USE_PKG_CONFIG: 1

config:
  build-commands:
  - cargo build --release --frozen

  install-commands:
  - install -Dm755 -t "%{install-root}%{bindir}" target/release/cargo-{capi,cbuild,cinstall,ctest}

sources:
- kind: git_repo
  track: v*
  url: github:lu-zero/cargo-c.git
  ref: v0.10.25-0-ga228fd974eb1334dc4c8033bc401a4832b3b4ab4
- kind: remote
  url: github:lu-zero/cargo-c/releases/download/v0.10.25/Cargo.lock
  ref: 8a5d9bad62a910c65f542842a9df4376973f439a332da79e28bb7f818c8abe36
- kind: cargo2
  ref:
  - kind: registry
    name: adler2
    version: 2.0.1
    sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
  - kind: registry
    name: aho-corasick
    version: 1.1.5
    sha: c982642fa9e8606056828ee9a8505737230110bb1099153c79efe865c59d12ba
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: android_system_properties
    version: 0.1.6
    sha: ae221649c9976a6f6c56ae1facf410f3ddb33cc661c4b7b61020a912d4237fbc
  - kind: registry
    name: annotate-snippets
    version: 0.12.16
    sha: f211a51805bc641f3ad5b7664c77d2547af685cc33b4cd8d31964027a46f13f1
  - kind: registry
    name: anstream
    version: 1.0.0
    sha: 824a212faf96e9acacdbd09febd34438f8f711fb84e09a8916013cd7815ca28d
  - kind: registry
    name: anstyle
    version: 1.0.14
    sha: 940b3a0ca603d1eade50a4846a2afffd5ef57a9feac2c0e2ec2e14f9ead76000
  - kind: registry
    name: anstyle-hyperlink
    version: 1.0.2
    sha: 7a14cad0fa1d1fb02de486a95ea7fd8dd28567b82f65b4ca34bffa7da81823e4
  - kind: registry
    name: anstyle-parse
    version: 1.0.0
    sha: 52ce7f38b242319f7cabaa6813055467063ecdc9d355bbb4ce0c68908cd8130e
  - kind: registry
    name: anstyle-progress
    version: 0.1.4
    sha: 082ebe8b7607a68881fbcccc7b3a3e784aa58593ed4261df0679a803fdb80853
  - kind: registry
    name: anstyle-query
    version: 1.1.5
    sha: 40c48f72fd53cd289104fc64099abca73db4166ad86ea0b4341abe65af83dadc
  - kind: registry
    name: anstyle-wincon
    version: 3.0.11
    sha: 291e6a250ff86cd4a820112fb8898808a366d8f9f58ce16d1f538353ad55747d
  - kind: registry
    name: anyhow
    version: 1.0.104
    sha: 330a5ed07fa54e4702c9d6c4174f74427fc0ef6e214bbd677ae50a5099946470
  - kind: registry
    name: ar_archive_writer
    version: 0.5.3
    sha: 73cd58deff2140a0a8eae87e417bd01db68a33e148aa93d1e8cd837e55e312b6
  - kind: registry
    name: arc-swap
    version: 1.9.2
    sha: c049c0be4daef0b145cb3555416b3b8ef5b7888a38aea1a3a155801fe7b0810b
  - kind: registry
    name: arrayvec
    version: 0.7.8
    sha: d3fb67a6e08acf24fdeccbac2cb6ac4305825bd1f117462e0e6f2f193345ad56
  - kind: registry
    name: async-trait
    version: 0.1.92
    sha: 82f6aeea286b8eb4dd3431a1be1b59d290ace00f5bfd8e2a159bc2a05e2c1667
  - kind: registry
    name: autocfg
    version: 1.5.1
    sha: f2032f911046de80f0a198e0901378627c33f59ea0ac00e363d481118bd70a53
  - kind: registry
    name: base16ct
    version: 0.2.0
    sha: 4c7f02d4ea65f2c1853089ffd8d2787bdbc63de2f0d29dedbcf8ccdfa0ccd4cf
  - kind: registry
    name: base64
    version: 0.22.1
    sha: 72b3254f16251a8381aa12e40e3c4d2f0199f8c6508fbecb9d91f575e0fbb8c6
  - kind: registry
    name: base64ct
    version: 1.8.3
    sha: 2af50177e190e07a26ab74f8b1efbfe2ef87da2116221318cb1c2e82baf7de06
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.13.1
    sha: b588b76d00fde79687d7646a9b5bdf3cc0f655e0bbd080335a95d7e96f3587da
  - kind: registry
    name: bitmaps
    version: 2.1.0
    sha: 031043d04099746d8db04daf1fa424b2bc8bd69d92b25962dcde24da39ab64a2
  - kind: registry
    name: blake3
    version: 1.8.7
    sha: 6d9e454fc11f76977dc803893aff6304ed33d6a26efae8696573bea74baa27ae
  - kind: registry
    name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - kind: registry
    name: block-buffer
    version: 0.12.1
    sha: d2f6c7dbe95a6ed67ad9f18e57daf93a2f034c524b99fd2b76d18fdfeb6660aa
  - kind: registry
    name: block2
    version: 0.6.2
    sha: cdeb9d870516001442e364c5220d3574d2da8dc765554b4a617230d33fa58ef5
  - kind: registry
    name: bstr
    version: 1.13.1
    sha: 6bb31b46c14244e20ee9984b11bf5c992b91fb6939fea616e3512c8baecdbe5f
  - kind: registry
    name: bumpalo
    version: 3.20.3
    sha: 72f5acc6cb2ba439de613abc23857ec3d78374d8ed5ac84e9d11336e87da8649
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: bytes
    version: 1.12.1
    sha: fc652a48c352aef3ea3aed32080501cf3ef6ed5da78602a020c991775b0aff04
  - kind: registry
    name: camino
    version: 1.2.5
    sha: bb1307f12aa967b5a58416e87b3653360e0fd614a016b6e970db08fecbb1b80d
  - kind: registry
    name: cargo
    version: 0.99.0
    sha: 0c30a0d29369c04a80056b22089ad95f28c3df596821f1f8672d44ef64b7e26a
  - kind: registry
    name: cargo-credential
    version: 0.4.10
    sha: aa57675b822ecda7f0be12eedbfabd890066271eedc7f2c45ed41e86e0f327a8
  - kind: registry
    name: cargo-credential-libsecret
    version: 0.5.9
    sha: 05e5f16a4f9f863e65e5c8b09a0b72d7ffe2b2c17eec4f7ea480360ddc4f61ca
  - kind: registry
    name: cargo-credential-macos-keychain
    version: 0.4.24
    sha: 06f5b56bc59e9f3fe2a0450cd379057c8a327662c1d04ccecab61cd79818325e
  - kind: registry
    name: cargo-credential-wincred
    version: 0.4.24
    sha: 25c2de3e8263008f298c44371abc403c08742df04c88230a66e781a11d2110fc
  - kind: registry
    name: cargo-platform
    version: 0.3.3
    sha: dd0061da739915fae12ea00e16397555ed4371a6bb285431aab930f61b0aa4ba
  - kind: registry
    name: cargo-util
    version: 0.2.31
    sha: 218d28c233cdb23a98404ae6d6f8eea19db3c3ab28c34633c7d9facf72f2d2ff
  - kind: registry
    name: cargo-util-schemas
    version: 0.14.2
    sha: 46262ca4393669799a8df4852e81672ddea46657e73294b1a846f0d5c71509ed
  - kind: registry
    name: cargo-util-terminal
    version: 0.1.1
    sha: db1548e157f51e667fdf147e5c55ee09a713cab10345293b1009f8de9af4974b
  - kind: registry
    name: cbindgen
    version: 0.29.4
    sha: 2ecb53484c9c167ba674026b656d8a27d7657a58e6066aa902bfb1a4aa00ae20
  - kind: registry
    name: cc
    version: 1.4.4
    sha: 0ad534f4357a5264cce5019c989cf66a4f0dc4e0d1b1d15f8aacec0ff7360273
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.2
    sha: f079e83a288787bcd14a6aea84cee5c87a67c5a3e660c30f557a3d24761b3527
  - kind: registry
    name: chacha20
    version: 0.10.1
    sha: d524456ba66e72eb8b115ff89e01e497f8e6d11d78b70b1aa13c0fbd97540a81
  - kind: registry
    name: clap
    version: 4.6.6
    sha: 473c7e07f409a8d772161724aa8db6a765a2532a70f9667eeb7b49d3d02fbdca
  - kind: registry
    name: clap_builder
    version: 4.6.6
    sha: 7b48fea5a88e9ae728a2dcbedbfc0e730f7d60da42e1cb049a83c9fb8b789889
  - kind: registry
    name: clap_complete
    version: 4.6.9
    sha: 3be2ad0423bdbbb0e25bc89add796f3559706d4a95e1bc98e4d9662a957b6a19
  - kind: registry
    name: clap_derive
    version: 4.6.4
    sha: d012d2b9d65aca7f18f4d9878a045bc17899bba951561ba5ec3c2ba1eed9a061
  - kind: registry
    name: clap_lex
    version: 1.1.0
    sha: c8d4a3bb8b1e0c1050499d1815f5ab16d04f0959b233085fb31653fbfc9d98f9
  - kind: registry
    name: clru
    version: 0.6.3
    sha: 197fd99cb113a8d5d9b6376f3aa817f32c1078f2343b714fff7d2ca44fdf67d5
  - kind: registry
    name: cmov
    version: 0.5.4
    sha: 0c9ea0ac24bc397ab3c98583a3c9ba74fa56b09a4449bbe172b9b1ddb016027a
  - kind: registry
    name: color-print
    version: 0.3.7
    sha: 3aa954171903797d5623e047d9ab69d91b493657917bdfb8c2c80ecaf9cdb6f4
  - kind: registry
    name: color-print-proc-macro
    version: 0.3.7
    sha: 692186b5ebe54007e45a59aea47ece9eb4108e141326c304cdc91699a7118a22
  - kind: registry
    name: colorchoice
    version: 1.0.5
    sha: 1d07550c9036bf2ae0c684c4297d503f838287c83c53686d05370d0e139ae570
  - kind: registry
    name: const-oid
    version: 0.10.2
    sha: a6ef517f0926dd24a1582492c791b6a4818a4d94e789a334894aa15b0d12f55c
  - kind: registry
    name: const-oid
    version: 0.9.6
    sha: c2459377285ad874054d797f3ccebf984978aa39129f6eafde5cdc8315b612f8
  - kind: registry
    name: constant_time_eq
    version: 0.4.2
    sha: 3d52eff69cd5e647efe296129160853a42795992097e8af39800e1060caeea9b
  - kind: registry
    name: core-foundation
    version: 0.10.1
    sha: b2a6cd9ae233e7f62ba4e9353e81a88df7fc8a5987b8d445b4d90c879bd156f6
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: cpufeatures
    version: 0.2.17
    sha: 59ed5838eebb26a2bb2e58f6d5b5316989ae9d08bab10e0e6d103e656d1b0280
  - kind: registry
    name: cpufeatures
    version: 0.3.0
    sha: 8b2a41393f66f16b0823bb79094d54ac5fbd34ab292ddafb9a0456ac9f87d201
  - kind: registry
    name: crates-io
    version: 0.41.1
    sha: 61eac17e797075f82dc4f2ca6c2b807abcb7f2b101f1fd1f627c5f1cde27b0d5
  - kind: registry
    name: crc32fast
    version: 1.5.1
    sha: 8498c871161e1742aaa9d52551b2d6ebdd4c3d45a3be423e3728f33b955be550
  - kind: registry
    name: crossbeam-channel
    version: 0.5.16
    sha: d85363c37faeca707aef026efa9f3b34d077bce547e48f770770625c6013679e
  - kind: registry
    name: crossbeam-deque
    version: 0.8.7
    sha: 5181e0de7b61eb03a81e347d6dd8797bae9da5146707b51077e2d71a54ec0ceb
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.20
    sha: 2d6914041f254d6e9176c01941b21115dcfb7089e55135a35411081bd106ef3f
  - kind: registry
    name: crossbeam-utils
    version: 0.8.22
    sha: 61803da095bee82a81bb1a452ecc25d3b2f1416d1897eb86430c6159ef717c17
  - kind: registry
    name: crypto-bigint
    version: 0.5.5
    sha: 0dc92fb57ca44df6db8059111ab3af99a63d5d0f8375d9972e319a379c6bab76
  - kind: registry
    name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - kind: registry
    name: crypto-common
    version: 0.2.2
    sha: ce6e4c961d6cd6c9a86db418387425e8bdeaf05b3c8bc1411e6dca4c252f1453
  - kind: registry
    name: ct-codecs
    version: 1.1.7
    sha: 49fb0c6640b4507ebd99ff67677009e381ba5eee1d14df78de4a3d16eb123c39
  - kind: registry
    name: ctutils
    version: 0.4.2
    sha: 7d5515a3834141de9eafb9717ad39eea8247b5674e6066c404e8c4b365d2a29e
  - kind: registry
    name: curl
    version: 0.4.50
    sha: 3a45ee8994e5307cb4c60cfc1c20bf7263ffb771ddc135c9f768a14bcbc15b09
  - kind: registry
    name: curl-sys
    version: 0.4.90+curl-8.21.0
    sha: 97799a0d220bfb3361e0fe4936966ff8c4b24d65c3f06dfc70d7b680b44e7897
  - kind: registry
    name: dashmap
    version: 6.2.1
    sha: e6361d5c062261c78a176addb82d4c821ae42bed6089de0e12603cd25de2059c
  - kind: registry
    name: defmt
    version: 1.1.1
    sha: e2953bfe4f93bbd20cc71198842756f77d161884c99ebbabc41d80231ded88d1
  - kind: registry
    name: defmt-macros
    version: 1.1.1
    sha: bad9c72e7ca2137e0dc3813245a0d282fd6daad32fd800af018306a9169b5fe8
  - kind: registry
    name: defmt-parser
    version: 1.0.0
    sha: 10d60334b3b2e7c9d91ef8150abfb6fa4c1c39ebbcf4a81c2e346aad939fee3e
  - kind: registry
    name: der
    version: 0.7.10
    sha: e7c1832837b905bbfb5101e07cc24c8deddf52f93225eee6ead5f4d63d53ddcb
  - kind: registry
    name: deranged
    version: 0.5.8
    sha: 7cd812cc2bc1d69d4764bd80df88b4317eaef9e773c75226407d9bc0876b211c
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: digest
    version: 0.11.3
    sha: f1dd6dbb5841937940781866fa1281a1ff7bd3bf827091440879f9994983d5c2
  - kind: registry
    name: dispatch2
    version: 0.3.1
    sha: 1e0e367e4e7da84520dedcac1901e4da967309406d1e51017ae1abfb97adbd38
  - kind: registry
    name: displaydoc
    version: 0.2.7
    sha: c6232dd377dcc64799954cbd3a9bb882e9cdc1308ccd87b1c098f1fb2eaf82a8
  - kind: registry
    name: dunce
    version: 1.0.5
    sha: 92773504d58c093f6de2459af4af33faa518c13451eb8f2b5698ed3d36e7c813
  - kind: registry
    name: ecdsa
    version: 0.16.9
    sha: ee27f32b5c5292967d2d4a9d7f1e0b0aed2c15daded5a60300e4abb9d8020bca
  - kind: registry
    name: ed25519-compact
    version: 2.4.2
    sha: f05391a505666bdf2b5d2626f41b7f0f49052b1e33cceac960eaa818008141da
  - kind: registry
    name: either
    version: 1.18.0
    sha: 252afb9ae5eaa683babdc6a068b3f5726eb19e05070c731f9b2a23a7c3e8ed34
  - kind: registry
    name: elliptic-curve
    version: 0.13.8
    sha: b5e6043086bf7973472e0c7dff2142ea0b680d30e18d9cc40f267efbf222bd47
  - kind: registry
    name: encoding_rs
    version: 0.8.35
    sha: 75030f3c4f45dafd7586dd6780965a8c7e8e285a5ecb86713e63a79c5b2766f3
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: erased-serde
    version: 0.4.10
    sha: d2add8a07dd6a8d93ff627029c51de145e12686fbc36ecb298ac22e74cf02dec
  - kind: registry
    name: errno
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: fallible-iterator
    version: 0.3.0
    sha: 2acce4a10f12dc2fb14a218589d4f1f62ef011b2d0cc4b3cb1bba8e94da14649
  - kind: registry
    name: fallible-streaming-iterator
    version: 0.1.9
    sha: 7360491ce676a36bf9bb3c56c1aa791658183a54d2744120f27285738d90465a
  - kind: registry
    name: faster-hex
    version: 0.10.0
    sha: 7223ae2d2f179b803433d9c830478527e92b8117eab39460edae7f1614d9fb73
  - kind: registry
    name: fastrand
    version: 2.5.0
    sha: da7c62ceae207dd37ea5b845da6a0696c799f85e97da1ab5b7910be3c1c80223
  - kind: registry
    name: ff
    version: 0.13.1
    sha: c0b50bfb653653f9ca9095b427bed08ab8d75a137839d9ad64eb11810d5b6393
  - kind: registry
    name: fiat-crypto
    version: 0.3.0
    sha: 64cd1e32ddd350061ae6edb1b082d7c54915b5c672c389143b9a63403a109f24
  - kind: registry
    name: filetime
    version: 0.2.29
    sha: 5c287a33c7f0a620c38e641e7f60827713987b3c0f26e8ddc9462cc69cf75759
  - kind: registry
    name: find-msvc-tools
    version: 0.1.11
    sha: d45db016d36b838f563236e9193d0ee6ce38f3f68b6c94e914b4929c96bbb890
  - kind: registry
    name: flate2
    version: 1.1.9
    sha: 843fba2746e448b37e26a819579957415c8cef339bf08564fe8b7ddbd959573c
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: foldhash
    version: 0.2.0
    sha: 77ce24cb58228fbb8aa041425bb1050850ac19177686ea6e0f41a70416f56fdb
  - kind: registry
    name: foreign-types
    version: 0.3.2
    sha: f6f339eb8adc052cd2ca78910fda869aefa38d22d5cb648e6485e4d3fc06f3b1
  - kind: registry
    name: foreign-types-shared
    version: 0.1.1
    sha: 00b0228411908ca8685dba7fc2cdd70ec9990a6e753e89b6ac91a84c40fbaf4b
  - kind: registry
    name: form_urlencoded
    version: 1.2.2
    sha: cb4cb245038516f5f85277875cdaa4f7d2c9a0fa0468de06ed190163b1581fcf
  - kind: registry
    name: futures
    version: 0.3.34
    sha: 9a31d2a3fbaaeb2af2368bbdd904aa8e812d3c04a1ee10d3171f52d556e5d0a3
  - kind: registry
    name: futures-channel
    version: 0.3.34
    sha: b1f9e3d69d39e4862ffed03ed071a76f9a13ba1d9109d355b0f0aa6b15e393c4
  - kind: registry
    name: futures-core
    version: 0.3.34
    sha: 92d699e522242e69e3003b94ecc1f960f3a5e015aa7c5d7486e65ad01dd94f5e
  - kind: registry
    name: futures-executor
    version: 0.3.34
    sha: 031b47cf1a3c6cc8bc2fc76cd437f521619387907d469316e7c0bc278f1f5432
  - kind: registry
    name: futures-io
    version: 0.3.34
    sha: 53c0fa8157de1303bfffdaa1cc2a673bfffb60102f76b0ef4441659124373fed
  - kind: registry
    name: futures-macro
    version: 0.3.34
    sha: 9fb9654ba8355388abeb8dcb4fc62f511300867002afc858860463bdd9fe0c44
  - kind: registry
    name: futures-sink
    version: 0.3.34
    sha: 1944426bf7d03f1d14f708785e4b33efd750b36d48a157b836b3efc15ede8e1d
  - kind: registry
    name: futures-task
    version: 0.3.34
    sha: cd417de3d1d015fc3bfd2b1ea46dfc7bab72ef86f1cc7cc9c78e728b34a6d1fd
  - kind: registry
    name: futures-timer
    version: 3.0.4
    sha: af43fadb8a98512d547e37b4e92e0ced13e205c061b87b4623eff01d918d6968
  - kind: registry
    name: futures-util
    version: 0.3.34
    sha: 0d50a92467f8ba5dd6e3ee5d4bd04d73ab2e4e1c44474a0674821dfce14b79bc
  - kind: registry
    name: generic-array
    version: 0.14.9
    sha: 4bb6743198531e02858aeaea5398fcc883e71851fcbcb5a2f773e2fb6cb1edf2
  - kind: registry
    name: getrandom
    version: 0.2.17
    sha: ff2abc00be7fca6ebc474524697ae276ad847ad0a6b3faa4bcb027e9a4614ad0
  - kind: registry
    name: getrandom
    version: 0.4.3
    sha: 300e883d756b2e4ec94e02791f39b04b522276138852cfc41d9fb7e904106099
  - kind: registry
    name: git2
    version: 0.21.0
    sha: ddddbf932745a6be37109b6112d3ee09696106f848449069d3a57bba937ab82e
  - kind: registry
    name: git2-curl
    version: 0.22.0
    sha: 1f1f6fe01327a2f7a1d6ee519c14651f79530aa4d64e870f4cf672efe697bea5
  - kind: registry
    name: gix
    version: 0.85.0
    sha: fa8b2e38ebfc4484dfef8580ddcaf8abb7285e6f3eb6413ff6775d104ae96ca6
  - kind: registry
    name: gix-actor
    version: 0.41.2
    sha: 33f9308ad6fd35b2a865cbe4117ac61b2be59e4a9ef1621c7a9794f7c8e52c5b
  - kind: registry
    name: gix-attributes
    version: 0.33.2
    sha: 39b40888d0ed415c0744a6cdc61eebf0304c9d26ab726725b718443c322e5ba4
  - kind: registry
    name: gix-bitmap
    version: 0.3.3
    sha: 7cd1d118d0f5d88b96e6f6e13b566475fef4797ead4a02c26fed36c1375066f7
  - kind: registry
    name: gix-chunk
    version: 0.7.3
    sha: b2a871e5cab12ba568845714473505deefffb3c04eb47f4708ce344cd459c1cc
  - kind: registry
    name: gix-command
    version: 0.9.2
    sha: cf4363accdf6ef7ba861871d2d521ab7418a04aaaed919fadb022af71d379b12
  - kind: registry
    name: gix-commitgraph
    version: 0.37.1
    sha: 7f675d0df484a7f6a47e64bd6f311af489d947c0323b0564f36d14f3d7762abb
  - kind: registry
    name: gix-config
    version: 0.58.0
    sha: a29bf266c4cdaf759e535c24ad4ce655b987aeb6911075643403cc7cc5ade583
  - kind: registry
    name: gix-config-value
    version: 0.18.1
    sha: ed42168329552f6c2e5df09665c104199d45d84bedb53683738a49b57fe1baab
  - kind: registry
    name: gix-credentials
    version: 0.38.2
    sha: e8a0fcfcd73229d1a9c34e04edd05dbcb80364ec6f3788d24c546de2916671eb
  - kind: registry
    name: gix-date
    version: 0.15.6
    sha: 7e47b9e8cdc688296609b706428de570f88b1e0eed7156dde7b4a89d26fa4567
  - kind: registry
    name: gix-diff
    version: 0.65.0
    sha: 92c6d56c94edf92d78203a1cd416f770e35e10b6955ede6b9d7d0c22ff88a5f3
  - kind: registry
    name: gix-dir
    version: 0.27.0
    sha: 20098fba2b9c6e29361ccb4c0379d42dfb81fc7f86f7ab11f2dff4528c0bf01f
  - kind: registry
    name: gix-discover
    version: 0.53.0
    sha: d624d5b23b10c1d85337645227abe353ac95ab8ff66a7bdd5ce689b2db33a722
  - kind: registry
    name: gix-error
    version: 0.2.5
    sha: 4a9292309fd944e71b2a3c96d3c03a6feb8852db646febdde7cbb9f79cb5f329
  - kind: registry
    name: gix-features
    version: 0.48.1
    sha: 1849ae154d38bc403185be14fa871e38e3c93ee606875d94e207fdb9fba52dbc
  - kind: registry
    name: gix-filter
    version: 0.32.0
    sha: 6644fb2ef97928c278675b239f366b457103d7e436f811d27331a8daf212759c
  - kind: registry
    name: gix-fs
    version: 0.21.2
    sha: 6cdff46db8798e47e2f727d84b9379aac5add3dd3d9d0b07bb4d7d5d640771fe
  - kind: registry
    name: gix-glob
    version: 0.26.1
    sha: d1fcb8ef5b16bcf874abe9b68d8abb3c0493c876d367ab824151f30a0f3f3756
  - kind: registry
    name: gix-hash
    version: 0.25.1
    sha: cb0926d3819c837750b4e03c7754901e73f68b8c9b690753a6372a1bed4eedce
  - kind: registry
    name: gix-hashtable
    version: 0.15.2
    sha: 7e261d54091f0d1c729bc83f54548c071bdec60a697de1e58e88bdfd7a99d24e
  - kind: registry
    name: gix-ignore
    version: 0.21.1
    sha: d491bab9bf2c9f341dc754f425c31d5d3f63aca615312167b82e1deeaca97d8d
  - kind: registry
    name: gix-imara-diff
    version: 0.2.5
    sha: 1c91d8cffac8849493a82233811bd02b2b183b8cf39bf704de0fa0841b737595
  - kind: registry
    name: gix-index
    version: 0.53.0
    sha: 36d45f82ec5a4d7542ea595e9ad16e03e26c8cb4f221e5bc9fcdcf469f63a681
  - kind: registry
    name: gix-lock
    version: 23.0.1
    sha: 65c9dedd9e90b0d47624d2ed241d394e09294118364e87b9b7e5f1fe755f3c2c
  - kind: registry
    name: gix-negotiate
    version: 0.33.0
    sha: 63d6081882a5f575ace9f53924a7c85f69bbd0f96071b982df12f258ab338cc9
  - kind: registry
    name: gix-object
    version: 0.62.0
    sha: 019b38afc3eac1e41f9fe09a327664b313ba4a120fa5f40e3678795d0e42783e
  - kind: registry
    name: gix-odb
    version: 0.82.0
    sha: 7fadc59f6fa0f9dd445eceee61060a2b59ca557f48da9fc677f567db535b782a
  - kind: registry
    name: gix-pack
    version: 0.72.0
    sha: ca3e7f1726cd2c0cd1cf1fc20be8a8e623f0b163f1f8d6fc836cfb9bc8cd758b
  - kind: registry
    name: gix-packetline
    version: 0.21.5
    sha: b217dd0ee0c4021ecf169a4a519b1b4f80d15e3f3765f3dc466223dc0ac891d7
  - kind: registry
    name: gix-path
    version: 0.12.5
    sha: 2b075e730586bba7341304d6fc1b4efc1d10cf64532622521c0e07f30e661046
  - kind: registry
    name: gix-pathspec
    version: 0.18.1
    sha: 3050783b41ee11511e1e8fb35623df81806194f4030395f14f48ea37c2798c9f
  - kind: registry
    name: gix-prompt
    version: 0.15.1
    sha: 3ee604d7746080ae7e1023bf47204bcc2c5f307bfbe2306a3c90b1bfd1a2c6d8
  - kind: registry
    name: gix-protocol
    version: 0.63.0
    sha: 978468bae4ea2df20c72db3b20d0bdb548a0c1090b85a83643b553e6e0e041f2
  - kind: registry
    name: gix-quote
    version: 0.7.2
    sha: a6e541fc33cc2b783b7979040d445a0c86a2eca747c8faea4ca84230d06ae6ef
  - kind: registry
    name: gix-ref
    version: 0.65.0
    sha: 9bbfbce1dfd7d7f8469ddef6d3518376aff664348f153cbe0fc3e58ef993d24e
  - kind: registry
    name: gix-refspec
    version: 0.43.0
    sha: 7bc36a4fb1a1540b59cf2da498783080743fa274b02a3f19ca444fc4015a9d4f
  - kind: registry
    name: gix-revision
    version: 0.47.0
    sha: 885075c3c21eb9c06e0be3b3728ba5932c04e1c1011dcee7c81801980e3e986f
  - kind: registry
    name: gix-revwalk
    version: 0.33.0
    sha: 8f11fe7ca2585193d3d70bbe0be175a2008d883a704cc7a55e454e113e689455
  - kind: registry
    name: gix-sec
    version: 0.14.2
    sha: af4fe6c152c1d50aea36f299825702cd37e303307832fec1d0fdd5844e47ce2f
  - kind: registry
    name: gix-shallow
    version: 0.12.1
    sha: a292fc2fe548c5dfa575479d16b445b0ddf1dd2f56f1fec6aed386f82553cd97
  - kind: registry
    name: gix-status
    version: 0.32.0
    sha: aec3293f75db1212f99217832cbc70c30faeb95cefc97c7f1a17fd3bcf13a72e
  - kind: registry
    name: gix-submodule
    version: 0.32.0
    sha: a7f9f594f7cbda0b38ba6b633b3e9a7b7901acdc5d27bc186a16633800cd1ac8
  - kind: registry
    name: gix-tempfile
    version: 23.0.2
    sha: 6ef60812443484e67bf84e444cc71b4c78ae62deb822221774a4fa0c57fdb17f
  - kind: registry
    name: gix-trace
    version: 0.1.21
    sha: be3eb81d9dc914335923e50d52829c551feefd6a72d176c4130c546b67a60814
  - kind: registry
    name: gix-transport
    version: 0.57.2
    sha: 186874f7ad1fb2f9a2f2aa9c2dabc7f9dd087bef74c1a0eee2b4a9cf0248fcb3
  - kind: registry
    name: gix-traverse
    version: 0.59.0
    sha: 5062cca8f2977565bbaf666ec31dbdb9bc9d9293beb65f9bec52e6c1121b62a1
  - kind: registry
    name: gix-url
    version: 0.36.2
    sha: 57d68e70e96da0e5f9c871f1566349e0fd0e1a20bb483c7f54af1dd0b85b4b29
  - kind: registry
    name: gix-utils
    version: 0.3.6
    sha: 0da1c46491b49458a446cc76f0085860f8164c2290742e0aa8c653ce67240a97
  - kind: registry
    name: gix-validate
    version: 0.11.4
    sha: 4dae8780f63ed8a803b8bdabbd7aa5f5c5d74592c8b50eed875c1bb4f6545a6a
  - kind: registry
    name: gix-worktree
    version: 0.54.0
    sha: 92399ed66f259592050c6ed9dc80105e095a2f8e87e6b83d98aa2e21d8e27036
  - kind: registry
    name: gix-worktree-stream
    version: 0.34.0
    sha: 55f3a878c89a05470ad98c644b0015777c530da24854dd29e41fe4f41176840f
  - kind: registry
    name: glob
    version: 0.3.4
    sha: e4eba85ea1d0a966a983acd07deee566e67395d2d96b6fb39e62b5a833f1eb0b
  - kind: registry
    name: globset
    version: 0.4.20
    sha: 07c34a9410465b45bd9787443bc7370f37735bad04b0f0cd57ff1a3186c98988
  - kind: registry
    name: group
    version: 0.13.0
    sha: f0f9ef7462f7c099f518d754361858f86d8a07af53ba9af0fe635bbccb151a63
  - kind: registry
    name: hash32
    version: 0.3.1
    sha: 47d60b12902ba28e2730cd37e95b8c9223af2808df9e902d4df49588d1470606
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
  - kind: registry
    name: hashbrown
    version: 0.16.1
    sha: 841d1cc9bed7f9236f321df977030373f4a4163ae1a7dbfe1a51a2c1a51d9100
  - kind: registry
    name: hashbrown
    version: 0.17.1
    sha: ed5909b6e89a2db4456e54cd5f673791d7eca6732202bbf2a9cc504fe2f9b84a
  - kind: registry
    name: hashlink
    version: 0.12.1
    sha: 32069d97bb81e38fa67eab65e3393bf804bb85969f2bc06bf13f64aef5aba248
  - kind: registry
    name: heapless
    version: 0.8.0
    sha: 0bfb9eb618601c89945a70e254898da93b13be0388091d42117462b265bb3fad
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: hkdf
    version: 0.12.4
    sha: 7b5f8eb2ad728638ea2c7d47a21db23b7b58a72ed6a38256b8a1849f15fbbdf7
  - kind: registry
    name: hmac
    version: 0.12.1
    sha: 6c49c37c09c17a53d937dfbb742eb3a961d65a994e6bcdcf37e7399d0cc8ab5e
  - kind: registry
    name: hmac
    version: 0.13.0
    sha: 6303bc9732ae41b04cb554b844a762b4115a61bfaa81e3e83050991eeb56863f
  - kind: registry
    name: home
    version: 0.5.12
    sha: cc627f471c528ff0c4a49e1d5e60450c8f6461dd6d10ba9dcd3a61d3dff7728d
  - kind: registry
    name: http
    version: 1.5.0
    sha: 918d3568bebf352712bc2ef3d46a8bcf1a75b373be6539de198e9105cbbf9ce0
  - kind: registry
    name: http-auth
    version: 0.1.10
    sha: 150fa4a9462ef926824cf4519c84ed652ca8f4fbae34cb8af045b5cbcaf98822
  - kind: registry
    name: hybrid-array
    version: 0.4.14
    sha: 707114b52a152fa7bdb290cd7cd5912d9467273b6d74e21b8d81aca1f8533f6b
  - kind: registry
    name: icu_collections
    version: 2.3.0
    sha: fa68d21081c4a05d5a901a1c62add574c77048b6a1c67be3b50ce0b60d4ca513
  - kind: registry
    name: icu_locale_core
    version: 2.3.0
    sha: d56e28588da92eee5c3201a6eff33fabdd49b62269c8938d4ff050ce4d900deb
  - kind: registry
    name: icu_normalizer
    version: 2.3.0
    sha: 12f9cf5f235641ed274641dd81c3f28d870e276763d0797aeeab72317b1c646f
  - kind: registry
    name: icu_normalizer_data
    version: 2.3.0
    sha: 1563da1ed3e0b3bf3d74c9b85917ac9c56464d2f57242270c09c9e752f8021a0
  - kind: registry
    name: icu_properties
    version: 2.3.0
    sha: 7e7ca276ad3145661a65914e6daf131ca5120cd3dcee8f8f3214b8875184a148
  - kind: registry
    name: icu_properties_data
    version: 2.3.0
    sha: e590f038c1464a96894fd6d10127e90a8be4509f56ff7ecef851b15cee0b7caa
  - kind: registry
    name: icu_provider
    version: 2.3.1
    sha: d27bbb9d3abbefac45d55f647c9de1d44aafcd1186eb91879afef17c396c3e73
  - kind: registry
    name: idna
    version: 1.1.0
    sha: 3b0875f23caa03898994f6ddc501886a45c7d3d62d04d2d90788d47be1b1e4de
  - kind: registry
    name: idna_adapter
    version: 1.2.2
    sha: cb68373c0d6620ef8105e855e7745e18b0d00d3bdb07fb532e434244cdb9a714
  - kind: registry
    name: ignore
    version: 0.4.33
    sha: 00b69833ed729dc5aa7d19541d96d6cf8e9137194207a04916d658e43168402f
  - kind: registry
    name: im-rc
    version: 15.1.0
    sha: af1955a75fa080c677d3972822ec4bad316169ab1cfc6c257a942c2265dbe5fe
  - kind: registry
    name: implib
    version: 0.6.0
    sha: 96e1090e37c7188a99a2353115083505ff6a489e86637dc41e1671457b1259d3
  - kind: registry
    name: indexmap
    version: 2.14.0
    sha: d466e9454f08e4a911e14806c24e16fba1b4c121d1ea474396f396069cf949d9
  - kind: registry
    name: is_executable
    version: 1.0.6
    sha: 82cb6a9f675da968c63b6208c641b9dca58fc0133ae53375736b1767b0cab8bd
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.2
    sha: a6cb138bb79a146c1bd460005623e142ef0181e3d0219cb493e02f7d08a35695
  - kind: registry
    name: itertools
    version: 0.15.0
    sha: 8b4baf93f58d4425749ca49a51c50ebab072c5df6994d08fed93541c331481dc
  - kind: registry
    name: itoa
    version: 1.0.18
    sha: 8f42a60cbdf9a97f5d2305f08a87dc4e09308d1276d28c869c684d7777685682
  - kind: registry
    name: jiff
    version: 0.2.35
    sha: 668b7183bd07af9a4885f5c35b0cc5c83c4607a913c16b7e17291832910d2dcc
  - kind: registry
    name: jiff-core
    version: 0.1.0
    sha: 7feca88439efe53da3754500c1851dedf3cb36c524dd5cf8225cc0794de95d09
  - kind: registry
    name: jiff-static
    version: 0.2.35
    sha: 3a69dcb3a21cfb32ce1cd056169337ca284af0766dd766e7878819b251a49204
  - kind: registry
    name: jiff-tzdb
    version: 0.1.8
    sha: 142bd39932ad231f10513df9ab62661fead8719872150b7ad02a2df79f4e141e
  - kind: registry
    name: jiff-tzdb-platform
    version: 0.1.3
    sha: 875a5a69ac2bab1a891711cf5eccbec1ce0341ea805560dcd90b7a2e925132e8
  - kind: registry
    name: jobserver
    version: 0.1.35
    sha: 1c00acbd29eabad4a2392fa0e921c874934dbbf4194312ad20f04a0ed67a3cb3
  - kind: registry
    name: js-sys
    version: 0.3.104
    sha: 0e0c1080212aad755ea003d18543e8768dd432c48819efd73a7bf1e39b7a5a3a
  - kind: registry
    name: kstring
    version: 2.0.4
    sha: b609e7ca5ea38f093c20a4a102335b247221c9643b7a6bc3510f196f99499a9e
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libc
    version: 0.2.189
    sha: 3eaf3ede3fee6db1a4c2ee091bf8a8b4dccdc6d17f656fb07896ee72867612f2
  - kind: registry
    name: libgit2-sys
    version: 0.18.8+1.9.7
    sha: 7f7c568b25d7489bc3fb2988ed69ab111d2944d2f5fec3d5c987fe545ea97b50
  - kind: registry
    name: libloading
    version: 0.9.0
    sha: 754ca22de805bb5744484a5b151a9e1a8e837d5dc232c2d7d8c2e3492edc8b60
  - kind: registry
    name: libnghttp2-sys
    version: 0.1.13+1.68.1
    sha: 492e00167f1418c15648144f42bbfc63099806ecee9bf8d09a6353d6b4856b3c
  - kind: registry
    name: libsqlite3-sys
    version: 0.38.2
    sha: f1d20bef17f513b9b3004532233187769cd072d790971f4e4da0e346eb6401e8
  - kind: registry
    name: libssh2-sys
    version: 0.3.2
    sha: c04141a07bb0c0bc461cb657808764de571702a59bc5c726c400ac9a7625e3ab
  - kind: registry
    name: libz-sys
    version: 1.1.29
    sha: 85bc9657773828b90eeb625adff10eeac83cc21bbfd8e23a03eaa8a33c9e28d9
  - kind: registry
    name: linux-raw-sys
    version: 0.12.1
    sha: 32a66949e030da00e8c7d4434b251670a91556f4144941d37452769c25d58a53
  - kind: registry
    name: litemap
    version: 0.8.3
    sha: 47d9d19d1d6efa0109d2f65ff4c85cddd50bd572e5a00127ab10987290bcefae
  - kind: registry
    name: lock_api
    version: 0.4.14
    sha: 224399e74b87b5f3557511d98dff8b14089b3dadafcab6bb93eab67d3aace965
  - kind: registry
    name: log
    version: 0.4.34
    sha: f9f8bd3e56ce4dfc153cf470fffbfa98c7620958b312ca5c3a4b8d5181fd13c6
  - kind: registry
    name: matchers
    version: 0.2.0
    sha: d1525a2a28c7f4fa0fc98bb91ae755d1e2d1505079e05539e35bc876b5d65ae9
  - kind: registry
    name: maybe-async
    version: 0.2.11
    sha: 746873a384ad60adc5db74471dfaba74bd278afbdcfd81db93fafcdfc8b5ca0c
  - kind: registry
    name: memchr
    version: 2.8.3
    sha: cf8baf1c55e62ffcace7a9f06f4bd9cd3f0c4beb022d3b367256b91b87513d98
  - kind: registry
    name: memmap2
    version: 0.9.11
    sha: d1219ed1b7f229ee7104d281dd01d6802fe28bb6e95d292942c4daacdeb798c0
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - kind: registry
    name: miniz_oxide
    version: 0.8.9
    sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
  - kind: registry
    name: miow
    version: 0.6.1
    sha: 536bfad37a309d62069485248eeaba1e8d9853aaf951caaeaed0585a95346f08
  - kind: registry
    name: nix
    version: 0.31.3
    sha: cf20d2fde8ff38632c426f1165ed7436270b44f199fc55284c38276f9db47c3d
  - kind: registry
    name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - kind: registry
    name: nonempty
    version: 0.12.0
    sha: 9737e026353e5cd0736f98eddae28665118eb6f6600902a7f50db585621fecb6
  - kind: registry
    name: normpath
    version: 1.5.1
    sha: b9985ef7269fa99f3b12437bb698381da2428743ab90f20393f399fa14cab21a
  - kind: registry
    name: nu-ansi-term
    version: 0.50.3
    sha: 7957b9740744892f114936ab4a57b3f487491bbeafaf8083688b16841a4240e5
  - kind: registry
    name: num-conv
    version: 0.2.2
    sha: 521739c6d2bac4aa25192232afe6841231376b2b26d4d9fae5ecf8ca5772e441
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: objc2
    version: 0.6.4
    sha: 3a12a8ed07aefc768292f076dc3ac8c48f3781c8f2d5851dd3d98950e8c5a89f
  - kind: registry
    name: objc2-cloud-kit
    version: 0.3.2
    sha: 73ad74d880bb43877038da939b7427bba67e9dd42004a18b809ba7d87cee241c
  - kind: registry
    name: objc2-core-data
    version: 0.3.2
    sha: 0b402a653efbb5e82ce4df10683b6b28027616a2715e90009947d50b8dd298fa
  - kind: registry
    name: objc2-core-foundation
    version: 0.3.2
    sha: 2a180dd8642fa45cdb7dd721cd4c11b1cadd4929ce112ebd8b9f5803cc79d536
  - kind: registry
    name: objc2-core-graphics
    version: 0.3.2
    sha: e022c9d066895efa1345f8e33e584b9f958da2fd4cd116792e15e07e4720a807
  - kind: registry
    name: objc2-core-image
    version: 0.3.2
    sha: e5d563b38d2b97209f8e861173de434bd0214cf020e3423a52624cd1d989f006
  - kind: registry
    name: objc2-core-location
    version: 0.3.2
    sha: ca347214e24bc973fc025fd0d36ebb179ff30536ed1f80252706db19ee452009
  - kind: registry
    name: objc2-core-text
    version: 0.3.2
    sha: 0cde0dfb48d25d2b4862161a4d5fcc0e3c24367869ad306b0c9ec0073bfed92d
  - kind: registry
    name: objc2-encode
    version: 4.1.0
    sha: ef25abbcd74fb2609453eb695bd2f860d389e457f67dc17cafc8b8cbc89d0c33
  - kind: registry
    name: objc2-foundation
    version: 0.3.2
    sha: e3e0adef53c21f888deb4fa59fc59f7eb17404926ee8a6f59f5df0fd7f9f3272
  - kind: registry
    name: objc2-io-surface
    version: 0.3.2
    sha: 180788110936d59bab6bd83b6060ffdfffb3b922ba1396b312ae795e1de9d81d
  - kind: registry
    name: objc2-quartz-core
    version: 0.3.2
    sha: 96c1358452b371bf9f104e21ec536d37a650eb10f7ee379fff67d2e08d537f1f
  - kind: registry
    name: objc2-ui-kit
    version: 0.3.2
    sha: d87d638e33c06f577498cbcc50491496a3ed4246998a7fbba7ccb98b1e7eab22
  - kind: registry
    name: objc2-user-notifications
    version: 0.3.2
    sha: 9df9128cbbfef73cda168416ccf7f837b62737d748333bfe9ab71c245d76613e
  - kind: registry
    name: object
    version: 0.39.1
    sha: 2e5a6c098c7a3b6547378093f5cc30bc54fd361ce711e05293a5cc589562739b
  - kind: registry
    name: object
    version: 0.40.0
    sha: dd229a0361b9d0d4396176e02d65897f487eebeab7caa6d443855ee152ca0b9c
  - kind: registry
    name: once_cell
    version: 1.21.4
    sha: 9f7c3e4beb33f85d45ae3e3a1792185706c8e16d043238c593331cc7cd313b50
  - kind: registry
    name: once_cell_polyfill
    version: 1.70.2
    sha: 384b8ab6d37215f3c5301a95a4accb5d64aa607f1fcb26a11b5303878451b4fe
  - kind: registry
    name: opener
    version: 0.8.5
    sha: b2b03ff07a220d0d0ec9a1f0f238951b7967a5a2e96aefcd21a117b1083415e9
  - kind: registry
    name: openssl
    version: 0.10.81
    sha: 77823a27f0babb03091cb9ed9ef80af3b39dbc82f97e8fa530374b7dafd87a45
  - kind: registry
    name: openssl-macros
    version: 0.1.1
    sha: a948666b637a0f465e8564c73e89d4dde00d72d4d473cc972f390fc3dcee7d9c
  - kind: registry
    name: openssl-probe
    version: 0.1.6
    sha: d05e27ee213611ffe7d6348b942e8f942b37114c00cc03cec254295a4a17852e
  - kind: registry
    name: openssl-src
    version: 300.6.1+3.6.3
    sha: 46eb8fb9fb3b61ce1c0f8a026c4c1a0714d3a9e138e7fbde78753ce2babc3846
  - kind: registry
    name: openssl-sys
    version: 0.9.117
    sha: b47e7e6bb2c38cd930d25a23b40fa52e068c10e85f3e03a7f5ba5aaca5713695
  - kind: registry
    name: ordered-float
    version: 2.10.1
    sha: 68f19d67e5a2795c94e73e0bb1cc1a7edeb2e28efd39e2e1c9b7a40c1108b11c
  - kind: registry
    name: orion
    version: 0.17.15
    sha: 5e6758747fd1ce1efaf2bd43219ac4aa9e28263b236b2b6a1e486bcd06820707
  - kind: registry
    name: os_info
    version: 3.15.0
    sha: 9cf20a545b305cf1da722b236b5155c9bb35f1d5ceb28c048bd96ca842f41b5b
  - kind: registry
    name: p384
    version: 0.13.1
    sha: fe42f1670a52a47d448f14b6a5c61dd78fce51856e68edaa38f7ae3a46b8d6b6
  - kind: registry
    name: parking_lot
    version: 0.12.5
    sha: 93857453250e3077bd71ff98b6a65ea6621a19bb0f559a85248955ac12c45a1a
  - kind: registry
    name: parking_lot_core
    version: 0.9.12
    sha: 2621685985a2ebf1c516881c026032ac7deafcda1a2c9b7850dc81e3dfcb64c1
  - kind: registry
    name: pasetors
    version: 0.7.8
    sha: e838401fb2873bad417e6a03179014c748746f67311cb7317ab14fc0881fa9f0
  - kind: registry
    name: pathdiff
    version: 0.2.3
    sha: df94ce210e5bc13cb6651479fa48d14f601d9858cfe0467f43ae157023b938d3
  - kind: registry
    name: pem-rfc7468
    version: 0.7.0
    sha: 88b39c9bfcfc231068454382784bb460aae594343fb030d46e9f50a645418412
  - kind: registry
    name: percent-encoding
    version: 2.3.2
    sha: 9b4f627cb1b25917193a259e49bdad08f671f8d9708acfd5fe0a8c1455d87220
  - kind: registry
    name: pin-project-lite
    version: 0.2.17
    sha: a89322df9ebe1c1578d689c92318e070967d1042b512afbe49518723f4e6d5cd
  - kind: registry
    name: pkcs8
    version: 0.10.2
    sha: f950b2377845cebe5cf8b5165cb3cc1a5e0fa5cfa3e1f7f55707d8fd82e0a7b7
  - kind: registry
    name: pkg-config
    version: 0.3.34
    sha: f6b464fbc74e149a392436b17d523f769e057cb6877f6a5c4618bc6f11800548
  - kind: registry
    name: portable-atomic
    version: 1.15.0
    sha: 05c8b63e8d9609db387f0324918f81d68fe27748f084ef092fb35954d0539a85
  - kind: registry
    name: portable-atomic-util
    version: 0.2.7
    sha: c2a106d1259c23fac8e543272398ae0e3c0b8d33c88ed73d0cc71b0f1d902618
  - kind: registry
    name: potential_utf
    version: 0.1.6
    sha: d83eb9bc6d8e5cf568e7a1101d60ee05e81ed50ea106026f3d18deeb046d7661
  - kind: registry
    name: powerfmt
    version: 0.2.0
    sha: 439ee305def115ba05938db6eb1644ff94165c5ab5e9420d1c1bcedbba909391
  - kind: registry
    name: primeorder
    version: 0.13.6
    sha: 353e1ca18966c16d9deb1c69278edbc5f194139612772bd9537af60ac231e1e6
  - kind: registry
    name: proc-macro2
    version: 1.0.107
    sha: 985e7ec9bb745e6ce6535b544d84d6cd6f7ad8bd711c398938ae983b91a766d9
  - kind: registry
    name: prodash
    version: 31.0.0
    sha: 962200e2d7d551451297d9fdce85138374019ada198e30ea9ede38034e27604c
  - kind: registry
    name: quote
    version: 1.0.47
    sha: 1fbf4db142a473a8d80c26bbf18454ed458bf8d26c8219c331daecfdbd079001
  - kind: registry
    name: r-efi
    version: 6.0.0
    sha: f8dcc9c7d52a811697d2151c701e0d08956f92b0e24136cf4cf27b57a6a0d9bf
  - kind: registry
    name: rand
    version: 0.10.2
    sha: c7f5fa3a058cd35567ef9bfa5e75732bee0f9e4c55fa90477bef2dfcdbc4be80
  - kind: registry
    name: rand_core
    version: 0.10.1
    sha: 63b8176103e19a2643978565ca18b50549f6101881c443590420e4dc998a3c69
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: rand_xoshiro
    version: 0.6.0
    sha: 6f97cdb2a36ed4183de61b2f824cc45c9f1037f28afe0a322e9fff4c108b5aaa
  - kind: registry
    name: redox_syscall
    version: 0.5.18
    sha: ed2bf2547551a7053d6fdfafda3f938979645c44812fbfcda098faae3f1a362d
  - kind: registry
    name: regex
    version: 1.13.1
    sha: f020237b6c8eed93db2e2cb53c00c60a8e1bc73da7d073199a1180401450218d
  - kind: registry
    name: regex-automata
    version: 0.4.18
    sha: ad8553b9b26413251cbf30e620595c7a41b3887f03da04579c0e6b0d6a06b4b2
  - kind: registry
    name: regex-syntax
    version: 0.8.11
    sha: d6f6ff9a378485b298a5286656da665ba74413d36db0979633275d2e708145d4
  - kind: registry
    name: rfc6979
    version: 0.4.0
    sha: f8dd2a808d456c4a54e300a23e9f5a67e122c3024119acbfd73e3bf664491cb2
  - kind: registry
    name: rsqlite-vfs
    version: 0.1.1
    sha: c51c9ae4df8a7fba42103df5c621fa3c37eccf3a3c650879e90fc48b11cc192c
  - kind: registry
    name: rusqlite
    version: 0.40.2
    sha: 23f2a97da3e3873c73cb2a2e71b35c40ff95e0b1eefa8d72d8499a6928c3b5b3
  - kind: registry
    name: rustc-hash
    version: 2.1.3
    sha: 6b1e7f9a428571be2dc5bc0505c13fb6bf936822b894ec87abf8a08a4e51742d
  - kind: registry
    name: rustc-stable-hash
    version: 0.1.2
    sha: 781442f29170c5c93b7185ad559492601acdc71d5bb0706f5868094f45cfcd08
  - kind: registry
    name: rustfix
    version: 0.9.7
    sha: 4ab550bf03e3428c98b8e0354800a18f366f1f5f25544b908463b4634374f34f
  - kind: registry
    name: rustix
    version: 1.1.4
    sha: b6fe4565b9518b83ef4f91bb47ce29620ca828bd32cb7e408f0062e9930ba190
  - kind: registry
    name: rustversion
    version: 1.0.23
    sha: cf54715a573b99ac80df0bc206da022bcd442c974952c7b9720069370852e21f
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - kind: registry
    name: schannel
    version: 0.1.29
    sha: 91c1b7e4904c873ef0710c1f407dde2e6287de2bebc1bbbf7d430bb7cbffd939
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - kind: registry
    name: sec1
    version: 0.7.3
    sha: d3e97a565f76233a6003f9f5c54be1d9c5bdfa3eccfb189469f11ec4901c47dc
  - kind: registry
    name: security-framework
    version: 3.7.0
    sha: b7f4bc775c73d9a02cde8bf7b2ec4c9d12743edf609006c7facc23998404cd1d
  - kind: registry
    name: security-framework-sys
    version: 2.17.0
    sha: 6ce2691df843ecc5d231c0b14ece2acc3efb62c0a398c7e1d875f3983ce020e3
  - kind: registry
    name: semver
    version: 1.0.28
    sha: 8a7852d02fc848982e0c167ef163aaff9cd91dc640ba85e263cb1ce46fae51cd
  - kind: registry
    name: serde
    version: 1.0.229
    sha: 4148590afebada386688f18773da617792bf2ef03ffc1e4cbd2b1d45b023e0ba
  - kind: registry
    name: serde-untagged
    version: 0.1.9
    sha: f9faf48a4a2d2693be24c6289dbe26552776eb7737074e6722891fadbe6c5058
  - kind: registry
    name: serde-value
    version: 0.7.0
    sha: f3a1a3341211875ef120e117ea7fd5228530ae7e7036a779fdc9117be6b3282c
  - kind: registry
    name: serde_core
    version: 1.0.229
    sha: 67dca2c9c51e58a4791a4b1ed58308b39c64224d349a935ab5039aa360942a48
  - kind: registry
    name: serde_derive
    version: 1.0.229
    sha: e7a5d71263a5a7d47b41f6b3f06ba276f10cc18b0931f1799f710578e2309348
  - kind: registry
    name: serde_ignored
    version: 0.1.14
    sha: 115dffd5f3853e06e746965a20dcbae6ee747ae30b543d91b0e089668bb07798
  - kind: registry
    name: serde_json
    version: 1.0.151
    sha: c841b55ecdae098c80dcae9cf767f6f8a0c2cdb3416bbef72181df4d0fe73f14
  - kind: registry
    name: serde_spanned
    version: 1.1.1
    sha: 6662b5879511e06e8999a8a235d848113e942c9124f211511b16466ee2995f26
  - kind: registry
    name: sha1
    version: 0.10.7
    sha: a978451301f4db1d02937a4ab3ccce137717b81826e79b7d49ffe3244a13c3b8
  - kind: registry
    name: sha1
    version: 0.11.0
    sha: aacc4cc499359472b4abe1bf11d0b12e688af9a805fa5e3016f9a386dc2d0214
  - kind: registry
    name: sha1-checked
    version: 0.10.0
    sha: 89f599ac0c323ebb1c6082821a54962b839832b03984598375bff3975b804423
  - kind: registry
    name: sha2
    version: 0.10.9
    sha: a7507d819769d01a365ab707794a4084392c824f54a7a6a7862f8c3d0892b283
  - kind: registry
    name: sha2
    version: 0.11.0
    sha: 446ba717509524cb3f22f17ecc096f10f4822d76ab5c0b9822c5f9c284e825f4
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: shell-escape
    version: 0.1.5
    sha: 45bb67a18fa91266cc7807181f62f9178a6873bfad7dc788c42e6430db40184f
  - kind: registry
    name: shell-words
    version: 1.1.1
    sha: dc6fe69c597f9c37bfeeeeeb33da3530379845f10be461a66d16d03eca2ded77
  - kind: registry
    name: shlex
    version: 2.0.1
    sha: f8fadd59c855ef2080decdef8ff161eb6661b86933c9d82e5ba29dc602a55aba
  - kind: registry
    name: signature
    version: 2.2.0
    sha: 77549399552de45a898a580c1b41d445bf730df867cc44e6c0233bbc4b8329de
  - kind: registry
    name: simd-adler32
    version: 0.3.10
    sha: 3a219298ac11a56ea9a6d2120044824d6f01aeb034955e7af7bc16858527deea
  - kind: registry
    name: sized-chunks
    version: 0.6.5
    sha: 16d69225bde7a69b235da73377861095455d298f2b970996eec25ddbb42b3d1e
  - kind: registry
    name: slab
    version: 0.4.12
    sha: 0c790de23124f9ab44544d7ac05d60440adc586479ce501c1d6d7da3cd8c9cf5
  - kind: registry
    name: smallvec
    version: 1.15.2
    sha: 8ed6a63f02c8539c91a8685a86f4099661ba3da017932f6ebbea6de3f0fa7c90
  - kind: registry
    name: socket2
    version: 0.6.5
    sha: c3d1e2c7f27f8d4cb10542a02c49005dbd6e93095799d6f3be745fae9f8fedd4
  - kind: registry
    name: spki
    version: 0.7.3
    sha: d91ed6c858b01f942cd56b37a94b3e0a1798290327d1236e4d9cf4eaca44d29d
  - kind: registry
    name: sqlite-wasm-rs
    version: 0.5.5
    sha: dc3efc0da82635d7e1ced0053bbbfa8c7ab9645d0bf36ceb4f7127bb85315d75
  - kind: registry
    name: stable_deref_trait
    version: 1.2.1
    sha: 6ce2be8dc25455e1f91df71bfa12ad37d7af1092ae736f3a6cd0e37bc7810596
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: subtle
    version: 2.6.1
    sha: 13c2bddecc57b384dee18652358fb23172facb8a2c51ccc10d74c157bdea3292
  - kind: registry
    name: supports-hyperlinks
    version: 3.2.0
    sha: e396b6523b11ccb83120b115a0b7366de372751aa6edf19844dfb13a6af97e91
  - kind: registry
    name: supports-unicode
    version: 3.0.0
    sha: b7401a30af6cb5818bb64852270bb722533397edcfc7344954a38f420819ece2
  - kind: registry
    name: syn
    version: 2.0.119
    sha: 872831b642d1a07999a962a351ed35b955ea2cfc8f3862091e2a240a84f17297
  - kind: registry
    name: syn
    version: 3.0.4
    sha: e6275cddf4610d1775e6d1fe9469b2e77d0f39fd98fb7450901b821e0c53649f
  - kind: registry
    name: synstructure
    version: 0.13.2
    sha: 728a70f3dbaf5bab7f0c4b1ac8d7ae5ea60a4b5549c8a5914361c99147a709d2
  - kind: registry
    name: tar
    version: 0.4.46
    sha: 3f6221d9a6003c78398e3b239969f352578258df48c8eb051caadae0015bc840
  - kind: registry
    name: tempfile
    version: 3.27.0
    sha: 32497e9a4c7b38532efcdebeef879707aa9f794296a4f0244f6f69e9bc8574bd
  - kind: registry
    name: terminal_size
    version: 0.4.4
    sha: 230a1b821ccbd75b185820a1f1ff7b14d21da1e442e22c0863ea5f08771a8874
  - kind: registry
    name: thiserror
    version: 2.0.20
    sha: ec86235f5fcc2a73650310756d2ac5b138a5780bbbdfae3eeccec992c435ba4f
  - kind: registry
    name: thiserror-impl
    version: 2.0.20
    sha: bc04cd3e1236dd4a98afca4569f2deb3f120e5422a4023be2cb683f8486292af
  - kind: registry
    name: thread_local
    version: 1.1.10
    sha: 1ad99c4c6d32803332c548b1af0540b357b3f5fc0be8f6c6bfe8b2e6ae784070
  - kind: registry
    name: time
    version: 0.3.55
    sha: cdb87b95ec50ddfa440816d227a17b2ccbdda963a316a727fda0fc4334f7d134
  - kind: registry
    name: time-core
    version: 0.1.9
    sha: 9e1c906769ad99c88eaa54e728060edef082f8e358ff32030cb7c7d315e81109
  - kind: registry
    name: time-macros
    version: 0.2.32
    sha: 7e689342a48d2ea927c87ea50cabf8594854bf940e9310208848d680d668ed85
  - kind: registry
    name: tinystr
    version: 0.8.4
    sha: b1e27c91459209c2986af3dcf603a5a74a4368754ce37414f59acc971167f643
  - kind: registry
    name: tinyvec
    version: 1.12.0
    sha: bb4ebadaa0af04fab11ae01eb5f9fdb5f9c5b875506e210e71c07873528baa7f
  - kind: registry
    name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - kind: registry
    name: toml
    version: 0.9.12+spec-1.1.0
    sha: cf92845e79fc2e2def6a5d828f0801e29a2f8acc037becc5ab08595c7d5e9863
  - kind: registry
    name: toml
    version: 1.1.4+spec-1.1.0
    sha: 3aace63f4bbcdfc2c965b059de67119c89c4017a70d633be6c104910f67056f5
  - kind: registry
    name: toml_datetime
    version: 0.7.5+spec-1.1.0
    sha: 92e1cfed4a3038bc5a127e35a2d360f145e1f4b971b551a2ba5fd7aedf7e1347
  - kind: registry
    name: toml_datetime
    version: 1.1.1+spec-1.1.0
    sha: 3165f65f62e28e0115a00b2ebdd37eb6f3b641855f9d636d3cd4103767159ad7
  - kind: registry
    name: toml_edit
    version: 0.25.13+spec-1.1.0
    sha: 6975367e4d2ef766d86af01ffad14b622fecc8d4357a998fbc4deb6e9bacaf9b
  - kind: registry
    name: toml_parser
    version: 1.1.3+spec-1.1.0
    sha: 1d38ac1cf9b95face32296c0a3ede1fdc270627c9d9c02a7274dd6d960dc4d56
  - kind: registry
    name: toml_writer
    version: 1.1.2+spec-1.1.0
    sha: 7d56353a2a665ad0f41a421187180aab746c8c325620617ad883a99a1cbe66d2
  - kind: registry
    name: tracing
    version: 0.1.44
    sha: 63e71662fa4b2a2c3a26f570f037eb95bb1f85397f3cd8076caed2f026a6d100
  - kind: registry
    name: tracing-attributes
    version: 0.1.31
    sha: 7490cfa5ec963746568740651ac6781f701c9c5ea257c58e057f3ba8cf69e8da
  - kind: registry
    name: tracing-chrome
    version: 0.7.2
    sha: bf0a738ed5d6450a9fb96e86a23ad808de2b727fd1394585da5cdd6788ffe724
  - kind: registry
    name: tracing-core
    version: 0.1.36
    sha: db97caf9d906fbde555dd62fa95ddba9eecfd14cb388e4f491a66d74cd5fb79a
  - kind: registry
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.23
    sha: cb7f578e5945fb242538965c2d0b04418d38ec25c79d160cd279bf0731c8d319
  - kind: registry
    name: typeid
    version: 1.0.3
    sha: bc7d623258602320d5c55d1bc22793b57daff0ec7efc270ea7d55ce1d5f5471c
  - kind: registry
    name: typenum
    version: 1.20.1
    sha: b6f5e870be6c3b371b77fe0ee0bafb859fa4964b4404c27de1d380043c4dda20
  - kind: registry
    name: unicase
    version: 2.9.0
    sha: dbc4bc3a9f746d862c45cb89d705aa10f187bb96c76001afab07a0d35ce60142
  - kind: registry
    name: unicode-bom
    version: 2.0.3
    sha: 7eec5d1121208364f6793f7d2e222bf75a915c19557537745b195b253dd64217
  - kind: registry
    name: unicode-ident
    version: 1.0.24
    sha: e6e4313cd5fcd3dad5cafa179702e2b244f760991f45397d14d4ebf38247da75
  - kind: registry
    name: unicode-normalization
    version: 0.1.25
    sha: 5fd4f6878c9cb28d874b009da9e8d183b5abc80117c40bbd187a1fde336be6e8
  - kind: registry
    name: unicode-width
    version: 0.2.2
    sha: b4ac048d71ede7ee76d585517add45da530660ef4390e49b098733c6e897f254
  - kind: registry
    name: url
    version: 2.5.8
    sha: ff67a8a4397373c3ef660812acab3268222035010ab8680ec4215f38ba3d0eed
  - kind: registry
    name: utf8_iter
    version: 1.0.4
    sha: b6c140620e7ffbb22c2dee59cafe6084a59b5ffc27a8859a5f0d494b5d52b6be
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: valuable
    version: 0.1.1
    sha: ba73ea9cf16a25df0c8caa16c51acb937d5712a8429db78a3ee29d5dcacd3a65
  - kind: registry
    name: vcpkg
    version: 0.2.15
    sha: accd4ea62f7bb7a82fe23066fb0957d48ef677f6eeb8215f372f52e48bb32426
  - kind: registry
    name: version_check
    version: 0.9.5
    sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: wasi
    version: 0.11.1+wasi-snapshot-preview1
    sha: ccf3ec651a847eb01de73ccad15eb7d99f80485de043efb2f370cd654f4ea44b
  - kind: registry
    name: wasm-bindgen
    version: 0.2.127
    sha: 1b70935747edd64d89de3efa29d73789b806c15798f8e7dca4d8ac356b50ce70
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.127
    sha: 77775f8f3f7217702089053b94958f8f54061a3f663417df76e19cbdcca29bc1
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.127
    sha: e11d33f857dc2fb11b8bc75aee111aa9cbeb12cd9f25efd3d4c2a3dd4e235284
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.127
    sha: 7ef64dbcc55df09c7e5a46182d181c2cfa3e925f3da937ea764728b4bbb9dcbf
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
  - kind: registry
    name: winnow
    version: 0.7.15
    sha: df79d97927682d2fd8adb29682d1140b343be4ac0f08fd68b7765d9c059d3945
  - kind: registry
    name: winnow
    version: 1.0.4
    sha: 23b97319f7b8343df12cc98938e5c3eb436064524c8d2b4e30a1d3a36eecdf81
  - kind: registry
    name: writeable
    version: 0.6.4
    sha: 3ad82d2a33cdc9674dc7465672f271e096168fcdbe0f799d9e6db8c5892679dc
  - kind: registry
    name: yoke
    version: 0.8.3
    sha: 709fe23a0424b6a435d82152b1bd3fdfb0833487d5fa90d05d42762a9891fef5
  - kind: registry
    name: yoke-derive
    version: 0.8.2
    sha: de844c262c8848816172cef550288e7dc6c7b7814b4ee56b3e1553f275f1858e
  - kind: registry
    name: zerofrom
    version: 0.1.8
    sha: 0ec05a11813ea801ff6d75110ad09cd0824ddba17dfe17128ea0d5f68e6c5272
  - kind: registry
    name: zerofrom-derive
    version: 0.1.7
    sha: 11532158c46691caf0f2593ea8358fed6bbf68a0315e80aae9bd41fbade684a1
  - kind: registry
    name: zeroize
    version: 1.9.0
    sha: e13c156562582aa81c60cb29407084cdb54c4164760106ab78e6c5b0858cf64e
  - kind: registry
    name: zerotrie
    version: 0.2.5
    sha: 4ea269c3bd32f0a32c321907a2ae912ba6f4649bb0fc764a15627e99a7095a3f
  - kind: registry
    name: zerovec
    version: 0.11.8
    sha: bb0464e17806c1d976d5cba29399c7f08e516e279e2ba493f63123b5fca67dd8
  - kind: registry
    name: zerovec-derive
    version: 0.11.6
    sha: 34df6fc39dbd26ddc9c10e6a2984476e13acce22e64e4487636ef494369225da
  - kind: registry
    name: zlib-rs
    version: 0.6.7
    sha: 34b31d188d9d685a4f9c7b46d6e36631b07058d2cfe190267adce54dc230bf12
  - kind: registry
    name: zmij
    version: 1.0.23
    sha: 29666d0abbfad1e3dc4dcf6144730dd3a3ab225bbbdac83319345b1b44ccfc1b
