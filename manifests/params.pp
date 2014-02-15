# Class: puppet::params
#
class puppet::params {

  $logdir = '/var/log/puppet'

  case $::operatingsystem {
    'Archlinux': {
      $puppetmasterpkg = 'puppet'
      $puppetagentpkg = 'puppet'
      $sysconfig = true
      $rundir = '/var/run/puppet'
    }
    'Fedora',
    'RedHat',
    'CentOS': {
      $puppetmasterpkg = 'puppet-server'
      $puppetagentpkg = 'puppet'
      $sysconfig = true
      $rundir = '/var/run/puppet'
    }
    'Gentoo': {
      $puppetmasterpkg = 'puppet'
      $puppetagentpkg = 'puppet'
      $sysconfig = false
      $rundir = '/run/puppet'
    }
    'Debian': {
      $puppetmasterpkg = 'puppetmaster'
      $puppetagentpkg = 'puppet'
      $sysconfig = false
      $rundir = '/run/puppet'
    }
    default: {
      $puppetmasterpkg = 'puppet-server'
      $puppetagentpkg = 'puppet'
      $sysconfig = false
      $rundir = '/var/run/puppet'
    }
  }
}

