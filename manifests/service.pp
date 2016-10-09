class soundmodem::service inherits soundmodem {
  service { 'soundmodem':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
