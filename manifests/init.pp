# == Class: sickbeard
#
# Full description of class sickbeard here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class sickbeard (
  $git_repo = 'git://github.com/midgetspy/Sick-Beard.git',
  $base_dir = '/opt',
  $user = 'sickbeard',
  $group = 'sickbeard',

  $run_as = undef,
  $app_path = undef,
  $data_dir = undef,
  $pid_file = undef,
  $python_bin = undef,
  $extra_daemon_opts = undef,
  $extra_ssd_opts = undef,

) inherits sickbeard::params {

  # validate parameters here

  class { 'sickbeard::install': } ->
  class { 'sickbeard::config': } ~>
  class { 'sickbeard::service': } ->
  Class['sickbeard']
}
