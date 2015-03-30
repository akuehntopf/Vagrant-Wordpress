# Vagrant-Wordpress

A simple Vagrant Box for Wordpress Development based on Ubuntu Trusty 64bit.
Featuring:

- Apache 2
- MySQL 5
- PHP 5
- Latest Wordpress from wordpress.org

## How to use

1) Install Virtualbox (https://www.virtualbox.org/)

2) Install Vagrant (https://www.vagrantup.com/)

3) Clone this repository or download zip file and change to folder

4) Open terminal and execute "vagrant up"

5) Point your browser to localhost:8080/wordpress to complete WP installation

6) ???

7) Profit!

## What if i am behind a proxy

1) Install Vagrant-Proxy plugin (execute "vagrant plugin install vagrant-proxyconf")

2) Open the Vagrantfile, find the proxy section and uncomment it. Enter your proxy host and port.

## What are the passwords?

Unless noted otherwise the password will always be "vagrant".
SSH into the box using the "vagrant" username and "vagrant" as password.
The box will also have a MySQL database "wordpress" with a user named "vagrant" and this password.

