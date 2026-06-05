<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-plugins.md "alsa-plugins-1.2.12")

    alsa-plugins-1.2.12

-   [Next](alsa-tools.md "alsa-tools-1.2.15")

    alsa-tools-1.2.15

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# alsa-utils-1.2.15.2 {#alsa-utils-1.2.15.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ALSA Utilities {#introduction-to-alsa-utilities}

The <span class="application">ALSA Utilities</span> package contains various utilities which are useful for controlling your sound card.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.alsa-project.org/files/pub/utils/alsa-utils-1.2.15.2.tar.bz2">https://www.alsa-project.org/files/pub/utils/alsa-utils-1.2.15.2.tar.bz2</a>

-   Download MD5 sum: 7bf18ad61bda2bdd16c5a2b2f9d00456

-   Download size: 1.6 MB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.2 SBU
</div>

### ALSA Utilities Dependencies

#### Required

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>

#### Optional

<a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>, <a class="xref" href="../general/fftw.md" title="fftw-3.3.11">fftw-3.3.11</a>, <a class="xref" href="libsamplerate.md" title="libsamplerate-0.2.2">libsamplerate-0.2.2</a>, <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>, and <a class="ulink" href="https://hightek.org/projects/dialog/">Dialog</a>
</div>

<div class="installation" lang="en">
## Installation of ALSA Utilities {#installation-of-alsa-utilities}

Install <span class="application">ALSA Utilities</span> by running the following commands:

```bash
./configure --disable-alsaconf \
            --disable-bat      \
            --disable-xmlto    \
            --with-curses=ncursesw &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-alsaconf`*: This switch disables building the <span class="command"><strong>alsaconf</strong></span> configuration tool which is incompatible with <span class="application">Udev</span>.

*`--disable-xmlto`*: Omit this switch if you have installed <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> and wish to regenerate the man pages.

*`--disable-bat`*: Omit this switch if you have installed <a class="xref" href="../general/fftw.md" title="fftw-3.3.11">fftw-3.3.11</a> and wish to install the Basic Audio Tester (BAT).

*`--with-curses=ncursesw`*: This switch forces the use of wide-character ncurses libraries.
</div>

<div class="configuration" lang="en">
## Configuring ALSA Utilities {#configuring-alsa-utilities}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/var/lib/alsa/asound.state</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

As the <code class="systemitem">root</code> user, apply the default setting for the sound card. Note that this command may return an exit code of 99 although the card is correctly initialized:

```bash
alsactl init
```

Note that all channels of your sound card may be muted by default. You can use the <span class="command"><strong>alsamixer</strong></span> program to change this. Use <span class="command"><strong>speaker-test</strong></span> to check that your settings have been applied correctly. You should hear <span class="quote">“<span class="quote">pink noise</span>”</span> on your speakers.

The <code class="filename">alsactl</code> program is normally run from a standard <span class="application">udev</span> rule. The first time it is run, it will complain that there is no state in <code class="filename">/var/lib/alsa/asound.state</code>. You can prevent this by running the following command as the <code class="systemitem">root</code> user:

```bash
alsactl -L store
```

The volume settings should be restored from the saved state by <span class="application">Udev</span> when the device is detected (during boot or when plugged in for USB devices).

On systems which have multiple sound cards, you may need to adjust the default audio device so that you can get output from your speakers. To set the default device, first check the <code class="filename">/proc/asound/cards</code> file to determine which number you need to set. After you know this information, set the default card with the following command as the <code class="systemitem">root</code> user:

```bash
cat > /etc/asound.conf << "EOF"
# Begin /etc/asound.conf

defaults.pcm.card 1
defaults.ctl.card 1

# End /etc/asound.conf
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">aconnect, alsactl, alsaloop, alsamixer, alsatplg, alsaucm, alsa-info.sh, amidi, amixer, aplay, aplaymidi, aplaymidi2, arecord (symlink), arecordmidi, arecordmidi2, aseqdump, aseqnet, aseqsend, axfer, iecset, nhlt-dmic-info, and speaker-test</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/alsa-topology, /usr/share/sounds/alsa, and /var/lib/alsa</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="aconnect"></a><span class="command"><span class="term"><strong>aconnect</strong></span></span>               is a utility for connecting and disconnecting two existing ports in the ALSA sequencer system
  <a id="alsactl"></a><span class="command"><span class="term"><strong>alsactl</strong></span></span>                 is used to control advanced settings for ALSA sound card drivers. Use this if alsamixer cannot utilize all of your sound card's features
  <a id="alsaloop"></a><span class="command"><span class="term"><strong>alsaloop</strong></span></span>               allows creation of a PCM loopback between a PCM capture device and a PCM playback device
  <a id="alsamixer"></a><span class="command"><span class="term"><strong>alsamixer</strong></span></span>             is an Ncurses based mixer program for use with the ALSA sound card drivers
  <a id="alsatplg"></a><span class="command"><span class="term"><strong>alsatplg</strong></span></span>               is a utility used to compile topology configuration files into binary files for kernel drivers
  <a id="alsaucm"></a><span class="command"><span class="term"><strong>alsaucm</strong></span></span>                 allows applications to access the hardware in an abstracted manner
  <a id="amidi"></a><span class="command"><span class="term"><strong>amidi</strong></span></span>                     is used to read from and write to ALSA RawMIDI ports
  <a id="amixer"></a><span class="command"><span class="term"><strong>amixer</strong></span></span>                   allows command-line control of the mixers for the ALSA sound card drivers
  <a id="aplay"></a><span class="command"><span class="term"><strong>aplay</strong></span></span>                     is a command-line soundfile player for the ALSA sound card drivers
  <a id="aplaymidi"></a><span class="command"><span class="term"><strong>aplaymidi</strong></span></span>             is a command-line utility that plays the specified MIDI file(s) to one or more ALSA sequencer ports
  <a id="aplaymidi2"></a><span class="command"><span class="term"><strong>aplaymidi2</strong></span></span>           is a command-line utility that plays the specified MIDI clip file(s) to one or more ALSA sequencer ports
  <a id="arecord"></a><span class="command"><span class="term"><strong>arecord</strong></span></span>                 is a command-line soundfile recorder for the ALSA sound card drivers
  <a id="arecordmidi"></a><span class="command"><span class="term"><strong>arecordmidi</strong></span></span>         is a command-line utility that records a standard MIDI file from one or more ALSA sequencer ports
  <a id="arecordmidi2"></a><span class="command"><span class="term"><strong>arecordmidi2</strong></span></span>       is a command-line utility that records a MIDI Clip file from one or more ALSA sequencer ports
  <a id="aseqdump"></a><span class="command"><span class="term"><strong>aseqdump</strong></span></span>               is a command-line utility that prints the sequencer events it receives as text
  <a id="aseqnet"></a><span class="command"><span class="term"><strong>aseqnet</strong></span></span>                 is an ALSA sequencer client which sends and receives event packets over a network
  <a id="aseqsend"></a><span class="command"><span class="term"><strong>aseqsend</strong></span></span>               is a command-line utility to send arbitrary messages to ALSA MIDI sequencer ports
  <a id="axfer"></a><span class="command"><span class="term"><strong>axfer</strong></span></span>                     is a command-line recorder and player used to transfer audio frames between sound devices and files
  <a id="iecset"></a><span class="command"><span class="term"><strong>iecset</strong></span></span>                   is a small utility to set or dump the IEC958 (or so-called <span class="quote">“<span class="quote">S/PDIF</span>”</span>) status bits of the specified sound card via the ALSA control API
  <a id="nhlt-dmic-info"></a><span class="command"><span class="term"><strong>nhlt-dmic-info</strong></span></span>   is a command-line utility that dumps microphone array information from the ACPI NHLT table
  <a id="speaker-test"></a><span class="command"><span class="term"><strong>speaker-test</strong></span></span>       is a command-line speaker test tone generator for ALSA
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](alsa-plugins.md "alsa-plugins-1.2.12")

    alsa-plugins-1.2.12

-   [Next](alsa-tools.md "alsa-tools-1.2.15")

    alsa-tools-1.2.15

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
