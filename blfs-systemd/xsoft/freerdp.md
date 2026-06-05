::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](fontforge.md "FontForge-20251009"){accesskey="p"}

    FontForge-20251009

-   [Next](gimp.md "Gimp-3.2.4"){accesskey="n"}

    Gimp-3.2.4

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#freerdp}FreeRDP-3.26.0 {#freerdp-3.26.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to FreeRDP {#introduction-to-freerdp .sect2}

The [FreeRDP]{.application} package contains libraries and utilities for utilizing the Remote Desktop Protocol. This includes tools to run an RDP server as well as to connect to a computer using RDP. This is primarily used for connecting to Microsoft Windows computers, but can also be used on Linux and macOS.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/freerdp/freerdp/archive/3.26.0/FreeRDP-3.26.0.tar.gz](https://github.com/freerdp/freerdp/archive/3.26.0/FreeRDP-3.26.0.tar.gz){.ulink}

-   Download MD5 sum: de6192c28713a928e961c7ec90c9f5d2

-   Download size: 11 MB

-   Estimated disk space required: 140 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
:::

### FreeRDP Dependencies

#### Required

[FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, and [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}

#### Recommended

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [Fuse-3.18.2](../postlfs/fuse.md "Fuse-3.18.2"){.xref}, [JSON-C-0.18](../general/json-c.md "JSON-C-0.18"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, and [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}

#### Optional

[Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [faac-1.50](../multimedia/faac.md "faac-1.50"){.xref}, [FAAD2-2.11.2](../multimedia/faad2.md "FAAD2-2.11.2"){.xref}, [fdk-aac-2.0.3](../multimedia/fdk-aac.md "fdk-aac-2.0.3"){.xref}, [LAME-3.100](../multimedia/lame.md "LAME-3.100"){.xref}, [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}, [SDL3-3.4.10](../multimedia/sdl3.md "SDL3-3.4.10"){.xref} and [SDL_ttf](https://github.com/libsdl-org/SDL_ttf){.ulink}, [cJSON](https://github.com/DaveGamble/cJSON){.ulink}, [GSM](https://www.quut.com/gsm/){.ulink}, [OpenCL-ICD-Loader](https://github.com/KhronosGroup/OpenCL-ICD-Loader){.ulink}, [mbedTLS](https://github.com/Mbed-TLS/mbedtls){.ulink}, [openh264](https://www.openh264.org/){.ulink}, [pcsclite](https://pcsclite.apdu.fr/){.ulink}, [soxr](https://github.com/chirlu/soxr){.ulink}, and [uriparser](https://github.com/uriparser/uriparser){.ulink}
:::::

::: {.installation lang="en"}
## Installation of FreeRDP {#installation-of-freerdp .sect2}

Install [FreeRDP]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -D CMAKE_BUILD_TYPE=Release    \
      -D WITH_CAIRO=ON               \
      -D WITH_CLIENT_SDL=OFF         \
      -D WITH_DSP_FFMPEG=ON          \
      -D WITH_FFMPEG=ON              \
      -D WITH_PCSC=OFF               \
      -D WITH_SERVER=ON              \
      -D WITH_SERVER_CHANNELS=ON     \
      -D DOCBOOKXSL_DIR=/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2 \
      -W no-dev                      \
      -G Ninja ..                    &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D DOCBOOKXSL_DIR=/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2`*: This parameter points CMake to the location of the Docbook XSL stylesheets, and is needed because BLFS does not use namespaced versions of the stylesheets. This is needed to create man pages. If you do not want manpages, pass -D WITH_MANPAGES=OFF to CMake instead.

*`-D WITH_CAIRO=ON`*: This parameter uses Cairo for HighDPI and window resizing support.

*`-D WITH_CLIENT_SDL=OFF`*: This parameter disables using SDL to draw the window when using the FreeRDP client. This is disabled because it depends on [SDL_ttf](https://github.com/libsdl-org/SDL_ttf){.ulink}. Remove this switch if you have the SDL_ttf package installed.

*`-D WITH_FFMPEG=ON`*: This parameter enables support for using ffmpeg for the H.264 graphics rendering mode, which is required when connecting via RDP to Windows Server 2012 (or Windows 8) or later hosts.

*`-D WITH_DSP_FFMPEG=ON`*: This parameter enables support for using ffmpeg for sound and microphone redirection.

*`-D WITH_PCSC=OFF`*: This parameter disables support for SmartCards since BLFS does not have the required dependency for it.

*`-D WITH_SERVER=ON`*: This parameter enables building the FreeRDP server components. Remove this parameter if you do not want to use the FreeRDP server.

*`-D WITH_SERVER_CHANNELS=ON`*: This parameter builds additional plugins for the FreeRDP server.

`-D WITH_LAME=ON`{.option}: Use this option if you wish to enable support for using LAME to provide MP3 Audio Codec support.

`-D WITH_FAAC=ON`{.option}: Use this option if you wish to enable support for using FAAC to provide AAC Audio Codec support.

`-D WITH_FAAD2=ON`{.option}: Use this option if you wish to enable support for using FAAD2 to provide AAC Audio Codec support.

`-D WITH_FDK_AAC=ON`{.option}: Use this option if you wish to enable support for using fdk-aac to provide AAC Audio Codec support.

`-D WITH_MBEDTLS=ON`{.option}: Use this option if you have the optional dependency [mbedTLS](https://github.com/Mbed-TLS/mbedtls){.ulink} installed and wish to use it as an alternative to OpenSSL for cryptography support.

`-D WITH_OPENCL=ON`{.option}: Use this option if you have the optional dependency [OpenCL-ICD-Loader](https://github.com/KhronosGroup/OpenCL-ICD-Loader){.ulink} installed and wish to use OpenCL support. OpenCL support, however, cannot be used unless RustICL has been enabled in [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}.

`-D WITH_OPENH264=ON`{.option}: Use this option if you have the optional dependency [openh264](https://www.openh264.org/){.ulink} installed and wish to use it for H.264 support instead of ffmpeg.

`-D WITH_GSM=ON`{.option}: Use this option if you have the optional dependency [GSM](https://www.quut.com/gsm/){.ulink} installed and wish to use GSM as an audio codec.

`-D WITH_SOXR=ON`{.option}: Use this option if you have the optional dependency [soxr](https://github.com/chirlu/soxr){.ulink} installed and wish to use it instead of ffmpeg for multimedia redirection.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [freerdp-proxy, freerdp-shadow-cli, sfreerdp, sfreerdp-server, winpr-hash, winpr-makecert, wlfreerdp, xfreerdp]{.segbody}
:::

::: seg
**Installed Libraries:** [libfreerdp3.so, libfreerdp-client3.so, libfreerdp-server3.so, libfreerdp-server-proxy3.so, libfreerdp-shadow3.so, libfreerdp-shadow-subsystem3.so, librtdk0.so, libuwac0.so, libwinpr3.so, and libwinpr-tools3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/{freerdp3,rdtk0,uwac0,winpr3}, /usr/lib/cmake/{FreeRDP3,FreeRDP-Client3,FreeRDP-Proxy3,FreeRDP-Server3,rdtk0,uwac0,WinPR3,WinPR-tools3}, /usr/lib/freerdp3, /usr/share/FreeRDP]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------
  []{#freerdp-proxy}[[**freerdp-proxy**]{.command}]{.term}             configures FreeRDP to use a proxy server
  []{#freerdp-shadow-cli}[[**freerdp-shadow-cli**]{.command}]{.term}   interfaces with the shadow functionality in FreeRDP
  []{#sfreerdp}[[**sfreerdp**]{.command}]{.term}                       is a utility for sharing an X display over RDP
  []{#sfreerdp-server}[[**sfreerdp-server**]{.command}]{.term}         is a utility for sharing an X display over RDP
  []{#winpr-hash}[[**winpr-hash**]{.command}]{.term}                   creates a NTLM hash from a username and password pair
  []{#winpr-makecert}[[**winpr-makecert**]{.command}]{.term}           creates X.509 certificates for use with FreeRDP
  []{#wlfreerdp}[[**wlfreerdp**]{.command}]{.term}                     is a RDP client for Wayland
  []{#xfreerdp}[[**xfreerdp**]{.command}]{.term}                       is a RDP client for X11
  []{#libfreerdp3}[`libfreerdp3.so`{.filename}]{.term}                 contains functions that provide RDP client and server functionality
  -------------------------------------------------------------------- ---------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](fontforge.md "FontForge-20251009"){accesskey="p"}

    FontForge-20251009

-   [Next](gimp.md "Gimp-3.2.4"){accesskey="n"}

    Gimp-3.2.4

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
