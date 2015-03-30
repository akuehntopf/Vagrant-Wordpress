class wordpress::install {

    exec { 'create-database':
        unless => '/usr/bin/mysql -u root -pvagrant wordpress',
        command => '/usr/bin/mysql -u root -pvagrant --execute=\'create database wordpress\'',
    }

    exec { 'create-user':
        unless => '/usr/bin/mysql -u wordpress -pwordpress wordpress',
        command => '/usr/bin/mysql -u root -pvagrant --execute="GRANT ALL PRIVILEGES ON wordpress.* TO \'wordpress\'@\'localhost\' IDENTIFIED BY \'wordpress\'"',
    }

    exec { 'download-wordpress':
        command => '/usr/bin/wget http://wordpress.org/latest.tar.gz',
        cwd => '/var/www/html',
        creates => '/var/www/html/latest.tar.gz'
    }

    exec { 'untar-wordpress':
        cwd => '/var/www/html/',
        command => '/bin/tar xzvf /var/www/html/latest.tar.gz',
        require => Exec['download-wordpress'],
        creates => '/var/www/html/wordpress',
    }

}
