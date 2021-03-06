class soundmodem::config inherits soundmodem {
  file { '/var/lib/alsa/asound.state':
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template('soundmodem/asound.state.erb'),
  }
  if !File['/etc/ax25'] {
    file { '/etc/ax25':
      ensure  => directory,
    }
  }
  file { '/etc/ax25/soundmodem.conf':
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template('soundmodem/soundmodem.conf.erb'),
  }
  file { '/etc/ax25/axports':
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template('soundmodem/axports.erb'),
  }
}
