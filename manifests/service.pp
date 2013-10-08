# == Class sickbeard::service
#
# This class is meant to be called from sickbeard
# It ensure the service is running
#
class sickbeard::service {
  include sickbeard::params

  service { $sickbeard::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
