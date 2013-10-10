# == Class sickbeard::intall
#
class sickbeard::install {
  include sickbeard::params

  package { 'python-cheetah':
    ensure   => present,
  }

  vcsrepo { $sickbeard::params::package_name:
    ensure   => latest,
    provider => git,
    source   => $sickbeard::git_repo,
    path     => "${sickbeard::base_dir}/sickbeard",
    owner    => $sickbeard::user,
    group    => $sickbeard::group,
    require  => Package['python-cheetah'],
  }

  file { '/etc/init.d/sickbeard':
    ensure  => present,
    source  => "${sickbeard::base_dir}/sickbeard/init.${sickbeard::params::init_file}",
    mode    => '0755',
    require => Vcsrepo[$sickbeard::params::package_name],
  }
}
