project('aemeath-os-release')

conf_data = configuration_data({
  'FULL_VERSION': get_option('full-version'),
  'AEMEATH_VERSION': get_option('aemeath-version'),
  'SDK_VERSION': get_option('sdk-version')
})

configure_file(
    input : 'os-release.in',
    output : 'os-release',
    configuration : conf_data,
    install_dir : get_option('prefix') / 'lib'
)

meson.add_install_script('os-release-symlink.sh', get_option('sysconfdir'))
