# == Class sickbeard::params
#
# This class is meant to be called from sickbeard
# It sets variables according to platform
#
class sickbeard::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'sickbeard'
      $service_name = 'sickbeard'
      $init_file    = 'ubuntu'
    }
    'RedHat', 'Amazon': {
      $package_name = 'sickbeard'
      $service_name = 'sickbeard'
      $init_file    = 'fedora'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
