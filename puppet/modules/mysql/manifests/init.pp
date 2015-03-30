class mysql::install {
    $bin = '/usr/bin:/usr/sbin'

    if !defined(Package['mysql-server']) {
        package { 'mysql-server':
            ensure => 'present',
        }
    }

    if !defined(Package['mysql-client']) {
        package { 'mysql-client':
            ensure => 'present',
        }
    }

    service { 'mysql':
        alias => 'mysql::mysql',
        enable => 'true',
        ensure => 'running',
        require => Package['mysql-server'],
    }

    exec { 'mysql::set_root_password':
        unless => "mysqladmin -uroot -pvagrant status",
        command => "mysqladmin -uroot password vagrant",
        path => $bin,
        require => Service['mysql::mysql'],
    }
}
