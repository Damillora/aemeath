kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/rust.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:containers/aardvark-dns.git
  # set to v1 before Podman 6 releases
  track: v1.*
  ref: v1.17.1-0-gd9d17d4fe9d0a43512f6203042543deb3431a1bb
- kind: cargo2
  ref:
  - kind: registry
    name: android_system_properties
    version: 0.1.5
    sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
  - kind: registry
    name: anstream
    version: 0.6.21
    sha: 43d5b281e737544384e969a5ccad3f1cdd24b48086a0fc1b2a5262a26b8f4f4a
  - kind: registry
    name: anstyle
    version: 1.0.13
    sha: 5192cca8006f1fd4f7237516f40fa183bb07f8fbdfedaa0036de5ea9b0b45e78
  - kind: registry
    name: anstyle-parse
    version: 0.2.7
    sha: 4e7644824f0aa2c7b9384579234ef10eb7efb6a0deb83f9630a49594dd9c15c2
  - kind: registry
    name: anstyle-query
    version: 1.1.4
    sha: 9e231f6134f61b71076a3eab506c379d4f36122f2af15a9ff04415ea4c3339e2
  - kind: registry
    name: anstyle-wincon
    version: 3.0.10
    sha: 3e0633414522a32ffaac8ac6cc8f748e090c5717661fddeea04219e2344f5f2a
  - kind: registry
    name: arc-swap
    version: 1.7.1
    sha: 69f7f8c3906b62b754cd5326047894316021dcfe5a194c8ea52bdd94934a3457
  - kind: registry
    name: async-trait
    version: 0.1.89
    sha: 9035ad2d096bed7955a320ee7e2230574d28fd3c3a0f186cbea1ff3c7eed5dbb
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: bitflags
    version: 2.10.0
    sha: 812e12b5285cc515a9c72a5c1d3b6d46a19dac5acfef5265968c166106e31dd3
  - kind: registry
    name: bumpalo
    version: 3.19.0
    sha: 46c5e41b57b8bba42a04676d81cb89e9ee8e859a1a66f80a5a72e1cb76b34d43
  - kind: registry
    name: bytes
    version: 1.10.1
    sha: d71b6127be86fdcfddb610f7182ac57211d4b18a3e9c82eb2d17662f2227ad6a
  - kind: registry
    name: cc
    version: 1.2.44
    sha: 37521ac7aabe3d13122dc382493e20c9416f299d2ccd5b3a5340a2570cdeb0f3
  - kind: registry
    name: cfg-if
    version: 1.0.4
    sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: chrono
    version: 0.4.42
    sha: 145052bdd345b87320e369255277e3fb5152762ad123a901ef5c262dd38fe8d2
  - kind: registry
    name: clap
    version: 4.5.51
    sha: 4c26d721170e0295f191a69bd9a1f93efcdb0aff38684b61ab5750468972e5f5
  - kind: registry
    name: clap_builder
    version: 4.5.51
    sha: 75835f0c7bf681bfd05abe44e965760fea999a5286c6eb2d59883634fd02011a
  - kind: registry
    name: clap_derive
    version: 4.5.49
    sha: 2a0b5487afeab2deb2ff4e03a807ad1a03ac532ff5a2cee5d86884440c7f7671
  - kind: registry
    name: clap_lex
    version: 0.7.6
    sha: a1d728cc89cf3aee9ff92b05e62b19ee65a02b5702cff7d5a377e32c6ae29d8d
  - kind: registry
    name: colorchoice
    version: 1.0.4
    sha: b05b61dc5112cbb17e4b6cd61790d9845d13888356391624cbe7e41efeac1e75
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: critical-section
    version: 1.2.0
    sha: 790eea4361631c5e7d22598ecd5723ff611904e3344ce8720784c93e3d83d40b
  - kind: registry
    name: data-encoding
    version: 2.9.0
    sha: 2a2330da5de22e8a3cb63252ce2abb30116bf5265e89c0e01bc17015ce30a476
  - kind: registry
    name: deranged
    version: 0.5.5
    sha: ececcb659e7ba858fb4f10388c250a7252eb0a27373f1a72b8748afdd248e587
  - kind: registry
    name: displaydoc
    version: 0.2.5
    sha: 97369cbbc041bc366949bc74d34658d6cda5621039731c6310521892a3a20ae0
  - kind: registry
    name: endian-type
    version: 0.1.2
    sha: c34f04666d835ff5d62e058c3995147c06f42fe86ff053337632bca83e42702d
  - kind: registry
    name: enum-as-inner
    version: 0.6.1
    sha: a1e6a265c649f3f5979b601d26f1d05ada116434c87741c9493cb56218f76cbc
  - kind: registry
    name: find-msvc-tools
    version: 0.1.4
    sha: 52051878f80a721bb68ebfbc930e07b65ba72f2da88968ea5c06fd6ca3d3a127
  - kind: registry
    name: flume
    version: 0.11.1
    sha: da0e4dd2a88388a1f4ccc7c9ce104604dab68d9f408dc34cd45823d5a9069095
  - kind: registry
    name: form_urlencoded
    version: 1.2.2
    sha: cb4cb245038516f5f85277875cdaa4f7d2c9a0fa0468de06ed190163b1581fcf
  - kind: registry
    name: futures
    version: 0.3.31
    sha: 65bc07b1a8bc7c85c5f2e110c476c7389b4554ba72af57d8445ea63a576b0876
  - kind: registry
    name: futures-channel
    version: 0.3.31
    sha: 2dff15bf788c671c1934e366d07e30c1814a8ef514e1af724a602e8a2fbe1b10
  - kind: registry
    name: futures-core
    version: 0.3.31
    sha: 05f29059c0c2090612e8d742178b0580d2dc940c837851ad723096f87af6663e
  - kind: registry
    name: futures-executor
    version: 0.3.31
    sha: 1e28d1d997f585e54aebc3f97d39e72338912123a67330d723fdbb564d646c9f
  - kind: registry
    name: futures-io
    version: 0.3.31
    sha: 9e5c1b78ca4aae1ac06c48a526a655760685149f0d465d21f37abfe57ce075c6
  - kind: registry
    name: futures-macro
    version: 0.3.31
    sha: 162ee34ebcb7c64a8abebc059ce0fee27c2262618d7b60ed8faf72fef13c3650
  - kind: registry
    name: futures-sink
    version: 0.3.31
    sha: e575fab7d1e0dcb8d0c7bcf9a63ee213816ab51902e6d244a95819acacf1d4f7
  - kind: registry
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
  - kind: registry
    name: getrandom
    version: 0.2.16
    sha: 335ff9f135e4384c8150d6f27c6daed433577f86b4750418338c01a1a2528592
  - kind: registry
    name: getrandom
    version: 0.3.4
    sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hickory-client
    version: 0.25.2
    sha: c466cd63a4217d5b2b8e32f23f58312741ce96e3c84bf7438677d2baff0fc555
  - kind: registry
    name: hickory-proto
    version: 0.25.2
    sha: f8a6fe56c0038198998a6f217ca4e7ef3a5e51f46163bd6dd60b5c71ca6c6502
  - kind: registry
    name: hickory-server
    version: 0.25.2
    sha: d53e5fe811b941c74ee46b8818228bfd2bc2688ba276a0eaeb0f2c95ea3b2585
  - kind: registry
    name: hostname
    version: 0.4.1
    sha: a56f203cd1c76362b69e3863fd987520ac36cf70a8c92627449b2f64a8cf7d65
  - kind: registry
    name: iana-time-zone
    version: 0.1.64
    sha: 33e57f83510bb73707521ebaffa789ec8caf86f9657cad665b092b581d40e9fb
  - kind: registry
    name: iana-time-zone-haiku
    version: 0.1.2
    sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
  - kind: registry
    name: icu_collections
    version: 2.1.1
    sha: 4c6b649701667bbe825c3b7e6388cb521c23d88644678e83c0c4d0a621a34b43
  - kind: registry
    name: icu_locale_core
    version: 2.1.1
    sha: edba7861004dd3714265b4db54a3c390e880ab658fec5f7db895fae2046b5bb6
  - kind: registry
    name: icu_normalizer
    version: 2.1.1
    sha: 5f6c8828b67bf8908d82127b2054ea1b4427ff0230ee9141c54251934ab1b599
  - kind: registry
    name: icu_normalizer_data
    version: 2.1.1
    sha: 7aedcccd01fc5fe81e6b489c15b247b8b0690feb23304303a9e560f37efc560a
  - kind: registry
    name: icu_properties
    version: 2.1.1
    sha: e93fcd3157766c0c8da2f8cff6ce651a31f0810eaa1c51ec363ef790bbb5fb99
  - kind: registry
    name: icu_properties_data
    version: 2.1.1
    sha: 02845b3647bb045f1100ecd6480ff52f34c35f82d9880e029d329c21d1054899
  - kind: registry
    name: icu_provider
    version: 2.1.1
    sha: 85962cf0ce02e1e0a629cc34e7ca3e373ce20dda4c4d7294bbd0bf1fdb59e614
  - kind: registry
    name: idna
    version: 1.1.0
    sha: 3b0875f23caa03898994f6ddc501886a45c7d3d62d04d2d90788d47be1b1e4de
  - kind: registry
    name: idna_adapter
    version: 1.2.1
    sha: 3acae9609540aa318d1bc588455225fb2085b9ed0c4f6bd0d9d5bcd86f1a0344
  - kind: registry
    name: inotify
    version: 0.11.0
    sha: f37dccff2791ab604f9babef0ba14fbe0be30bd368dc541e2b08d07c8aa908f3
  - kind: registry
    name: inotify-sys
    version: 0.1.5
    sha: e05c02b5e89bff3b946cedeca278abc628fe811e604f027c45a8aa3cf793d0eb
  - kind: registry
    name: ipnet
    version: 2.11.0
    sha: 469fb0b9cefa57e3ef31275ee7cacb78f2fdca44e4765491884a2b119d4eb130
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.2
    sha: a6cb138bb79a146c1bd460005623e142ef0181e3d0219cb493e02f7d08a35695
  - kind: registry
    name: itoa
    version: 1.0.15
    sha: 4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c
  - kind: registry
    name: js-sys
    version: 0.3.82
    sha: b011eec8cc36da2aab2d5cff675ec18454fad408585853910a202391cf9f8e65
  - kind: registry
    name: libc
    version: 0.2.177
    sha: 2874a2af47a2325c2001a6e6fad9b16a53b802102b528163885171cf92b15976
  - kind: registry
    name: litemap
    version: 0.8.1
    sha: 6373607a59f0be73a39b6fe456b8192fcc3585f602af20751600e974dd455e77
  - kind: registry
    name: lock_api
    version: 0.4.14
    sha: 224399e74b87b5f3557511d98dff8b14089b3dadafcab6bb93eab67d3aace965
  - kind: registry
    name: log
    version: 0.4.28
    sha: 34080505efa8e45a4b816c349525ebe327ceaa8559756f0356cba97ef3bf7432
  - kind: registry
    name: memchr
    version: 2.7.6
    sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: mio
    version: 1.1.0
    sha: 69d83b0086dc8ecf3ce9ae2874b2d1290252e2a30720bea58a5c6639b0092873
  - kind: registry
    name: nanorand
    version: 0.7.0
    sha: 6a51313c5820b0b02bd422f4b44776fbf47961755c74ce64afc73bfad10226c3
  - kind: registry
    name: nibble_vec
    version: 0.1.0
    sha: 77a5d83df9f36fe23f0c3648c6bbb8b0298bb5f1939c8f2704431371f4b84d43
  - kind: registry
    name: nix
    version: 0.30.1
    sha: 74523f3a35e05aba87a1d978330aef40f67b0304ac79c1c00b294c9830543db6
  - kind: registry
    name: num-conv
    version: 0.1.0
    sha: 51d515d32fb182ee37cda2ccdcb92950d6a3c2893aa280e540671c2cd0f3b1d9
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: num_threads
    version: 0.1.7
    sha: 5c7398b9c8b70908f6371f47ed36737907c87c52af34c268fed0bf0ceb92ead9
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: once_cell_polyfill
    version: 1.70.2
    sha: 384b8ab6d37215f3c5301a95a4accb5d64aa607f1fcb26a11b5303878451b4fe
  - kind: registry
    name: percent-encoding
    version: 2.3.2
    sha: 9b4f627cb1b25917193a259e49bdad08f671f8d9708acfd5fe0a8c1455d87220
  - kind: registry
    name: pin-project-lite
    version: 0.2.16
    sha: 3b3cff922bd51709b605d9ead9aa71031d81447142d828eb4a6eba76fe619f9b
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: portable-atomic
    version: 1.11.1
    sha: f84267b20a16ea918e43c6a88433c2d54fa145c92a811b5b047ccbe153674483
  - kind: registry
    name: potential_utf
    version: 0.1.4
    sha: b73949432f5e2a09657003c25bca5e19a0e9c84f8058ca374f49e0ebe605af77
  - kind: registry
    name: powerfmt
    version: 0.2.0
    sha: 439ee305def115ba05938db6eb1644ff94165c5ab5e9420d1c1bcedbba909391
  - kind: registry
    name: ppv-lite86
    version: 0.2.21
    sha: 85eae3c4ed2f50dcfe72643da4befc30deadb458a9b590d720cde2f2b1e97da9
  - kind: registry
    name: prefix-trie
    version: 0.7.0
    sha: 85cf4c7c25f1dd66c76b451e9041a8cfce26e4ca754934fa7aed8d5a59a01d20
  - kind: registry
    name: proc-macro2
    version: 1.0.103
    sha: 5ee95bc4ef87b8d5ba32e8b7714ccc834865276eab0aed5c9958d00ec45f49e8
  - kind: registry
    name: quote
    version: 1.0.41
    sha: ce25767e7b499d1b604768e7cde645d14cc8584231ea6b295e9c9eb22c02e1d1
  - kind: registry
    name: r-efi
    version: 5.3.0
    sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
  - kind: registry
    name: radix_trie
    version: 0.2.1
    sha: c069c179fcdc6a2fe24d8d18305cf085fdbd4f922c041943e203685d6a1c58fd
  - kind: registry
    name: rand
    version: 0.9.2
    sha: 6db2770f06117d490610c7488547d543617b21bfa07796d7a12f6f1bd53850d1
  - kind: registry
    name: rand_chacha
    version: 0.9.0
    sha: d3022b5f1df60f26e1ffddd6c66e8aa15de382ae63b3a0c1bfc0e4d3e3f325cb
  - kind: registry
    name: rand_core
    version: 0.9.3
    sha: 99d9a13982dcf210057a8a78572b2217b667c3beacbf3a0d8b454f6f82837d38
  - kind: registry
    name: ring
    version: 0.17.14
    sha: a4689e6c2294d81e88dc6261c768b63bc4fcdb852be6d1352498b114f61383b7
  - kind: registry
    name: rustversion
    version: 1.0.22
    sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
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
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: signal-hook-registry
    version: 1.4.6
    sha: b2a4719bff48cee6b39d12c020eeb490953ad2443b7055bd0b21fca26bd8c28b
  - kind: registry
    name: slab
    version: 0.4.11
    sha: 7a2ae44ef20feb57a68b23d846850f861394c2e02dc425a50098ae8c90267589
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: socket2
    version: 0.6.1
    sha: 17129e116933cf371d018bb80ae557e889637989d8638274fb25622827b03881
  - kind: registry
    name: spin
    version: 0.9.8
    sha: 6980e8d7511241f8acf4aebddbb1ff938df5eebe98691418c4468d0b72a96a67
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
    version: 2.0.108
    sha: da58917d35242480a05c2897064da0a80589a2a0476c9a3f2fdc83b53502e917
  - kind: registry
    name: synstructure
    version: 0.13.2
    sha: 728a70f3dbaf5bab7f0c4b1ac8d7ae5ea60a4b5549c8a5914361c99147a709d2
  - kind: registry
    name: syslog
    version: 7.0.0
    sha: 019f1500a13379b7d051455df397c75770de6311a7a188a699499502704d9f10
  - kind: registry
    name: thiserror
    version: 2.0.17
    sha: f63587ca0f12b72a0600bcba1d40081f830876000bb46dd2337a3051618f4fc8
  - kind: registry
    name: thiserror-impl
    version: 2.0.17
    sha: 3ff15c8ecd7de3849db632e14d18d2571fa09dfc5ed93479bc4485c7a517c913
  - kind: registry
    name: time
    version: 0.3.44
    sha: 91e7d9e3bb61134e77bde20dd4825b97c010155709965fedf0f49bb138e52a9d
  - kind: registry
    name: time-core
    version: 0.1.6
    sha: 40868e7c1d2f0b8d73e4a8c7f0ff63af4f6d19be117e90bd73eb1d62cf831c6b
  - kind: registry
    name: time-macros
    version: 0.2.24
    sha: 30cfb0125f12d9c277f35663a0a33f8c30190f4e4574868a330595412d34ebf3
  - kind: registry
    name: tinystr
    version: 0.8.2
    sha: 42d3e9c45c09de15d06dd8acf5f4e0e399e85927b7f00711024eb7ae10fa4869
  - kind: registry
    name: tinyvec
    version: 1.10.0
    sha: bfa5fdc3bce6191a1dbc8c02d5c8bffcf557bafa17c124c5264a458f1b0613fa
  - kind: registry
    name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - kind: registry
    name: tokio
    version: 1.48.0
    sha: ff360e02eab121e0bc37a2d3b4d4dc622e6eda3a8e5253d5435ecf5bd4c68408
  - kind: registry
    name: tokio-macros
    version: 2.6.0
    sha: af407857209536a95c8e56f8231ef2c2e2aff839b22e07a1ffcbc617e9db9fa5
  - kind: registry
    name: tokio-util
    version: 0.7.17
    sha: 2efa149fe76073d6e8fd97ef4f4eca7b67f599660115591483572e406e165594
  - kind: registry
    name: tracing
    version: 0.1.41
    sha: 784e0ac535deb450455cbfa28a6f0df145ea1bb7ae51b821cf5e7927fdcfbdd0
  - kind: registry
    name: tracing-core
    version: 0.1.34
    sha: b9d12581f227e93f094d3af2ae690a574abb8a2b9b7a96e7cfe9647b2b617678
  - kind: registry
    name: unicode-ident
    version: 1.0.22
    sha: 9312f7c4f6ff9069b165498234ce8be658059c6728633667c526e27dc2cf1df5
  - kind: registry
    name: untrusted
    version: 0.9.0
    sha: 8ecb6da28b8a351d773b68d5825ac39017e680750f980f3a1a85cd8dd28a47c1
  - kind: registry
    name: url
    version: 2.5.7
    sha: 08bc136a29a3d1758e07a9cca267be308aeebf5cfd5a10f3f67ab2097683ef5b
  - kind: registry
    name: utf8_iter
    version: 1.0.4
    sha: b6c140620e7ffbb22c2dee59cafe6084a59b5ffc27a8859a5f0d494b5d52b6be
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: wasi
    version: 0.11.1+wasi-snapshot-preview1
    sha: ccf3ec651a847eb01de73ccad15eb7d99f80485de043efb2f370cd654f4ea44b
  - kind: registry
    name: wasip2
    version: 1.0.1+wasi-0.2.4
    sha: 0562428422c63773dad2c345a1882263bbf4d65cf3f42e90921f787ef5ad58e7
  - kind: registry
    name: wasm-bindgen
    version: 0.2.105
    sha: da95793dfc411fbbd93f5be7715b0578ec61fe87cb1a42b12eb625caa5c5ea60
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.105
    sha: 04264334509e04a7bf8690f2384ef5265f05143a4bff3889ab7a3269adab59c2
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.105
    sha: 420bc339d9f322e562942d52e115d57e950d12d88983a14c79b86859ee6c7ebc
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.105
    sha: 76f218a38c84bcb33c25ec7059b07847d465ce0e0a76b995e134a45adcb6af76
  - kind: registry
    name: windows-core
    version: 0.62.2
    sha: b8e83a14d34d0623b51dce9581199302a221863196a1dde71a7663a4c2be9deb
  - kind: registry
    name: windows-implement
    version: 0.60.2
    sha: 053e2e040ab57b9dc951b72c264860db7eb3b0200ba345b4e4c3b14f67855ddf
  - kind: registry
    name: windows-interface
    version: 0.59.3
    sha: 3f316c4a2570ba26bbec722032c4099d8c8bc095efccdc15688708623367e358
  - kind: registry
    name: windows-link
    version: 0.1.3
    sha: 5e6ad25900d524eaabdbbb96d20b4311e1e7ae1699af4fb28c17ae66c80d798a
  - kind: registry
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
  - kind: registry
    name: windows-result
    version: 0.4.1
    sha: 7781fa89eaf60850ac3d2da7af8e5242a5ea78d1a11c49bf2910bb5a73853eb5
  - kind: registry
    name: windows-strings
    version: 0.5.1
    sha: 7837d08f69c77cf6b07689544538e017c1bfcf57e34b4c0ff58e6c2cd3b37091
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-sys
    version: 0.60.2
    sha: f2f500e4d28234f72040990ec9d39e3a6b950f9f22d3dba18416c35882612bcb
  - kind: registry
    name: windows-sys
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows-targets
    version: 0.53.5
    sha: 4945f9f551b88e0d65f3db0bc25c33b8acea4d9e41163edf90dcd0b19f9069f3
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.53.1
    sha: a9d8416fa8b42f5c947f8482c43e7d89e73a173cead56d044f6a56104a6d1b53
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.53.1
    sha: b9d782e804c2f632e395708e99a94275910eb9100b2114651e04744e9b125006
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnu
    version: 0.53.1
    sha: 960e6da069d81e09becb0ca57a65220ddff016ff2d6af6a223cf372a506593a3
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.53.1
    sha: fa7359d10048f68ab8b09fa71c3daccfb0e9b559aed648a8f95469c27057180c
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_i686_msvc
    version: 0.53.1
    sha: 1e7ac75179f18232fe9c285163565a57ef8d3c89254a30685b57d83a38d326c2
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.53.1
    sha: 9c3842cdd74a865a8066ab39c8a7a473c0778a3f29370b5fd6b4b9aa7df4a499
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.53.1
    sha: 0ffa179e2d07eee8ad8f57493436566c7cc30ac536a3379fdf008f47f6bb7ae1
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.53.1
    sha: d6bbff5f0aada427a1e5a6da5f1f98158182f26556f345ac9e04d36d0ebed650
  - kind: registry
    name: wit-bindgen
    version: 0.46.0
    sha: f17a85883d4e6d00e8a97c586de764dabcc06133f7f1d55dce5cdc070ad7fe59
  - kind: registry
    name: writeable
    version: 0.6.2
    sha: 9edde0db4769d2dc68579893f2306b26c6ecfbe0ef499b013d731b7b9247e0b9
  - kind: registry
    name: yoke
    version: 0.8.1
    sha: 72d6e5c6afb84d73944e5cedb052c4680d5657337201555f9f2a16b7406d4954
  - kind: registry
    name: yoke-derive
    version: 0.8.1
    sha: b659052874eb698efe5b9e8cf382204678a0086ebf46982b79d6ca3182927e5d
  - kind: registry
    name: zerocopy
    version: 0.8.27
    sha: 0894878a5fa3edfd6da3f88c4805f4c8558e2b996227a3d864f47fe11e38282c
  - kind: registry
    name: zerocopy-derive
    version: 0.8.27
    sha: 88d2b8d9c68ad2b9e4340d7832716a4d21a22a1154777ad56ea55c51a9cf3831
  - kind: registry
    name: zerofrom
    version: 0.1.6
    sha: 50cc42e0333e05660c3587f3bf9d0478688e15d870fab3346451ce7f8c9fbea5
  - kind: registry
    name: zerofrom-derive
    version: 0.1.6
    sha: d71e5d6e06ab090c67b5e44993ec16b72dcbaabc526db883a360057678b48502
  - kind: registry
    name: zerotrie
    version: 0.2.3
    sha: 2a59c17a5562d507e4b54960e8569ebee33bee890c70aa3fe7b97e85a9fd7851
  - kind: registry
    name: zerovec
    version: 0.11.5
    sha: 6c28719294829477f525be0186d13efa9a3c602f7ec202ca9e353d310fb9a002
  - kind: registry
    name: zerovec-derive
    version: 0.11.2
    sha: eadce39539ca5cb3985590102671f2567e659fca9666581ad3411d59207951f3
