# Class: wordpress
# ===========================
#
# Full description of class wordpress here.
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
#    class { 'wordpress':
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
class wordpress {
exec {"apt-get update":
##command => "/usr/bin/apt-get update",
path => "/usr/bin/",
cwd => "/tmp/",
}
package {"apache2":
ensure => present,
}
service {"apache2":
ensure => true,
}
package {"mysql-server":
ensure => present,
}
service {"mysql":
ensure => true,
}
$wordpress_pkg = ['php','php-mysql', 'libapache2-mod-php', 'php-mcrypt', 'php-gd', 'libssh2-php']

package { $wordpress_pkg:
 ensure => present,
}
#exec {"mysqladmin -u root password 123@India && touch /var/flagmysqlroot":
#path => "/usr/bin/",
#cwd => "/tmp/",
#}
#exec {"wget http://wordpress.org/latest.tar.gz":
#path => "/usr/bin/",
#cwd => "/tmp/",
#}
#exec {"tar xzvf latest.tar.gz":
#path => "/usr/bin/",
#cwd => "/tmp/",
#}
#exec {"cp -R wordpress/* /var/www/html/":
#path => "/usr/bin/",
#cwd => "/tmp/",
#}

}
