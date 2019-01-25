# Class: wordpresstest
# ===========================
#
# Full description of class wordpresstest here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'wordpresstest':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2019 Your name here, unless otherwise noted.
#
class wordpresstest {

exec { "apt-get update":
  path => "/usr/bin/",
}
package {"apache2":
ensure => present,
}
service { "apache2":
    ensure => "running",
    enable => "true",
    require => Package["apache2"],
}
package {"mysql-server":
ensure => present,
}
service { "mysql":
    ensure => "running",
    enable => "true",
    require => Package["mysql-server"],
}

$multipack = ['php','php-mysql','libapache2-mod-php','php-mcrypt','php-gd','php-ssh2']
package { 
$multipack : ensure => installed,

}
exec { "My Sql Commands":
    command => 'mysqladmin -u root password 123@India && touch /var/flagmysqlroot',
    path => "/usr/bin/",

}
exec { 'cal to url':
    command => 'wget http://wordpress.org/latest.tar.gz',
     path => "/usr/bin/",
}
exec { 'tar' :
    command => 'tar xzvf latest.tar.gz',
    path => "/bin/",
}
exec { 'copy':
    command => 'cp -R wordpress/* /var/www/html/',
    path => "/bin/",
    
}


}
