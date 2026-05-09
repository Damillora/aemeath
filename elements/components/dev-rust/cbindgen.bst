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
  - install -Dm755 -t "%{install-root}%{bindir}" target/release/cbindgen

sources:
- kind: git_repo
  track: v*
  url: github:mozilla/cbindgen.git
  ref: v0.29.4-0-gb826cb8911488fe8a209d2b693492c0c673e8cca
- kind: cargo2
  ref:
  - kind: registry
    name: anstream
    version: 0.6.19
    sha: 301af1932e46185686725e0fad2f8f2aa7da69dd70bf6ecc44d6b703844a3933
  - kind: registry
    name: anstyle
    version: 1.0.11
    sha: 862ed96ca487e809f1c8e5a8447f6ee2cf102f846893800b20cebdf541fc6bbd
  - kind: registry
    name: anstyle-parse
    version: 0.2.7
    sha: 4e7644824f0aa2c7b9384579234ef10eb7efb6a0deb83f9630a49594dd9c15c2
  - kind: registry
    name: anstyle-query
    version: 1.1.3
    sha: 6c8bdeb6047d8983be085bab0ba1472e6dc604e7041dbf6fcd5e71523014fae9
  - kind: registry
    name: anstyle-wincon
    version: 3.0.9
    sha: 403f75924867bb1033c59fbf0797484329750cfbe3c4325cd33127941fabc882
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: bitflags
    version: 2.9.1
    sha: 1b8e56985ec62d17e9c1001dc89c88ecd7dc08e47eba5ec7c29c7b5eeecde967
  - kind: registry
    name: cfg-if
    version: 1.0.1
    sha: 9555578bc9e57714c812a1f84e4fc5b4d21fcb063490c624de019f7464c91268
  - kind: registry
    name: clap
    version: 4.5.41
    sha: be92d32e80243a54711e5d7ce823c35c41c9d929dc4ab58e1276f625841aadf9
  - kind: registry
    name: clap_builder
    version: 4.5.41
    sha: 707eab41e9622f9139419d573eca0900137718000c517d47da73045f54331c3d
  - kind: registry
    name: clap_lex
    version: 0.7.5
    sha: b94f61472cee1439c0b966b47e3aca9ae07e45d070759512cd390ea2bebc6675
  - kind: registry
    name: colorchoice
    version: 1.0.4
    sha: b05b61dc5112cbb17e4b6cd61790d9845d13888356391624cbe7e41efeac1e75
  - kind: registry
    name: dashmap
    version: 5.5.3
    sha: 978747c1d849a7d2ee5e8adc0159961c48fb7e5db2f06af6723b80123bb53856
  - kind: registry
    name: diff
    version: 0.1.13
    sha: 56254986775e3233ffa9c4d7d3faaf6d36a2c09d30b20687e9f88bc8bafc16c8
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.3.13
    sha: 778e2ac28f6c47af28e4907f13ffd1e1ddbd400980a9abd7c8df189bf578a5ad
  - kind: registry
    name: fastrand
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: getrandom
    version: 0.3.3
    sha: 26145e563e54f2cadc477553f1ec5ee650b00862f0a58bcd12cbdc5f0ea2d2f4
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: indexmap
    version: 2.5.0
    sha: 68b900aa2f7301e21c36462b170ee99994de34dff39a4a6a528e80e7376d07e5
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.1
    sha: 7943c866cc5cd64cbc25b2e01621d07fa8eb2a1a23160ee81ce38704e97b8ecf
  - kind: registry
    name: itoa
    version: 1.0.15
    sha: 4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libc
    version: 0.2.174
    sha: 1171693293099992e19cddea4e8b849964e9846f4acee11b3948bcc337be8776
  - kind: registry
    name: linux-raw-sys
    version: 0.9.4
    sha: cd945864f07fe9f5371a27ad7b52a172b4b499999f1d97574c9fa68373937e12
  - kind: registry
    name: lock_api
    version: 0.4.13
    sha: 96936507f153605bddfcda068dd804796c84324ed2510809e5b2a624c81da765
  - kind: registry
    name: log
    version: 0.4.27
    sha: 13dc2df351e3202783a1fe0d44375f7295ffb4049267b0f3018346dc122a1d94
  - kind: registry
    name: memchr
    version: 2.7.5
    sha: 32a282da65faaf38286cf3be983213fcf1d2e2a58700e808f83f4ea9a4804bc0
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: once_cell_polyfill
    version: 1.70.1
    sha: a4895175b425cb1f87721b59f0f286c2092bd4af812243672510e1ac53e2e0ad
  - kind: registry
    name: parking_lot
    version: 0.12.4
    sha: 70d58bf43669b5795d1576d0641cfb6fbb2057bf629506267a92807158584a13
  - kind: registry
    name: parking_lot_core
    version: 0.9.11
    sha: bc838d2a56b5b1a6c25f55575dfc605fabb63bb2365f6c2353ef9159aa69e4a5
  - kind: registry
    name: pretty_assertions
    version: 1.4.1
    sha: 3ae130e2f271fbc2ac3a40fb1d07180839cdbbe443c7a27e1e3c13c5cac0116d
  - kind: registry
    name: proc-macro2
    version: 1.0.95
    sha: 02b3e5e68a3a1a02aad3ec490a98007cbc13c37cbe84a3cd7b8e406d76e7f778
  - kind: registry
    name: quote
    version: 1.0.40
    sha: 1885c039570dc00dcb4ff087a89e185fd56bae234ddc7f056a945bf36467248d
  - kind: registry
    name: r-efi
    version: 5.3.0
    sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
  - kind: registry
    name: redox_syscall
    version: 0.5.13
    sha: 0d04b7d0ee6b4a0207a0a7adb104d23ecb0b47d6beae7152d0fa34b692b29fd6
  - kind: registry
    name: rustix
    version: 1.0.8
    sha: 11181fbabf243db407ef8df94a6ce0b2f9a733bd8be4ad02b4eda9602296cac8
  - kind: registry
    name: ryu
    version: 1.0.20
    sha: 28d3b2b1366ec20994f1fd18c3c594f05c5dd4bc44d8bb0c1c632c8d6829481f
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
    name: serde_json
    version: 1.0.140
    sha: 20068b6e96dc6c9bd23e01df8827e6c7e1f2fddd43c21810382803c136b99373
  - kind: registry
    name: serde_spanned
    version: 1.0.0
    sha: 40734c41988f7306bb04f0ecf60ec0f3f1caa34290e4e8ea471dcd3346483b83
  - kind: registry
    name: serial_test
    version: 2.0.0
    sha: 0e56dd856803e253c8f298af3f4d7eb0ae5e23a737252cd90bb4f3b435033b2d
  - kind: registry
    name: serial_test_derive
    version: 2.0.0
    sha: 91d129178576168c589c9ec973feedf7d3126c01ac2bf08795109aa35b69fb8f
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: syn
    version: 2.0.104
    sha: 17b6f705963418cdb9927482fa304bc562ece2fdd4f616084c50b7023b435a40
  - kind: registry
    name: tempfile
    version: 3.20.0
    sha: e8a64e3985349f2441a1a9ef0b853f869006c3855f2cda6862a94d26ebb9d6a1
  - kind: registry
    name: toml
    version: 0.9.2
    sha: ed0aee96c12fa71097902e0bb061a5e1ebd766a6636bb605ba401c45c1650eac
  - kind: registry
    name: toml_datetime
    version: 0.7.0
    sha: bade1c3e902f58d73d3f294cd7f20391c1cb2fbcb643b73566bc773971df91e3
  - kind: registry
    name: toml_parser
    version: 1.0.1
    sha: 97200572db069e74c512a14117b296ba0a80a30123fbbb5aa1f4a348f639ca30
  - kind: registry
    name: toml_writer
    version: 1.0.2
    sha: fcc842091f2def52017664b53082ecbbeb5c7731092bad69d2c63050401dfd64
  - kind: registry
    name: unicode-ident
    version: 1.0.18
    sha: 5a5f39404a5da50712a4c1eecf25e90dd62b613502b7e925fd4e4d19b5c96512
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: wasi
    version: 0.14.2+wasi-0.2.4
    sha: 9683f9a5a998d873c0d21fcbe3c083009670149a8fab228644b8bd36b2c48cb3
  - kind: registry
    name: windows-sys
    version: 0.59.0
    sha: 1e38bc4d79ed67fd075bcc251a1c39b32a1776bbe92e5bef1f0bf1f8c531853b
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
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
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: winnow
    version: 0.7.12
    sha: f3edebf492c8125044983378ecb5766203ad3b4c2f7a922bd7dd207f6d443e95
  - kind: registry
    name: wit-bindgen-rt
    version: 0.39.0
    sha: 6f42320e61fe2cfd34354ecb597f86f413484a798ba44a8ca1165c58d42da6c1
  - kind: registry
    name: yansi
    version: 1.0.1
    sha: cfe53a6657fd280eaa890a3bc59152892ffa3e30101319d168b781ed6529b049
