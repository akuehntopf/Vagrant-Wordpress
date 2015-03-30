exec { 'apt-update':
    command     => 'apt-get update',
    path        => '/usr/bin'
}

Exec { path => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/', '/usr/local/bin/', '/usr/local/sbin/'] }

class { 'apache2::install': }
class { 'php5::install': }
class { 'mysql::install': }
class { 'wordpress::install': }
