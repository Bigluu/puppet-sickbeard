# == Class sickbeard::intall
#
class sickbeard::install {
  include sickbeard::params

  package { $sickbeard::params::package_name:
    ensure => present,
  }
}
