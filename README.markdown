#sickbeard

[![Build Status](https://travis-ci.org/DexterTheDragon/puppet-sickbeard.png?branch=master)](https://travis-ci.org/DexterTheDragon/puppet-sickbeard)

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with [sickbeard]](#setup)
    * [What [sickbeard] affects](#what-sickbeard-affects)
    * [Beginning with [sickbeard]](#beginning-with-sickbeard)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

Puppet module for installing sickbeard

##Module Description

Installs sickbeard from source, and configures it to run

##Setup

###What [sickbeard] affects

* Installs sickbeard from git
* Creates the init file
* Creates the `/etc/default/sickbeard` file


###Beginning with [sickbeard]

```
class { 'sickbeard': }
```

##Usage

Available parameters:

```
class { 'sickbeard':
  git_repo          => # repo location, should never need to change
  base_dir          => # location to install to, default: /opt
  user              => # owner of sickbeard files, default: sickbeard
  group             => # group of sickbeard files, default: sickbeard
  # /etc/default/sickbeard settings
  run_as            => # user to run sickbeard as, default: sickbeard
  app_path          => # location of SickBeard.py, default: /opt/sickbeard
  data_dir          => # location of sickbeard.db, cache, logs, default: /opt/sickbeard
  pid_file          => # location of sickbeard.pid, default: /var/run/sickbeard/sickbeard.pid
  python_bin        => # location of the python binary, default: /usr/bin/python
  extra_daemon_opts => # extra cli option for sickbeard, i.e. " --config_file=/home/sickbeard/config.ini"
  extra_ssd_opts    => # extra start-stop-daemon option like " --group=users"
}
```

##Reference

Classes
* sickbeard

##Limitations

Only tested on Ubuntu currently, but should work on RedHat

##Development

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit your changes
* Send me a pull request. Bonus points for topic branches.

##Release Notes

See the [CHANGELOG](https://github.com/DexterTheDragon/puppet-sickbeard/blob/master/CHANGELOG)
