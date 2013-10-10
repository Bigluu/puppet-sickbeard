# == Class sickbeard::config
#
# This class is called from sickbeard
#
class sickbeard::config {
  case $::osfamily {
    'Debian': {
      file { '/etc/default/sickbeard':
        content => template('sickbeard/default.erb'),
      }
    }
    'RedHat', 'Amazon': {
    }
    default: {
    }
  }
}
