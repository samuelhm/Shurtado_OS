<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](pipewire.md "Pipewire-1.6.6")

    Pipewire-1.6.6

-   [Next](sbc.md "SBC-2.2")

    SBC-2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# PulseAudio-17.0 {#pulseaudio-17.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to PulseAudio {#introduction-to-pulseaudio}

<span class="application">PulseAudio</span> is a sound system for POSIX OSes, meaning that it is a proxy for sound applications. It allows you to do advanced operations on your sound data as it passes between your application and your hardware. Operations such as transferring the audio to a different machine, changing the sample format or channel count, and mixing several sounds into one are easily achieved using a sound server.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/pulseaudio/releases/pulseaudio-17.0.tar.xz">https://www.freedesktop.org/software/pulseaudio/releases/pulseaudio-17.0.tar.xz</a>

-   Download MD5 sum: c4a3596a26ff4b9dcd0c394dd1d4f8ee

-   Download size: 1.5 MB

-   Estimated disk space required: 42 MB (with tests)

-   Estimated build time: 0.2 SBU (Using parallelism=4; add 0.2 SBU for tests)
</div>

### PulseAudio Dependencies

#### Required

<a class="xref" href="libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>

#### Recommended

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="speex.md" title="Speex-1.2.1">Speex-1.2.1</a>, <a class="xref" href="../general/perl-modules.md#perl-xml-parser" title="XML::Parser-2.59">XML-Parser-2.59</a>, and <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional

<a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for documentation), <a class="xref" href="../general/fftw.md" title="fftw-3.3.11">fftw-3.3.11</a>, <a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="libsamplerate.md" title="libsamplerate-0.2.2">libsamplerate-0.2.2</a>, <a class="xref" href="sbc.md" title="SBC-2.2">SBC-2.2</a> (Bluetooth support), <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://libcheck.github.io/check/">check</a> (for testing), <a class="ulink" href="https://jackaudio.org/">JACK</a>, <a class="ulink" href="https://0pointer.de/lennart/projects/libasyncns/">libasyncns</a>, <a class="ulink" href="https://www.lirc.org/">LIRC</a>, <a class="ulink" href="https://gstreamer.freedesktop.org/src/orc/">ORC</a>, <a class="ulink" href="https://sourceforge.net/projects/soxr/">soxr</a>, <a class="ulink" href="https://tdb.samba.org/">TDB</a>, and <a class="ulink" href="https://www.freedesktop.org/software/pulseaudio/webrtc-audio-processing/">WebRTC AudioProcessing</a>
</div>

<div class="installation" lang="en">
## Installation of PulseAudio {#installation-of-pulseaudio}

Install <span class="application">PulseAudio</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D database=gdbm    \
            -D doxygen=false    \
            -D bluez5=disabled  \
            -D tests=false      \
            ..                  &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. Only the shipped XML files are validated because other tests need <span class="application">Check</span> that we've removed from LFS.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

Running PulseAudio as a system-wide daemon is possible but not recommended. See <a class="ulink" href="https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/SystemWide/">https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/SystemWide/</a> for more information. While still as the <code class="systemitem">root</code> user, remove the <span class="application">D-Bus</span> configuration file for the system wide daemon to avoid creating unnecessary system users and groups:

```bash
rm /usr/share/dbus-1/system.d/pulseaudio-system.conf
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you have installed <a class="xref" href="wireplumber.md" title="Wireplumber-0.5.14">Wireplumber-0.5.14</a>, make sure to follow the commands to disable the Pulseaudio server to prevent conflicts with Pipewire.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D bluez5=disabled`*: This switch prevents a runtime error if <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> and <a class="xref" href="sbc.md" title="SBC-2.2">SBC-2.2</a> are both installed but <a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a> is not installed. Remove this if you have installed all three packages.

*`-D doxygen=false`*: This allows the package to compile if <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> is not installed. Remove this if you have installed this and wish to build the documentation.

*`-D tests=false`*: This allows the package to compile if <span class="application">Check</span> is not installed. We've removed <span class="application">Check</span> from LFS.

<code class="option">-D man=false</code>: This option disables generating man pages. Use this option if you have not installed <a class="xref" href="../general/perl-modules.md#perl-xml-parser" title="XML::Parser-2.59">XML-Parser-2.59</a>.
</div>

<div class="configuration" lang="en">
## Configuring PulseAudio {#configuring-pulseaudio}

<div class="sect3" lang="en">
### Config Files {#config-files}

There are system wide configuration files: <code class="filename">/etc/pulse/daemon.conf</code>, <code class="filename">/etc/pulse/client.conf</code>, <code class="filename">/etc/pulse/default.pa</code>, and user configuration files with the same names in <code class="filename">~/.config/pulse</code>. User configuration files take precedence over system wide ones.
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

You may have to configure the audio system. You can start <span class="application">pulseaudio</span> in command line mode using <span class="command"><strong>pulseaudio -C</strong></span> and then list various information and change settings. See <span class="command"><strong>man pulse-cli-syntax</strong></span>.

If <span class="application">pulseaudio</span> was working but you no-longer have sound, after checking for hardware issues (speakers or headphones not connected, external amplifier not connected) you may need to fix it.

One suggestion is to close the application, such as <span class="application">firefox</span> where sound has stopped working, then run: <span class="command"><strong>pactl list short sinks</strong></span> followed by: <span class="command"><strong>pacmd set-default-sink \<sink #\></strong></span> and then restart the application.

If that does not work, a more drastic approach often works. After closing the application, close pulseaudio, either using <span class="command"><strong>pulseaudio --kill</strong></span> or, if that fails, <span class="command"><strong>killall -KILL pulseaudio</strong></span> and then <span class="command"><strong>rm -rf \~/.config/pulse/\</strong>*</span> (and perhaps also <span class="command"><strong>rm -rf \~/.pulse/\</strong>*</span> if you have used a very old version of pulse on this machine), then run <span class="command"><strong>pulseaudio --verbose</strong></span> to restart it. If the daemon starts, restart the application. See <span class="command"><strong>man pulseaudio</strong></span> for more options.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pacat, pacmd, pactl, padsp, pamon (symlink to pacat), paplay (symlink to pacat), parec (symlink to pacat), parecord (symlink to pacat), qpaeq, pasuspender, pax11publish, pulseaudio, and start-pulseaudio-x11</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpulse.so, libpulse-mainloop-glib.so, libpulse-simple.so, libpulsecommon-17.0.so, libpulsecore-17.0.so, and libpulsedsp.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/pulse, /usr/include/pulse, /usr/lib/cmake/PulseAudio, /usr/lib/{pulseaudio,pulse-17.0}, /usr/libexec/pulse, and /usr/share/pulseaudio</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="pacat"></a><span class="command"><span class="term"><strong>pacat</strong></span></span>                                 plays back or records raw or encoded audio streams on a <span class="application">PulseAudio</span> sound server
  <a id="pacmd"></a><span class="command"><span class="term"><strong>pacmd</strong></span></span>                                 is a tool used to reconfigure a <span class="application">PulseAudio</span> sound server during runtime
  <a id="pactl"></a><span class="command"><span class="term"><strong>pactl</strong></span></span>                                 is used to control a running <span class="application">PulseAudio</span> sound server
  <a id="padsp"></a><span class="command"><span class="term"><strong>padsp</strong></span></span>                                 is the <span class="application">PulseAudio</span> OSS Wrapper
  <a id="pamon"></a><span class="command"><span class="term"><strong>pamon</strong></span></span>                                 is a symbolic link to <span class="command"><strong>pacat</strong></span>
  <a id="paplay"></a><span class="command"><span class="term"><strong>paplay</strong></span></span>                               is used to play audio files on a <span class="application">PulseAudio</span> sound server
  <a id="parec"></a><span class="command"><span class="term"><strong>parec</strong></span></span>                                 is a symbolic link to <span class="command"><strong>pacat</strong></span>
  <a id="parecord"></a><span class="command"><span class="term"><strong>parecord</strong></span></span>                           is a symbolic link to <span class="command"><strong>pacat</strong></span>
  <a id="pasuspender"></a><span class="command"><span class="term"><strong>pasuspender</strong></span></span>                     is a tool that can be used to tell a local <span class="application">PulseAudio</span> sound server to temporarily suspend access to the audio devices, which allows other applications to access them directly
  <a id="pax11publish"></a><span class="command"><span class="term"><strong>pax11publish</strong></span></span>                   is the <span class="application">PulseAudio</span> X11 Credential Utility
  <a id="pa-info"></a><span class="command"><span class="term"><strong>pa-info</strong></span></span>                             is a shell script that prints various information relating to the <span class="application">Pulseaudio</span> server currently in use
  <a id="pulseaudio-prog"></a><span class="command"><span class="term"><strong>pulseaudio</strong></span></span>                  is a networked low-latency sound server for Linux
  <a id="qpaeq"></a><span class="command"><span class="term"><strong>qpaeq</strong></span></span>                                 is an equalizer interface for <span class="application">PulseAudio</span> equalizer sinks (Requires <a class="xref" href="../general/fftw.md" title="fftw-3.3.11">fftw-3.3.11</a> at build time)
  <a id="start-pulseaudio-x11"></a><span class="command"><span class="term"><strong>start-pulseaudio-x11</strong></span></span>   starts <span class="application">PulseAudio</span> and registers it to the X11 session manager
  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pipewire.md "Pipewire-1.6.6")

    Pipewire-1.6.6

-   [Next](sbc.md "SBC-2.2")

    SBC-2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
