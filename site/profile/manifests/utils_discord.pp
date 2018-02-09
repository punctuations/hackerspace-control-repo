class profile::utils_discord {
  include wget
  include gdebi

  wget::fetch { 'discord.deb':
    source      => 'https://discordapp.com/api/download?platform=linux&format=deb',
    destination => '/tmp/',
    cache_dir   => '/var/cache/wget',
  } ~>
    package { 'discord':
      provider => gdebi,
      ensure   => latest,
      source   => '/tmp/discord.deb',
    }

}