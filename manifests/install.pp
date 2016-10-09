class soundmodem::install inherits soundmodem {

  Package { ensure => 'installed' }
  $pkgs = ['soundmodem','alsa-lib','alsa-utils']
  package { $pkgs: }
}
