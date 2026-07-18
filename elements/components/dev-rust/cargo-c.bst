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
  ref: v0.10.24-0-gd7d1743e8d94faa858b4326e7d45e201f4347b27
- kind: remote
  url: github:lu-zero/cargo-c/releases/download/v0.10.24/Cargo.lock
  ref: 0cbf346afe2c77fec7b39f8954b9de0639ced04234764240c8290dbec8d45e82
- kind: cargo2
  ref:
  - kind: registry
    name: adler2
    version: 2.0.1
    sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
  - kind: registry
    name: aho-corasick
    version: 1.1.4
    sha: ddd31a130427c27518df266943a5308ed92d4b226cc639f5a8f1002816174301
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
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
    version: 0.1.0
    sha: ee65f3323c89eac2de51015f125682e9a88c3bf7a10d0c39b3768ff6af654ff7
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
    version: 1.0.103
    sha: 2a4385e2e34eb35d6b3efe798b9eb88096925d87726c0798709bf56d9ed84af3
  - kind: registry
    name: ar_archive_writer
    version: 0.5.2
    sha: 4087686b4b0a3427190bae57a1d9a478dbb2d40c5dc1bd6e2b6d797913bdd348
  - kind: registry
    name: arc-swap
    version: 1.9.2
    sha: c049c0be4daef0b145cb3555416b3b8ef5b7888a38aea1a3a155801fe7b0810b
  - kind: registry
    name: arrayref
    version: 0.3.9
    sha: 76a2e8124351fda1ef8aaaa3bbd7ebbcb486bbcd4225aca0aa0d84bb2db8fecb
  - kind: registry
    name: arrayvec
    version: 0.7.8
    sha: d3fb67a6e08acf24fdeccbac2cb6ac4305825bd1f117462e0e6f2f193345ad56
  - kind: registry
    name: async-trait
    version: 0.1.89
    sha: 9035ad2d096bed7955a320ee7e2230574d28fd3c3a0f186cbea1ff3c7eed5dbb
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
    version: 2.13.0
    sha: b4388bee8683e3d04af747c73422af53102d2bd24d9eadb6cbc100baef4b43f8
  - kind: registry
    name: bitmaps
    version: 2.1.0
    sha: 031043d04099746d8db04daf1fa424b2bc8bd69d92b25962dcde24da39ab64a2
  - kind: registry
    name: blake3
    version: 1.8.5
    sha: 0aa83c34e62843d924f905e0f5c866eb1dd6545fc4d719e803d9ba6030371fce
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
    version: 1.12.3
    sha: 5cee35f73844aa3014bb606320a6c1f010249dbdf43342fe54b5a4f6a8ed4b79
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
    version: 1.2.4
    sha: 5f2d30e4173c4026932d51d31d6b0613b1fd3014bf3f9f8943d4ba139c437ba0
  - kind: registry
    name: cargo
    version: 0.98.0
    sha: 7bcc52d107e10f9695543bbdc9128c7798abafdd36c6ba5adfb35e0abe87bf6e
  - kind: registry
    name: cargo-credential
    version: 0.4.10
    sha: aa57675b822ecda7f0be12eedbfabd890066271eedc7f2c45ed41e86e0f327a8
  - kind: registry
    name: cargo-credential-libsecret
    version: 0.5.8
    sha: 2e4e04c7a5534329dcdb4c7cefc6c22b0b1206d72f868efdbfff449f44fef6ca
  - kind: registry
    name: cargo-credential-macos-keychain
    version: 0.4.23
    sha: 0601abc232268abe2620ec2843ac642fd34bd8890ee85d3d46dc7d5a4c50d304
  - kind: registry
    name: cargo-credential-wincred
    version: 0.4.23
    sha: 98217a0c25db10c0825228cd6dbe009742c2e524f3dd135b5abd988d6960e25a
  - kind: registry
    name: cargo-platform
    version: 0.3.3
    sha: dd0061da739915fae12ea00e16397555ed4371a6bb285431aab930f61b0aa4ba
  - kind: registry
    name: cargo-util
    version: 0.2.30
    sha: 5d7123d293f652da25899a771e48756075710465b2eedb0fc35aa3b368e9cf5c
  - kind: registry
    name: cargo-util-schemas
    version: 0.14.1
    sha: 455abfe7d7f58e523ea3998c2dd5bc71f315df661eac2bba3dd1653401218894
  - kind: registry
    name: cargo-util-terminal
    version: 0.1.0
    sha: 5baff8199ae90b871b3383da1b2bfd1a9f003f0b043c9278550d220a66c99a5b
  - kind: registry
    name: cbindgen
    version: 0.29.4
    sha: 2ecb53484c9c167ba674026b656d8a27d7657a58e6066aa902bfb1a4aa00ae20
  - kind: registry
    name: cc
    version: 1.2.67
    sha: e17dd265a7d0f31ef544e1b20e03add05d3b45b491b633b10d67145d2acc1a38
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: chacha20
    version: 0.10.1
    sha: d524456ba66e72eb8b115ff89e01e497f8e6d11d78b70b1aa13c0fbd97540a81
  - kind: registry
    name: clap
    version: 4.6.1
    sha: 1ddb117e43bbf7dacf0a4190fef4d345b9bad68dfc649cb349e7d17d28428e51
  - kind: registry
    name: clap_builder
    version: 4.6.0
    sha: 714a53001bf66416adb0e2ef5ac857140e7dc3a0c48fb28b2f10762fc4b5069f
  - kind: registry
    name: clap_complete
    version: 4.6.7
    sha: db8b397918185f0161ff3d6fcaa9e4bfc09b8367caf6e1d4a2848e5477ed027b
  - kind: registry
    name: clap_derive
    version: 4.6.1
    sha: f2ce8604710f6733aa641a2b3731eaa1e8b3d9973d5e3565da11800813f997a9
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
    version: 0.41.0
    sha: 55754653d4ac92d6ed1d01970872e0c9803c4eecc916095e19b862d67625b987
  - kind: registry
    name: crc32fast
    version: 1.5.0
    sha: 9481c1c90cbf2ac953f07c8d4a58aa3945c425b7185c9154d67a65e4230da511
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
    version: 0.2.6
    sha: 1ac70aa55017e108007fbaf5aa0f54b021c98f92ff8af59d42eda9da96e3dd4f
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
    version: 2.3.1
    sha: 5c24599140dc39d7a81e4476e7573d41bbc18e07c803900298e522a5fbcfbfb6
  - kind: registry
    name: either
    version: 1.16.0
    sha: 91622ff5e7162018101f2fea40d6ebf4a78bbe5a49736a2020649edf9693679e
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
    version: 2.4.1
    sha: 9f1f227452a390804cdb637b74a86990f2a7d7ba4b7d5693aac9b4dd6defd8d6
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
    version: 0.1.9
    sha: 5baebc0774151f905a1a2cc41989300b1e6fbb29aff0ceffa1064fdd3088d582
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
    version: 0.3.32
    sha: 8b147ee9d1f6d097cef9ce628cd2ee62288d963e16fb287bd9286455b241382d
  - kind: registry
    name: futures-channel
    version: 0.3.32
    sha: 07bbe89c50d7a535e539b8c17bc0b49bdb77747034daa8087407d655f3f7cc1d
  - kind: registry
    name: futures-core
    version: 0.3.32
    sha: 7e3450815272ef58cec6d564423f6e755e25379b217b0bc688e295ba24df6b1d
  - kind: registry
    name: futures-executor
    version: 0.3.32
    sha: baf29c38818342a3b26b5b923639e7b1f4a61fc5e76102d4b1981c6dc7a7579d
  - kind: registry
    name: futures-io
    version: 0.3.32
    sha: cecba35d7ad927e23624b22ad55235f2239cfa44fd10428eecbeba6d6a717718
  - kind: registry
    name: futures-macro
    version: 0.3.32
    sha: e835b70203e41293343137df5c0664546da5745f82ec9b84d40be8336958447b
  - kind: registry
    name: futures-sink
    version: 0.3.32
    sha: c39754e157331b013978ec91992bde1ac089843443c49cbc7f46150b0fad0893
  - kind: registry
    name: futures-task
    version: 0.3.32
    sha: 037711b3d59c33004d3856fbdc83b99d4ff37a24768fa1be9ce3538a1cde4393
  - kind: registry
    name: futures-timer
    version: 3.0.4
    sha: af43fadb8a98512d547e37b4e92e0ced13e205c061b87b4623eff01d918d6968
  - kind: registry
    name: futures-util
    version: 0.3.32
    sha: 389ca41296e6190b48053de0321d02a77f32f8a5d2461dd38762c0593805c6d6
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
    version: 0.20.4
    sha: 7b88256088d75a56f8ecfa070513a775dd9107f6530ef14919dac831af9cfe2b
  - kind: registry
    name: git2-curl
    version: 0.21.0
    sha: be8dcabbc09ece4d30a9aa983d5804203b7e2f8054a171f792deff59b56d31fa
  - kind: registry
    name: gix
    version: 0.83.0
    sha: 6ce52001b946a6249d5d0d3011df0a042ac3f8a4d013460db6476577b0b9c567
  - kind: registry
    name: gix-actor
    version: 0.41.1
    sha: 8bc998b8f746dda8565450d08a63b792ced9165d8c27a1ed3f02799ec6a7820f
  - kind: registry
    name: gix-archive
    version: 0.32.0
    sha: 9a20ec244b733338d4cb60e5e05eac700dab7fcc689647b1d1daa9396b119342
  - kind: registry
    name: gix-attributes
    version: 0.33.2
    sha: 39b40888d0ed415c0744a6cdc61eebf0304c9d26ab726725b718443c322e5ba4
  - kind: registry
    name: gix-bitmap
    version: 0.3.2
    sha: 52ebef0c26ad305747649e727bbcd56a7b7910754eb7cea88f6dff6f93c51283
  - kind: registry
    name: gix-blame
    version: 0.13.0
    sha: 14dab9a942ab54a9661ded7397c3bf927274e7afa94494db0d75cfcbde02ca0a
  - kind: registry
    name: gix-chunk
    version: 0.7.2
    sha: 9faee47943b638e58ddd5e275a4906ad3e4b6c8584f1d41bd18ab9032ec52afb
  - kind: registry
    name: gix-command
    version: 0.9.1
    sha: 00706d4fef135ef4b01680d5218c6ee40cda8baf697b864296cbc887d19118f6
  - kind: registry
    name: gix-commitgraph
    version: 0.37.1
    sha: 7f675d0df484a7f6a47e64bd6f311af489d947c0323b0564f36d14f3d7762abb
  - kind: registry
    name: gix-config
    version: 0.56.0
    sha: 8c01848aebd21c67f6ba41f1de8efd46ae96df21f001954a3c9e1517e514d410
  - kind: registry
    name: gix-config-value
    version: 0.18.1
    sha: ed42168329552f6c2e5df09665c104199d45d84bedb53683738a49b57fe1baab
  - kind: registry
    name: gix-credentials
    version: 0.38.1
    sha: f40cd22f0dd71988be12d6e78b1709de2370e1957c5f107ff31e56caeba3745d
  - kind: registry
    name: gix-date
    version: 0.15.5
    sha: 3d63f9e28b59ddeb1a1eb9e5cf986a9222b5d484947445edbc20473939cc7fd0
  - kind: registry
    name: gix-diff
    version: 0.63.0
    sha: dc08e0fa1a91ff5f24affeab052f198056645e1de004910bde7b82b50ea5982a
  - kind: registry
    name: gix-dir
    version: 0.25.0
    sha: 32a0fc06e9e1e430cbf0a313666976d90f822f461a6525320427aa9b8af5236c
  - kind: registry
    name: gix-discover
    version: 0.51.0
    sha: 17852e6a501e688a1702b24ebe5b3761d4719455bc869fd29f38b0b859bcad34
  - kind: registry
    name: gix-error
    version: 0.2.4
    sha: e57831e199be480af90dcd7e459abed8a174c09ec9a6e2cc8f7ca6c54598b06b
  - kind: registry
    name: gix-features
    version: 0.48.1
    sha: 1849ae154d38bc403185be14fa871e38e3c93ee606875d94e207fdb9fba52dbc
  - kind: registry
    name: gix-filter
    version: 0.30.0
    sha: dac917dbe9653c9b615d248db91907a365bd779750c9e1b457a9d9fdeece3a08
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
    version: 0.2.3
    sha: b305d85504de270ad3525d726a6b69cc59ee7b2269b014387651107ab9f0755b
  - kind: registry
    name: gix-index
    version: 0.51.0
    sha: 54c3ef97ad08121e4327a6226bd63fed6b9e3c6b976d48bddd4356d9d41191db
  - kind: registry
    name: gix-lock
    version: 23.0.1
    sha: 65c9dedd9e90b0d47624d2ed241d394e09294118364e87b9b7e5f1fe755f3c2c
  - kind: registry
    name: gix-merge
    version: 0.16.0
    sha: 74bbcdcc52b70a32f0a151b024dff9d0fcf56ee48f00d9503e735af9d99ea881
  - kind: registry
    name: gix-negotiate
    version: 0.31.0
    sha: 103d42bfade1b8a96ca5005933127bdad461ce588d92422b2c2daa3ff20d780c
  - kind: registry
    name: gix-object
    version: 0.60.0
    sha: a38075a95d7cc5df8afd38e72c617026c1456952207a4120a7f55a3fbf93b4d7
  - kind: registry
    name: gix-odb
    version: 0.80.0
    sha: aeeda12a9663120418735ecdc1250d06eeab0be75700e47b3402a981331716ba
  - kind: registry
    name: gix-pack
    version: 0.70.0
    sha: daf02e6f5c8f07a069c9ea5245f40d9b14856ada4086091dc99941b49002b4fa
  - kind: registry
    name: gix-packetline
    version: 0.21.5
    sha: b217dd0ee0c4021ecf169a4a519b1b4f80d15e3f3765f3dc466223dc0ac891d7
  - kind: registry
    name: gix-path
    version: 0.12.1
    sha: afa6ac14cd14939ea94a496ce7460daa6511c09f5b84757e9cfc6f9c8d0f93a6
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
    version: 0.61.0
    sha: aa4bee82db63ec635996b96efae71cf467c155fa3f34a556184373224a26c4fd
  - kind: registry
    name: gix-quote
    version: 0.7.2
    sha: a6e541fc33cc2b783b7979040d445a0c86a2eca747c8faea4ca84230d06ae6ef
  - kind: registry
    name: gix-ref
    version: 0.63.0
    sha: d8ba9cc15f558b274c99349b83130f5ec83459660828fde9718bbbb43a726167
  - kind: registry
    name: gix-refspec
    version: 0.41.0
    sha: 61755b27d57edc8940a1b1593c8c61548ca8e4c02da1ed8d5bfeda9eb2a6b761
  - kind: registry
    name: gix-revision
    version: 0.45.0
    sha: 1fb5288fac706d3ea3e4e2ba9ec38b78743b8c02f422e18cb342299cfd6ab7e8
  - kind: registry
    name: gix-revwalk
    version: 0.31.0
    sha: 313813706b073a12ff7f9b2896bf3e6504cdac7cfbc97b1920114724705069f0
  - kind: registry
    name: gix-sec
    version: 0.14.1
    sha: ab8519976e4c7e486270740a5400369f37940779b80bd1377d94cfa1125d01b3
  - kind: registry
    name: gix-shallow
    version: 0.12.1
    sha: a292fc2fe548c5dfa575479d16b445b0ddf1dd2f56f1fec6aed386f82553cd97
  - kind: registry
    name: gix-status
    version: 0.30.0
    sha: 68c6d2a8c521ffa205fe7e268c82e6d1378ba37cd826ca10ab6129fdc29a4b65
  - kind: registry
    name: gix-submodule
    version: 0.30.0
    sha: 9fd5fc8692890bd71a596e540fd4c364f8460eaa82c4eaaedebde6e1e3eb4d91
  - kind: registry
    name: gix-tempfile
    version: 23.0.2
    sha: 6ef60812443484e67bf84e444cc71b4c78ae62deb822221774a4fa0c57fdb17f
  - kind: registry
    name: gix-trace
    version: 0.1.20
    sha: 44dc45eae785c0eb14173e0f152e6e224dcf4d45b6a6999a3aed22af541ad678
  - kind: registry
    name: gix-transport
    version: 0.57.2
    sha: 186874f7ad1fb2f9a2f2aa9c2dabc7f9dd087bef74c1a0eee2b4a9cf0248fcb3
  - kind: registry
    name: gix-traverse
    version: 0.57.0
    sha: a14b7052c0786676c03e71fcfde7d7f0f8e8316e642b5cec6bb3998719b2ce5c
  - kind: registry
    name: gix-url
    version: 0.36.1
    sha: 65bb01ec69d55e82ccb7a19e264501ead4e6aac38463a8cebfdd81e22bb67ab2
  - kind: registry
    name: gix-utils
    version: 0.3.3
    sha: 66c50966184123caf580ffa64e28031a878597f1c7fceb8fe19566c38eb1b771
  - kind: registry
    name: gix-validate
    version: 0.11.2
    sha: 7bc6fc771c4063ba7cd2f47b91fb6076251c6a823b64b7fe7b8874b0fe4afae3
  - kind: registry
    name: gix-worktree
    version: 0.52.0
    sha: d69955eb5e2910832f88d041964b809eee01dadd579237e0b55efec58fd406fd
  - kind: registry
    name: gix-worktree-state
    version: 0.30.0
    sha: 8a96dccbcf9e8fe0291c55f06e08da93ebb2e691c1311276f541eefcc6d70800
  - kind: registry
    name: gix-worktree-stream
    version: 0.32.0
    sha: 9a8444b8ed4662e1a0c97f3eceda29630001a1bbb2632201e50312623e594213
  - kind: registry
    name: glob
    version: 0.3.3
    sha: 0cc23270f6e1808e30a928bdc84dea0b9b4136a8bc82338574f23baf47bbd280
  - kind: registry
    name: globset
    version: 0.4.18
    sha: 52dfc19153a48bde0cbd630453615c8151bce3a5adfac7a0aebfbf0a1e1f57e3
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
    version: 0.11.1
    sha: 824e001ac4f3012dd16a264bec811403a67ca9deb6c102fc5049b32c4574b35f
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
    version: 1.4.2
    sha: 6970f50e31d6fc17d3fa27329444bfa74e196cf62e95052a3f6fee181dba6425
  - kind: registry
    name: http-auth
    version: 0.1.10
    sha: 150fa4a9462ef926824cf4519c84ed652ca8f4fbae34cb8af045b5cbcaf98822
  - kind: registry
    name: hybrid-array
    version: 0.4.13
    sha: 818356c5132c1fede50f837ca96afbe78ff42413047f4abb886217845e1b6c8c
  - kind: registry
    name: icu_collections
    version: 2.2.0
    sha: 2984d1cd16c883d7935b9e07e44071dca8d917fd52ecc02c04d5fa0b5a3f191c
  - kind: registry
    name: icu_locale_core
    version: 2.2.0
    sha: 92219b62b3e2b4d88ac5119f8904c10f8f61bf7e95b640d25ba3075e6cac2c29
  - kind: registry
    name: icu_normalizer
    version: 2.2.0
    sha: c56e5ee99d6e3d33bd91c5d85458b6005a22140021cc324cea84dd0e72cff3b4
  - kind: registry
    name: icu_normalizer_data
    version: 2.2.0
    sha: da3be0ae77ea334f4da67c12f149704f19f81d1adf7c51cf482943e84a2bad38
  - kind: registry
    name: icu_properties
    version: 2.2.0
    sha: bee3b67d0ea5c2cca5003417989af8996f8604e34fb9ddf96208a033901e70de
  - kind: registry
    name: icu_properties_data
    version: 2.2.0
    sha: 8e2bbb201e0c04f7b4b3e14382af113e17ba4f63e2c9d2ee626b720cbce54a14
  - kind: registry
    name: icu_provider
    version: 2.2.0
    sha: 139c4cf31c8b5f33d7e199446eff9c1e02decfc2f0eec2c8d71f65befa45b421
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
    version: 0.4.28
    sha: 2adf14691c72bcfc1058740436a35bdd3ae9c07d1a941ef00b749e9ea16aefa7
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
    name: io-close
    version: 0.3.7
    sha: 9cadcf447f06744f8ce713d2d6239bb5bde2c357a452397a9ed90c625da390bc
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
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
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
    version: 0.2.32
    sha: 961d16382652bfdd8c6f68b223b26a8c93e0d475c672f414411db31c6c5c900e
  - kind: registry
    name: jiff-static
    version: 0.2.32
    sha: d0879bd39df99c4c5e2c6615ccc026391a423dde10532c573e6086eb94a802cc
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
    version: 0.3.103
    sha: 53b44bfcdb3f8d5837a46dae1ca9660a837176eee74a28b229bc626816589102
  - kind: registry
    name: kstring
    version: 2.0.2
    sha: 558bf9508a558512042d3095138b1f7b8fe90c5467d94f9f1da28b3731c5dbd1
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libc
    version: 0.2.186
    sha: 68ab91017fe16c622486840e4c83c9a37afeff978bd239b5293d61ece587de66
  - kind: registry
    name: libgit2-sys
    version: 0.18.5+1.9.4
    sha: 005d6ae6eac1912906073e069f7db60b1fa98e052a68227824afe3e3a1c59ca2
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
    version: 0.37.0
    sha: b1f111c8c41e7c61a49cd34e44c7619462967221a6443b0ec299e0ac30cfb9b1
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
    version: 0.8.2
    sha: 92daf443525c4cce67b150400bc2316076100ce0b3686209eb8cf3c31612e6f0
  - kind: registry
    name: lock_api
    version: 0.4.14
    sha: 224399e74b87b5f3557511d98dff8b14089b3dadafcab6bb93eab67d3aace965
  - kind: registry
    name: log
    version: 0.4.33
    sha: 0ceec5bc11778974d1bcb055b18002eba7f4b3518b6a0081b3af5f21666da9ad
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
    version: 0.37.3
    sha: ff76201f031d8863c38aa7f905eca4f53abbfa15f609db4277d44cd8938f33fe
  - kind: registry
    name: object
    version: 0.39.1
    sha: 2e5a6c098c7a3b6547378093f5cc30bc54fd361ce711e05293a5cc589562739b
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
    version: 0.3.33
    sha: 19f132c84eca552bf34cab8ec81f1c1dcc229b811638f9d283dceabe58c5569e
  - kind: registry
    name: portable-atomic
    version: 1.13.1
    sha: c33a9471896f1c69cecef8d20cbe2f7accd12527ce60845ff44c153bb2a21b49
  - kind: registry
    name: portable-atomic-util
    version: 0.2.7
    sha: c2a106d1259c23fac8e543272398ae0e3c0b8d33c88ed73d0cc71b0f1d902618
  - kind: registry
    name: potential_utf
    version: 0.1.5
    sha: 0103b1cef7ec0cf76490e969665504990193874ea05c85ff9bab8b911d0a0564
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
    version: 1.0.106
    sha: 8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934
  - kind: registry
    name: prodash
    version: 31.0.0
    sha: 962200e2d7d551451297d9fdce85138374019ada198e30ea9ede38034e27604c
  - kind: registry
    name: quote
    version: 1.0.46
    sha: dfbc457d0c7a0759a614551b11a6409e5951f6c7537be1f1b7682b9ae9230368
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
    version: 1.13.0
    sha: 2a0e75113e14dc5acb068cd0786884f214f1312650a3d36d269f5c4f3cdee8a2
  - kind: registry
    name: regex-automata
    version: 0.4.15
    sha: 1f388202e4b80542a0921078cc23b6333bcf1409c1e3f86404cae4766a6131db
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
    version: 0.39.0
    sha: a0d2b0146dd9661bf67bb107c0bb2a55064d556eeb3fc314151b957f313bcd4e
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
    version: 1.0.228
    sha: 9a8e94ea7f378bd32cbbd37198a4a91436180c5bb472411e48b5ec2e2124ae9e
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
    version: 1.0.228
    sha: 41d385c7d4ca58e59fc732af25c3983b67ac852c1a25000afe1175de458b67ad
  - kind: registry
    name: serde_derive
    version: 1.0.228
    sha: d540f220d3187173da220f885ab66608367b6574e925011a9353e4badda91d79
  - kind: registry
    name: serde_ignored
    version: 0.1.14
    sha: 115dffd5f3853e06e746965a20dcbae6ee747ae30b543d91b0e089668bb07798
  - kind: registry
    name: serde_json
    version: 1.0.150
    sha: e8014e44b4736ed0538adeecded0fce2a272f22dc9578a7eb6b2d9993c74cfb9
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
    version: 0.3.9
    sha: 703d5c7ef118737c72f1af64ad2f6f8c5e1921f818cdcb97b8fe6fc69bf66214
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
    version: 2.0.118
    sha: 1b9ae57f904213ebb649ce6895b8a66c66f0203b9319718f69a5612a065b1422
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
    version: 2.0.18
    sha: 4288b5bcbc7920c07a1149a35cf9590a2aa808e0bc1eafaade0b80947865fbc4
  - kind: registry
    name: thiserror-impl
    version: 2.0.18
    sha: ebc4ee7f67670e9b64d05fa4253e753e016c6c95ff35b89b7941d6b856dec1d5
  - kind: registry
    name: thread_local
    version: 1.1.10
    sha: 1ad99c4c6d32803332c548b1af0540b357b3f5fc0be8f6c6bfe8b2e6ae784070
  - kind: registry
    name: time
    version: 0.3.53
    sha: 18dfaaeddcb932337b5e7866ee7d0ce9b76d2fd092997146f187ec09b4558a50
  - kind: registry
    name: time-core
    version: 0.1.9
    sha: 9e1c906769ad99c88eaa54e728060edef082f8e358ff32030cb7c7d315e81109
  - kind: registry
    name: time-macros
    version: 0.2.31
    sha: c431b87111666e491a90baa837f914fb45cd5dc3c268591b0220ff5057f2085f
  - kind: registry
    name: tinystr
    version: 0.8.3
    sha: c8323304221c2a851516f22236c5722a72eaa19749016521d6dff0824447d96d
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
    version: 1.1.2+spec-1.1.0
    sha: 81f3d15e84cbcd896376e6730314d59fb5a87f31e4b038454184435cd57defee
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
    version: 0.25.12+spec-1.1.0
    sha: d2153edc6955a6c354fad8f5efd38b6a8769bdccf9fe50f8e1329f81b0baa5d7
  - kind: registry
    name: toml_parser
    version: 1.1.2+spec-1.1.0
    sha: a2abe9b86193656635d2411dc43050282ca48aa31c2451210f4202550afb7526
  - kind: registry
    name: toml_writer
    version: 1.1.1+spec-1.1.0
    sha: 756daf9b1013ebe47a8776667b466417e2d4c5679d441c26230efd9ef78692db
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
    version: 0.2.126
    sha: 4b067c0c11094aef6b7a801c1e34a26affafdf3d051dba08456b868789aaf9a4
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.126
    sha: 167ce5e579f6bcf889c4f7175a8a5a585de84e8ff93976ce393efa5f2837aab1
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.126
    sha: f3997c7839262f4ef12cf90b818d6340c18e80f263f1a94bf157d0ec4420380e
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.126
    sha: dc1b4cb0cc549fcf58d7dfc081778139b3d283a081644e833e84682ad71cea24
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - kind: registry
    name: winapi-util
    version: 0.1.11
    sha: c2a7b1c03c876122aa43f3020e6c3c3ee5c05081c9a00739faf7503aeba10d22
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
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
    version: 0.6.3
    sha: 1ffae5123b2d3fc086436f8834ae3ab053a283cfac8fe0a0b8eaae044768a4c4
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
    version: 0.2.4
    sha: 0f9152d31db0792fa83f70fb2f83148effb5c1f5b8c7686c3459e361d9bc20bf
  - kind: registry
    name: zerovec
    version: 0.11.6
    sha: 90f911cbc359ab6af17377d242225f4d75119aec87ea711a880987b18cd7b239
  - kind: registry
    name: zerovec-derive
    version: 0.11.3
    sha: 625dc425cab0dca6dc3c3319506e6593dcb08a9f387ea3b284dbd52a92c40555
  - kind: registry
    name: zlib-rs
    version: 0.6.6
    sha: b142a20ec14a91d5bc708c1dc21b080c550113d8aa77afa29635673a65dd02c5
  - kind: registry
    name: zmij
    version: 1.0.23
    sha: 29666d0abbfad1e3dc4dcf6144730dd3a3ab225bbbdac83319345b1b44ccfc1b
