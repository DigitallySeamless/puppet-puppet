# Class: puppet::params
#
class puppet::params {

  $logdir = '/var/log/puppet'

  case $::operatingsystem {
    'Archlinux',
    'Fedora',
    'RedHat',
    'CentOS': {
      $sysconfig = true
      $rundir = '/var/run/puppet'
    }
    'Gentoo': {
      $sysconfig = false
      $rundir = '/run/puppet'
    }
    default: {
      $sysconfig = false
      $rundir = '/var/run/puppet'
    }
  }
}

