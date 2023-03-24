package { 'python3-pip':
  ensure => installed,
}

exec { 'install-flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  creates => '/usr/local/bin/flask', # Change this if Flask gets installed to a different location
  require => Package['python3-pip'],
}

