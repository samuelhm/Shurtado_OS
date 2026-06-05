::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](pipewire.md "Pipewire-1.6.6"){accesskey="p"}

    Pipewire-1.6.6

-   [Next](sbc.md "SBC-2.2"){accesskey="n"}

    SBC-2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pulseaudio}PulseAudio-17.0 {#pulseaudio-17.0 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to PulseAudio {#introduction-to-pulseaudio .sect2}

[PulseAudio]{.application} is a sound system for POSIX OSes, meaning that it is a proxy for sound applications. It allows you to do advanced operations on your sound data as it passes between your application and your hardware. Operations such as transferring the audio to a different machine, changing the sample format or channel count, and mixing several sounds into one are easily achieved using a sound server.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/pulseaudio/releases/pulseaudio-17.0.tar.xz](https://www.freedesktop.org/software/pulseaudio/releases/pulseaudio-17.0.tar.xz){.ulink}

-   Download MD5 sum: c4a3596a26ff4b9dcd0c394dd1d4f8ee

-   Download size: 1.5 MB

-   Estimated disk space required: 42 MB (with tests)

-   Estimated build time: 0.2 SBU (Using parallelism=4; add 0.2 SBU for tests)
:::

### PulseAudio Dependencies

#### Required

[libsndfile-1.2.2](libsndfile.md "libsndfile-1.2.2"){.xref}

#### Recommended

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, [Speex-1.2.1](speex.md "Speex-1.2.1"){.xref}, [XML-Parser-2.59](../general/perl-modules.md#perl-xml-parser "XML::Parser-2.59"){.xref}, and [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}

#### Optional

[Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (for documentation), [fftw-3.3.11](../general/fftw.md "fftw-3.3.11"){.xref}, [gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libsamplerate-0.2.2](libsamplerate.md "libsamplerate-0.2.2"){.xref}, [SBC-2.2](sbc.md "SBC-2.2"){.xref} (Bluetooth support), [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [check](https://libcheck.github.io/check/){.ulink} (for testing), [JACK](https://jackaudio.org/){.ulink}, [libasyncns](https://0pointer.de/lennart/projects/libasyncns/){.ulink}, [LIRC](https://www.lirc.org/){.ulink}, [ORC](https://gstreamer.freedesktop.org/src/orc/){.ulink}, [soxr](https://sourceforge.net/projects/soxr/){.ulink}, [TDB](https://tdb.samba.org/){.ulink}, and [WebRTC AudioProcessing](https://www.freedesktop.org/software/pulseaudio/webrtc-audio-processing/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of PulseAudio {#installation-of-pulseaudio .sect2}

Install [PulseAudio]{.application} by running the following commands:

``` userinput
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

To test the results, issue: [**ninja test**]{.command}. Only the shipped XML files are validated because other tests need [Check]{.application} that we've removed from LFS.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

Running PulseAudio as a system-wide daemon is possible but not recommended. See [https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/SystemWide/](https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/SystemWide/){.ulink} for more information. While still as the `root`{.systemitem} user, remove the [D-Bus]{.application} configuration file for the system wide daemon to avoid creating unnecessary system users and groups:

``` root
rm /usr/share/dbus-1/system.d/pulseaudio-system.conf
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you have installed [Wireplumber-0.5.14](wireplumber.md "Wireplumber-0.5.14"){.xref}, make sure to follow the commands to disable the Pulseaudio server to prevent conflicts with Pipewire.
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D bluez5=disabled`*: This switch prevents a runtime error if [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref} and [SBC-2.2](sbc.md "SBC-2.2"){.xref} are both installed but [BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref} is not installed. Remove this if you have installed all three packages.

*`-D doxygen=false`*: This allows the package to compile if [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} is not installed. Remove this if you have installed this and wish to build the documentation.

*`-D tests=false`*: This allows the package to compile if [Check]{.application} is not installed. We've removed [Check]{.application} from LFS.

`-D man=false`{.option}: This option disables generating man pages. Use this option if you have not installed [XML-Parser-2.59](../general/perl-modules.md#perl-xml-parser "XML::Parser-2.59"){.xref}.
:::

::::: {.configuration lang="en"}
## Configuring PulseAudio {#configuring-pulseaudio .sect2}

::: {.sect3 lang="en"}
### []{#pulseaudio-config}Config Files {#config-files .sect3}

There are system wide configuration files: `/etc/pulse/daemon.conf`{.filename}, `/etc/pulse/client.conf`{.filename}, `/etc/pulse/default.pa`{.filename}, and user configuration files with the same names in `~/.config/pulse`{.filename}. User configuration files take precedence over system wide ones.
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

You may have to configure the audio system. You can start [pulseaudio]{.application} in command line mode using [**pulseaudio -C**]{.command} and then list various information and change settings. See [**man pulse-cli-syntax**]{.command}.

If [pulseaudio]{.application} was working but you no-longer have sound, after checking for hardware issues (speakers or headphones not connected, external amplifier not connected) you may need to fix it.

One suggestion is to close the application, such as [firefox]{.application} where sound has stopped working, then run: [**pactl list short sinks**]{.command} followed by: [**pacmd set-default-sink \<sink #\>**]{.command} and then restart the application.

If that does not work, a more drastic approach often works. After closing the application, close pulseaudio, either using [**pulseaudio --kill**]{.command} or, if that fails, [**killall -KILL pulseaudio**]{.command} and then [**rm -rf \~/.config/pulse/\***]{.command} (and perhaps also [**rm -rf \~/.pulse/\***]{.command} if you have used a very old version of pulse on this machine), then run [**pulseaudio --verbose**]{.command} to restart it. If the daemon starts, restart the application. See [**man pulseaudio**]{.command} for more options.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pacat, pacmd, pactl, padsp, pamon (symlink to pacat), paplay (symlink to pacat), parec (symlink to pacat), parecord (symlink to pacat), qpaeq, pasuspender, pax11publish, pulseaudio, and start-pulseaudio-x11]{.segbody}
:::

::: seg
**Installed Libraries:** [libpulse.so, libpulse-mainloop-glib.so, libpulse-simple.so, libpulsecommon-17.0.so, libpulsecore-17.0.so, and libpulsedsp.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/pulse, /usr/include/pulse, /usr/lib/cmake/PulseAudio, /usr/lib/{pulseaudio,pulse-17.0}, /usr/libexec/pulse, and /usr/share/pulseaudio]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#pacat}[[**pacat**]{.command}]{.term}                                 plays back or records raw or encoded audio streams on a [PulseAudio]{.application} sound server
  []{#pacmd}[[**pacmd**]{.command}]{.term}                                 is a tool used to reconfigure a [PulseAudio]{.application} sound server during runtime
  []{#pactl}[[**pactl**]{.command}]{.term}                                 is used to control a running [PulseAudio]{.application} sound server
  []{#padsp}[[**padsp**]{.command}]{.term}                                 is the [PulseAudio]{.application} OSS Wrapper
  []{#pamon}[[**pamon**]{.command}]{.term}                                 is a symbolic link to [**pacat**]{.command}
  []{#paplay}[[**paplay**]{.command}]{.term}                               is used to play audio files on a [PulseAudio]{.application} sound server
  []{#parec}[[**parec**]{.command}]{.term}                                 is a symbolic link to [**pacat**]{.command}
  []{#parecord}[[**parecord**]{.command}]{.term}                           is a symbolic link to [**pacat**]{.command}
  []{#pasuspender}[[**pasuspender**]{.command}]{.term}                     is a tool that can be used to tell a local [PulseAudio]{.application} sound server to temporarily suspend access to the audio devices, which allows other applications to access them directly
  []{#pax11publish}[[**pax11publish**]{.command}]{.term}                   is the [PulseAudio]{.application} X11 Credential Utility
  []{#pa-info}[[**pa-info**]{.command}]{.term}                             is a shell script that prints various information relating to the [Pulseaudio]{.application} server currently in use
  []{#pulseaudio-prog}[[**pulseaudio**]{.command}]{.term}                  is a networked low-latency sound server for Linux
  []{#qpaeq}[[**qpaeq**]{.command}]{.term}                                 is an equalizer interface for [PulseAudio]{.application} equalizer sinks (Requires [fftw-3.3.11](../general/fftw.md "fftw-3.3.11"){.xref} at build time)
  []{#start-pulseaudio-x11}[[**start-pulseaudio-x11**]{.command}]{.term}   starts [PulseAudio]{.application} and registers it to the X11 session manager
  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](pipewire.md "Pipewire-1.6.6"){accesskey="p"}

    Pipewire-1.6.6

-   [Next](sbc.md "SBC-2.2"){accesskey="n"}

    SBC-2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
