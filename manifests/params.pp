class soundmodem::params {
  $intf   = 'sm0'
  $pttdev = '/dev/ttyS0'
  $callsign   = undef
  $audio_type  = 'alsa'
  $alsa_dev = 'plughw:0,0'
  $alsa_speaker_playback_volume = 15
  $alsa_pcm_capture_volume = 4096 # 0 dB
}
