kind: manual

depends:
- components/dev-tools/llvm.bst

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/rust.bst

config:
  build-commands:
  - cargo build --release --frozen

  install-commands:
  - install -Dm755 -t "%{install-root}%{bindir}" target/release/bindgen

sources:
- kind: git_repo
  track: v*
  url: github:rust-lang/rust-bindgen.git
  ref: v0.72.1-0-gd874de8d646d9b8a3e7ba2db2bcd52f2fba8f1f5
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: annotate-snippets
    version: 0.11.4
    sha: 24e35ed54e5ea7997c14ed4c70ba043478db1112e98263b3b035907aa197d991
  - kind: registry
    name: anstyle
    version: 1.0.10
    sha: 55cc3b69f167a1ef2e161439aa98aed94e6028e5f9a59be9a6ffb47aef1651f9
  - kind: registry
    name: autocfg
    version: 1.4.0
    sha: ace50bade8e6234aa140d9a2f552bbee1db4d353f69b8217bc503490fc1a9f26
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.2.1
    sha: 24a6904aef64d73cf10ab17ebace7befb918b82164785cb89907993be7f83813
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: cc
    version: 1.2.2
    sha: f34d93e62b03caf570cccc334cbc6c2fceca82f39211051345108adcba3eebdc
  - kind: registry
    name: cexpr
    version: 0.6.0
    sha: 6fac387a98bb7c37292057cffc56d62ecb629900026402633ae9160df93a8766
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: clang-sys
    version: 1.8.1
    sha: 0b023947811758c97c59bf9d1c188fd619ad4718dcaa767947df1cadb14f39f4
  - kind: registry
    name: clap
    version: 4.1.4
    sha: f13b9c79b5d1dd500d20ef541215a6423c75829ef43117e1b4d17fd8af0b5d76
  - kind: registry
    name: clap_complete
    version: 4.2.0
    sha: 01c22dcfb410883764b29953103d9ef7bb8fe21b3fa1158bc99986c2067294bd
  - kind: registry
    name: clap_derive
    version: 4.1.0
    sha: 684a277d672e91966334af371f1a7b5833f9aa00b07c84e92fbce95e00208ce8
  - kind: registry
    name: clap_lex
    version: 0.3.1
    sha: 783fe232adfca04f90f56201b26d79682d4cd2625e0bc7290b95123afe558ade
  - kind: registry
    name: either
    version: 1.13.0
    sha: 60b1af1c220855b6ceac025d3f6ecdd2b7c4894bfe9cd9bda4fbb4bc7c0d4cf0
  - kind: registry
    name: env_logger
    version: 0.10.0
    sha: 85cdab6a89accf66733ad5a1693a4dcced6aeff64602b634530dd73c1f3ee9f0
  - kind: registry
    name: env_logger
    version: 0.8.4
    sha: a19187fea3ac7e84da7dacf48de0c45d63c6a76f9490dae389aead16c243fce3
  - kind: registry
    name: errno
    version: 0.3.10
    sha: 33d852cb9b869c2a9b3df2f71a3074817f01e1844f839a144f5fcef059a4eb5d
  - kind: registry
    name: fastrand
    version: 1.9.0
    sha: e51093e27b0797c359783294ca4f0a911c270184cb10f85783b118614a1501be
  - kind: registry
    name: getrandom
    version: 0.2.15
    sha: c4567c8db10ae91089c99af84c68c38da3ec2f087c3f82960bcdbf3656b6f4d7
  - kind: registry
    name: glob
    version: 0.3.1
    sha: d2fabcfbdc87f4758337ca535fb41a6d701b65693ce38287d856d1674551ec9b
  - kind: registry
    name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - kind: registry
    name: hermit-abi
    version: 0.3.9
    sha: d231dfb89cfffdbc30e7fc41579ed6066ad03abda9e567ccafae602b97ec5024
  - kind: registry
    name: hermit-abi
    version: 0.4.0
    sha: fbf6a919d6cf397374f7dfeeea91d974c7c0a7221d0d0f4f20d859d329e53fcc
  - kind: registry
    name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - kind: registry
    name: instant
    version: 0.1.12
    sha: 7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c
  - kind: registry
    name: io-lifetimes
    version: 1.0.11
    sha: eae7b9aee968036d54dce06cebaefd919e4472e753296daccd6d344e3e2df0c2
  - kind: registry
    name: is-terminal
    version: 0.4.13
    sha: 261f68e344040fbd0edea105bef17c66edf46f984ddb1115b775ce31be948f4b
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: libc
    version: 0.2.167
    sha: 09d6582e104315a817dff97f75133544b2e094ee22447d2acf4a74e189ba06fc
  - kind: registry
    name: libloading
    version: 0.8.6
    sha: fc2f4eb4bc735547cfed7c0a4922cbd04a4655978c09b54f1f7b228750664c34
  - kind: registry
    name: linux-raw-sys
    version: 0.3.8
    sha: ef53942eb7bf7ff43a617b3e2c1c4a5ecf5944a7c1bc12d7ee39bbb15e5c1519
  - kind: registry
    name: log
    version: 0.4.22
    sha: a7a70ba024b9dc04c27ea2f0c0548feb474ec5c54bba33a7f72f873a39d07b24
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
  - kind: registry
    name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - kind: registry
    name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - kind: registry
    name: objc
    version: 0.2.7
    sha: 915b1b472bc21c53464d6c8461c9d3af805ba1ef837e1cac254428f4a77177b1
  - kind: registry
    name: once_cell
    version: 1.20.2
    sha: 1261fe7e33c73b354eab43b1273a57c8f967d0391e80353e51f764ac02cf6775
  - kind: registry
    name: os_str_bytes
    version: 6.4.1
    sha: 9b7820b9daea5457c9f21c69448905d723fbd21136ccf521748f23fd49e723ee
  - kind: registry
    name: owo-colors
    version: 4.1.0
    sha: fb37767f6569cd834a413442455e0f066d0d522de8630436e2a1761d9726ba56
  - kind: registry
    name: prettyplease
    version: 0.2.25
    sha: 64d1ec885c64d0457d564db4ec299b2dae3f9c02808b8ad9c3a089c591b18033
  - kind: registry
    name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - kind: registry
    name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - kind: registry
    name: proc-macro2
    version: 1.0.92
    sha: 37d3544b3f2748c54e147655edb5025752e2303145b5aefb3c3ea2c78b973bb0
  - kind: registry
    name: quickcheck
    version: 1.0.3
    sha: 588f6378e4dd99458b60ec275b4477add41ce4fa9f64dcba6f15adccb19b50d6
  - kind: registry
    name: quote
    version: 1.0.37
    sha: b5b9d34b8991d19d98081b46eacdd8eb58c6f2b201139f7c5f643cc155a633af
  - kind: registry
    name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: redox_syscall
    version: 0.3.5
    sha: 567664f262709473930a4bf9e51bf2ebf3348f2e748ccc50dea20646858f8f29
  - kind: registry
    name: regex
    version: 1.11.1
    sha: b544ef1b4eac5dc2db33ea63606ae9ffcfac26c1416a2806ae0bf5f56b201191
  - kind: registry
    name: regex-automata
    version: 0.4.9
    sha: 809e8dc61f6de73b46c85f4c96486310fe304c434cfa43669d7b40f711150908
  - kind: registry
    name: regex-syntax
    version: 0.8.5
    sha: 2b15c43186be67a4fd63bee50d0303afffcef381492ebe2c5d87f324e1b8815c
  - kind: registry
    name: rustc-hash
    version: 2.1.0
    sha: c7fb8039b3032c191086b10f11f319a6e99e1e82889c5cc6046f515c9db1d497
  - kind: registry
    name: rustix
    version: 0.37.27
    sha: fea8ca367a3a01fe35e6943c400addf443c0f57670e6ec51196f71a4b8762dd2
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: similar
    version: 2.6.0
    sha: 1de1d4f81173b03af4c0cbed3c898f6bff5b870e4a7f5d6f4057d62a7a4b686e
  - kind: registry
    name: strsim
    version: 0.10.0
    sha: 73473c0e59e6d5812c5dfe2a064a6444949f089e20eec9a2e5506596494e4623
  - kind: registry
    name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - kind: registry
    name: syn
    version: 2.0.90
    sha: 919d3b74a5dd0ccd15aeb8f93e7006bd9e14c295087c9896a110f490752bcf31
  - kind: registry
    name: tempfile
    version: 3.6.0
    sha: 31c0432476357e58790aaa47a8efb0c5138f137343f3b5f23bd36a27e3b0a6d6
  - kind: registry
    name: termcolor
    version: 1.2.0
    sha: be55cf8942feac5c765c2c993422806843c9a9a45d4d5c407ad6dd2ea95eb9b6
  - kind: registry
    name: unicode-ident
    version: 1.0.14
    sha: adb9e6ca4f869e1180728b7950e35922a7fc6397f7b641499e8f3ef06e50dc83
  - kind: registry
    name: unicode-width
    version: 0.1.14
    sha: 7dd6e30e90baa6f72411720665d41d89b9a3d039dc45b8faea1ddd07f617f6af
  - kind: registry
    name: version_check
    version: 0.9.4
    sha: 49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
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
    version: 0.1.5
    sha: 70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - kind: registry
    name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-targets
    version: 0.48.5
    sha: 9a2fa6e2155d7247be68c096456083145c183cbbbc2764150dda45a87197940c
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.48.5
    sha: 2b38e32f0abccf9987a4e3079dfb67dcd799fb61361e53e2882c3cbaf0d905d8
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.48.5
    sha: dc35310971f3b2dbbf3f0690a219f40e2d9afcf64f9ab7cc1be722937c26b4bc
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_i686_gnu
    version: 0.48.5
    sha: a75915e7def60c94dcef72200b9a8e58e5091744960da64ec734a6c6e9b3743e
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_msvc
    version: 0.48.5
    sha: 8f55c233f70c4b27f66c523580f78f1004e8b5a8b659e05a4eb49d4166cca406
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.48.5
    sha: 53d40abd2583d23e4718fddf1ebec84dbff8381c07cae67ff7768bbf19c6718e
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.48.5
    sha: 0b7b52767868a23d5bab768e390dc5f5c55825b6d30b86c844ff2dc7414044cc
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.48.5
    sha: ed94fce61571a4006852b7389a063ab983c02eb1bb37b47f8272ce92d06d9538
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
