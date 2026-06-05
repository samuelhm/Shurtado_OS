::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-plugins.md "alsa-plugins-1.2.12"){accesskey="p"}

    alsa-plugins-1.2.12

-   [Next](alsa-tools.md "alsa-tools-1.2.15"){accesskey="n"}

    alsa-tools-1.2.15

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#alsa-utils}alsa-utils-1.2.15.2 {#alsa-utils-1.2.15.2 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ALSA Utilities {#introduction-to-alsa-utilities .sect2}

The [ALSA Utilities]{.application} package contains various utilities which are useful for controlling your sound card.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.alsa-project.org/files/pub/utils/alsa-utils-1.2.15.2.tar.bz2](https://www.alsa-project.org/files/pub/utils/alsa-utils-1.2.15.2.tar.bz2){.ulink}

-   Download MD5 sum: 7bf18ad61bda2bdd16c5a2b2f9d00456

-   Download size: 1.6 MB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.2 SBU
:::

### ALSA Utilities Dependencies

#### Required

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}

#### Optional

[docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref}, [fftw-3.3.11](../general/fftw.md "fftw-3.3.11"){.xref}, [libsamplerate-0.2.2](libsamplerate.md "libsamplerate-0.2.2"){.xref}, [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}, and [Dialog](https://hightek.org/projects/dialog/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of ALSA Utilities {#installation-of-alsa-utilities .sect2}

Install [ALSA Utilities]{.application} by running the following commands:

``` userinput
./configure --disable-alsaconf \
            --disable-bat      \
            --disable-xmlto    \
            --with-curses=ncursesw &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-alsaconf`*: This switch disables building the [**alsaconf**]{.command} configuration tool which is incompatible with [Udev]{.application}.

*`--disable-xmlto`*: Omit this switch if you have installed [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} and wish to regenerate the man pages.

*`--disable-bat`*: Omit this switch if you have installed [fftw-3.3.11](../general/fftw.md "fftw-3.3.11"){.xref} and wish to install the Basic Audio Tester (BAT).

*`--with-curses=ncursesw`*: This switch forces the use of wide-character ncurses libraries.
:::

::::: {.configuration lang="en"}
## []{#alsa-utils-config-sect}Configuring ALSA Utilities {#configuring-alsa-utilities .sect2}

::: {.sect3 lang="en"}
### []{#alsa-utils-config}Config Files {#config-files .sect3}

`/var/lib/alsa/asound.state`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

As the `root`{.systemitem} user, apply the default setting for the sound card. Note that this command may return an exit code of 99 although the card is correctly initialized:

``` userinput
alsactl init
```

Note that all channels of your sound card may be muted by default. You can use the [**alsamixer**]{.command} program to change this. Use [**speaker-test**]{.command} to check that your settings have been applied correctly. You should hear [“[pink noise]{.quote}”]{.quote} on your speakers.

The `alsactl`{.filename} program is normally run from a standard [udev]{.application} rule. The first time it is run, it will complain that there is no state in `/var/lib/alsa/asound.state`{.filename}. You can prevent this by running the following command as the `root`{.systemitem} user:

``` root
alsactl -L store
```

The volume settings should be restored from the saved state by [Udev]{.application} when the device is detected (during boot or when plugged in for USB devices).

On systems which have multiple sound cards, you may need to adjust the default audio device so that you can get output from your speakers. To set the default device, first check the `/proc/asound/cards`{.filename} file to determine which number you need to set. After you know this information, set the default card with the following command as the `root`{.systemitem} user:

``` userinput
cat > /etc/asound.conf << "EOF"
# Begin /etc/asound.conf

defaults.pcm.card 1
defaults.ctl.card 1

# End /etc/asound.conf
EOF
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [aconnect, alsactl, alsaloop, alsamixer, alsatplg, alsaucm, alsa-info.sh, amidi, amixer, aplay, aplaymidi, aplaymidi2, arecord (symlink), arecordmidi, arecordmidi2, aseqdump, aseqnet, aseqsend, axfer, iecset, nhlt-dmic-info, and speaker-test]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/alsa-topology, /usr/share/sounds/alsa, and /var/lib/alsa]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#aconnect}[[**aconnect**]{.command}]{.term}               is a utility for connecting and disconnecting two existing ports in the ALSA sequencer system
  []{#alsactl}[[**alsactl**]{.command}]{.term}                 is used to control advanced settings for ALSA sound card drivers. Use this if alsamixer cannot utilize all of your sound card's features
  []{#alsaloop}[[**alsaloop**]{.command}]{.term}               allows creation of a PCM loopback between a PCM capture device and a PCM playback device
  []{#alsamixer}[[**alsamixer**]{.command}]{.term}             is an Ncurses based mixer program for use with the ALSA sound card drivers
  []{#alsatplg}[[**alsatplg**]{.command}]{.term}               is a utility used to compile topology configuration files into binary files for kernel drivers
  []{#alsaucm}[[**alsaucm**]{.command}]{.term}                 allows applications to access the hardware in an abstracted manner
  []{#amidi}[[**amidi**]{.command}]{.term}                     is used to read from and write to ALSA RawMIDI ports
  []{#amixer}[[**amixer**]{.command}]{.term}                   allows command-line control of the mixers for the ALSA sound card drivers
  []{#aplay}[[**aplay**]{.command}]{.term}                     is a command-line soundfile player for the ALSA sound card drivers
  []{#aplaymidi}[[**aplaymidi**]{.command}]{.term}             is a command-line utility that plays the specified MIDI file(s) to one or more ALSA sequencer ports
  []{#aplaymidi2}[[**aplaymidi2**]{.command}]{.term}           is a command-line utility that plays the specified MIDI clip file(s) to one or more ALSA sequencer ports
  []{#arecord}[[**arecord**]{.command}]{.term}                 is a command-line soundfile recorder for the ALSA sound card drivers
  []{#arecordmidi}[[**arecordmidi**]{.command}]{.term}         is a command-line utility that records a standard MIDI file from one or more ALSA sequencer ports
  []{#arecordmidi2}[[**arecordmidi2**]{.command}]{.term}       is a command-line utility that records a MIDI Clip file from one or more ALSA sequencer ports
  []{#aseqdump}[[**aseqdump**]{.command}]{.term}               is a command-line utility that prints the sequencer events it receives as text
  []{#aseqnet}[[**aseqnet**]{.command}]{.term}                 is an ALSA sequencer client which sends and receives event packets over a network
  []{#aseqsend}[[**aseqsend**]{.command}]{.term}               is a command-line utility to send arbitrary messages to ALSA MIDI sequencer ports
  []{#axfer}[[**axfer**]{.command}]{.term}                     is a command-line recorder and player used to transfer audio frames between sound devices and files
  []{#iecset}[[**iecset**]{.command}]{.term}                   is a small utility to set or dump the IEC958 (or so-called [“[S/PDIF]{.quote}”]{.quote}) status bits of the specified sound card via the ALSA control API
  []{#nhlt-dmic-info}[[**nhlt-dmic-info**]{.command}]{.term}   is a command-line utility that dumps microphone array information from the ACPI NHLT table
  []{#speaker-test}[[**speaker-test**]{.command}]{.term}       is a command-line speaker test tone generator for ALSA
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](alsa-plugins.md "alsa-plugins-1.2.12"){accesskey="p"}

    alsa-plugins-1.2.12

-   [Next](alsa-tools.md "alsa-tools-1.2.15"){accesskey="n"}

    alsa-tools-1.2.15

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
