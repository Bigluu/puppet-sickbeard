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
    }
    'RedHat', 'Amazon': {
      $package_name = 'sickbeard'
      $service_name = 'sickbeard'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
