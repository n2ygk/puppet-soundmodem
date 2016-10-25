# == Class: soundmodem
#
# Install and configure Thomas Sailer's soundmodem userland driver http://gna.org/projects/soundmodem
#
# === Parameters
#
# Document parameters here.
#
# [*intf*]
#   Network interface name. Default 'sm0'
#   
# [*pttdev*]
#   Push-to-talk (transmit) device. Default '/dev/ttyS0'
#   
# [*callsign*]
#   Amateur radio AX.25 call sign.
#
# [*audio_type*]
#   Linux sound system. Must be 'alsa'. Placeholder for future types.
#
#
# [*alsa_dev*]
#   ALSA device. Default 'plughw:0,0'
#
# [*alsa_speaker_playback_volume*]
#   Transmit audio gain. Default 15.
#
# [*alsa_pcm_capture_volume*]
#   Receive audio gain. Default 10.
#
# 
# === Examples
#
#  class { 'soundmodem':
#    callsign                     => 'N0NE-15',
#    alsa_speaker_playback_volume => 12,
#  }
#
# === Authors
#
# Alan Crosswell <n2ygk@weca.org>
#
# === Copyright
#
# Copyright 2016 Alan Crosswell
#
class soundmodem (
  $intf                         = $soundmodem::params::intf,
  $pttdev                       = $soundmodem::params::pttdev,
  $callsign                     = $soundmodem::params::callsign,
  $audio_type                   = $soundmodem::params::audio_type,
  $alsa_dev                     = $soundmodem::params::alsa_dev,
  $alsa_speaker_playback_volume = $soundmodem::params::alsa_speaker_playback_volume,
  $alsa_pcm_capture_volume      = $soundmodem::params::alsa_pcm_capture_volume,
) inherits soundmodem::params {
  validate_string($intf)
  validate_absolute_path($pttdev)
  validate_string($callsign)
  validate_re($audio_type, '^alsa$', 'Only supported audio type is "alsa"')
  validate_string($alsa_dev)
  validate_integer($alsa_speaker_playback_volume)
  validate_integer($alsa_pcm_capture_volume)

  anchor { 'soundmodem::begin': } ->
  class { '::soundmodem::install': } ->
  class { '::soundmodem::config': } ~>
  class { '::soundmodem::service': } ->
  anchor { 'soundmodem::end': }
  
}
