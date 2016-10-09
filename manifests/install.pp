class soundmodem::install inherits soundmodem {

  package { 'soundmodem':
    ensure => 'installed',
  }
}
