class profile::app_blender_netrender_service {
  include profile::app_blender

  include wget

  # make executable with mode 755
  wget::fetch { 'netrender-watchdog.py':
    # source  => 'https://rawgit.com/timberline-secondary/systemd-blender-netrender/master/netrender-watchdog.py',
    source  => 'https://raw.githubusercontent.com/timberline-secondary/systemd-blender-netrender/master/netrender-watchdog.py',
    destination => '/usr/local/bin/',
    cache_dir   => '/var/cache/wget',
    mode        => '0755',
  }

}
