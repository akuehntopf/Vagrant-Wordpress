class apache2::install {

    File {
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        require => Package['apache2'],
        notify  => Service['apache2']
    }

    package { 'apache2': 
        ensure => present,
    }

    service { 'apache2':
        ensure => running,
    }

}
