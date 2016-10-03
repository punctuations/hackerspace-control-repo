
class hs_apt {

  # https://forge.puppet.com/puppetlabs/apt
  include apt

#  class { 'apt':
#    update => {
#      frequency => 'daily',
#    },
#  }

# Do this: https://www.memonic.com/user/pneff/folder/55756627-f51c-43f0-adfd-777635574108/id/1Z9999x

#        exec { "upgrade":
#                command => "apt full-upgrade",
#                path => "/usr/bin/",
#        }

  cron { 'cron-upgrade':
    command => '/usr/bin/apt full-upgrade',
    user    => 'root',
    hour    => 16,
    minute  => 7,
  }

}
