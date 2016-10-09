# soundmodem

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with soundmodem](#setup)
    * [What soundmodem affects](#what-soundmodem-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with soundmodem](#beginning-with-soundmodem)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module manages Thomas Sailer's Amateur Radio AX.25 [soundmodem](http://gna.org/projects/soundmodem)


## Module Description

soundmodem installs, configures and runs the soundmodem. Your system must have a sound card of some
sort.

## Setup

### Beginning with soundmodem

To use soundmodem, connect your transceiver's receive and transmit audio lines
to your sound card (or USB sound controller), attach a serial PTT controller to 
a tty (or USB serial adapter) port. You will need to tweak your audio levels
based on the specifics of your transceiver and sound device.

## Usage

```
  class { 'soundmodem':
    call                         => 'N0NE-15',
    alsa_speaker_playback_volume => 12,
  }

```
## Reference

### Parameters
[*intf*]
  Network interface name. Default 'sm0'
  
[*pttdev*]
  Push-to-talk (transmit) device. Default '/dev/ttyS0'
  
[*call*]
  Amateur radio AX.25 call sign.

[*audio_type*]
  Linux sound system. Must be 'alsa'. Placeholder for future types.

[*alsa_dev*]
  ALSA device. Default 'plughw:0,0'

[*alsa_speaker_playback_volume*]
  Transmit audio gain. Default 15.

[*alsa_pcm_capture_volume*]
  Receive audio gain. Default 10.

## Limitations

This has only been tested on x86 hardware with Fedora and CentOS with one or
two sound cards and/or USB sound adapters.

## Development

Clone [here](https://github.com/n2ygk/puppet-soundmodem) and submit a PR!

