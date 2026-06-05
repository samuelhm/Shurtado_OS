<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](fontforge.md "FontForge-20251009")

    FontForge-20251009

-   [Next](gimp.md "Gimp-3.2.4")

    Gimp-3.2.4

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# FreeRDP-3.26.0 {#freerdp-3.26.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to FreeRDP {#introduction-to-freerdp}

The <span class="application">FreeRDP</span> package contains libraries and utilities for utilizing the Remote Desktop Protocol. This includes tools to run an RDP server as well as to connect to a computer using RDP. This is primarily used for connecting to Microsoft Windows computers, but can also be used on Linux and macOS.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/freerdp/freerdp/archive/3.26.0/FreeRDP-3.26.0.tar.gz">https://github.com/freerdp/freerdp/archive/3.26.0/FreeRDP-3.26.0.tar.gz</a>

-   Download MD5 sum: de6192c28713a928e961c7ec90c9f5d2

-   Download size: 11 MB

-   Estimated disk space required: 140 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
</div>

### FreeRDP Dependencies

#### Required

<a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, and <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Recommended

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="../postlfs/fuse.md" title="Fuse-3.18.2">Fuse-3.18.2</a>, <a class="xref" href="../general/json-c.md" title="JSON-C-0.18">JSON-C-0.18</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, and <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>

#### Optional

<a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../multimedia/faac.md" title="faac-1.50">faac-1.50</a>, <a class="xref" href="../multimedia/faad2.md" title="FAAD2-2.11.2">FAAD2-2.11.2</a>, <a class="xref" href="../multimedia/fdk-aac.md" title="fdk-aac-2.0.3">fdk-aac-2.0.3</a>, <a class="xref" href="../multimedia/lame.md" title="LAME-3.100">LAME-3.100</a>, <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="../multimedia/sdl3.md" title="SDL3-3.4.10">SDL3-3.4.10</a> and <a class="ulink" href="https://github.com/libsdl-org/SDL_ttf">SDL_ttf</a>, <a class="ulink" href="https://github.com/DaveGamble/cJSON">cJSON</a>, <a class="ulink" href="https://www.quut.com/gsm/">GSM</a>, <a class="ulink" href="https://github.com/KhronosGroup/OpenCL-ICD-Loader">OpenCL-ICD-Loader</a>, <a class="ulink" href="https://github.com/Mbed-TLS/mbedtls">mbedTLS</a>, <a class="ulink" href="https://www.openh264.org/">openh264</a>, <a class="ulink" href="https://pcsclite.apdu.fr/">pcsclite</a>, <a class="ulink" href="https://github.com/chirlu/soxr">soxr</a>, and <a class="ulink" href="https://github.com/uriparser/uriparser">uriparser</a>
</div>

<div class="installation" lang="en">
## Installation of FreeRDP {#installation-of-freerdp}

Install <span class="application">FreeRDP</span> by running the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D DOCBOOKXSL_DIR=/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2`*: This parameter points CMake to the location of the Docbook XSL stylesheets, and is needed because BLFS does not use namespaced versions of the stylesheets. This is needed to create man pages. If you do not want manpages, pass -D WITH_MANPAGES=OFF to CMake instead.

*`-D WITH_CAIRO=ON`*: This parameter uses Cairo for HighDPI and window resizing support.

*`-D WITH_CLIENT_SDL=OFF`*: This parameter disables using SDL to draw the window when using the FreeRDP client. This is disabled because it depends on <a class="ulink" href="https://github.com/libsdl-org/SDL_ttf">SDL_ttf</a>. Remove this switch if you have the SDL_ttf package installed.

*`-D WITH_FFMPEG=ON`*: This parameter enables support for using ffmpeg for the H.264 graphics rendering mode, which is required when connecting via RDP to Windows Server 2012 (or Windows 8) or later hosts.

*`-D WITH_DSP_FFMPEG=ON`*: This parameter enables support for using ffmpeg for sound and microphone redirection.

*`-D WITH_PCSC=OFF`*: This parameter disables support for SmartCards since BLFS does not have the required dependency for it.

*`-D WITH_SERVER=ON`*: This parameter enables building the FreeRDP server components. Remove this parameter if you do not want to use the FreeRDP server.

*`-D WITH_SERVER_CHANNELS=ON`*: This parameter builds additional plugins for the FreeRDP server.

<code class="option">-D WITH_LAME=ON</code>: Use this option if you wish to enable support for using LAME to provide MP3 Audio Codec support.

<code class="option">-D WITH_FAAC=ON</code>: Use this option if you wish to enable support for using FAAC to provide AAC Audio Codec support.

<code class="option">-D WITH_FAAD2=ON</code>: Use this option if you wish to enable support for using FAAD2 to provide AAC Audio Codec support.

<code class="option">-D WITH_FDK_AAC=ON</code>: Use this option if you wish to enable support for using fdk-aac to provide AAC Audio Codec support.

<code class="option">-D WITH_MBEDTLS=ON</code>: Use this option if you have the optional dependency <a class="ulink" href="https://github.com/Mbed-TLS/mbedtls">mbedTLS</a> installed and wish to use it as an alternative to OpenSSL for cryptography support.

<code class="option">-D WITH_OPENCL=ON</code>: Use this option if you have the optional dependency <a class="ulink" href="https://github.com/KhronosGroup/OpenCL-ICD-Loader">OpenCL-ICD-Loader</a> installed and wish to use OpenCL support. OpenCL support, however, cannot be used unless RustICL has been enabled in <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>.

<code class="option">-D WITH_OPENH264=ON</code>: Use this option if you have the optional dependency <a class="ulink" href="https://www.openh264.org/">openh264</a> installed and wish to use it for H.264 support instead of ffmpeg.

<code class="option">-D WITH_GSM=ON</code>: Use this option if you have the optional dependency <a class="ulink" href="https://www.quut.com/gsm/">GSM</a> installed and wish to use GSM as an audio codec.

<code class="option">-D WITH_SOXR=ON</code>: Use this option if you have the optional dependency <a class="ulink" href="https://github.com/chirlu/soxr">soxr</a> installed and wish to use it instead of ffmpeg for multimedia redirection.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">freerdp-proxy, freerdp-shadow-cli, sfreerdp, sfreerdp-server, winpr-hash, winpr-makecert, wlfreerdp, xfreerdp</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libfreerdp3.so, libfreerdp-client3.so, libfreerdp-server3.so, libfreerdp-server-proxy3.so, libfreerdp-shadow3.so, libfreerdp-shadow-subsystem3.so, librtdk0.so, libuwac0.so, libwinpr3.so, and libwinpr-tools3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/{freerdp3,rdtk0,uwac0,winpr3}, /usr/lib/cmake/{FreeRDP3,FreeRDP-Client3,FreeRDP-Proxy3,FreeRDP-Server3,rdtk0,uwac0,WinPR3,WinPR-tools3}, /usr/lib/freerdp3, /usr/share/FreeRDP</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------
  <a id="freerdp-proxy"></a><span class="command"><span class="term"><strong>freerdp-proxy</strong></span></span>             configures FreeRDP to use a proxy server
  <a id="freerdp-shadow-cli"></a><span class="command"><span class="term"><strong>freerdp-shadow-cli</strong></span></span>   interfaces with the shadow functionality in FreeRDP
  <a id="sfreerdp"></a><span class="command"><span class="term"><strong>sfreerdp</strong></span></span>                       is a utility for sharing an X display over RDP
  <a id="sfreerdp-server"></a><span class="command"><span class="term"><strong>sfreerdp-server</strong></span></span>         is a utility for sharing an X display over RDP
  <a id="winpr-hash"></a><span class="command"><span class="term"><strong>winpr-hash</strong></span></span>                   creates a NTLM hash from a username and password pair
  <a id="winpr-makecert"></a><span class="command"><span class="term"><strong>winpr-makecert</strong></span></span>           creates X.509 certificates for use with FreeRDP
  <a id="wlfreerdp"></a><span class="command"><span class="term"><strong>wlfreerdp</strong></span></span>                     is a RDP client for Wayland
  <a id="xfreerdp"></a><span class="command"><span class="term"><strong>xfreerdp</strong></span></span>                       is a RDP client for X11
  <a id="libfreerdp3"></a><span class="term"><code class="filename">libfreerdp3.so</code></span>                 contains functions that provide RDP client and server functionality
  -------------------------------------------------------------------- ---------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fontforge.md "FontForge-20251009")

    FontForge-20251009

-   [Next](gimp.md "Gimp-3.2.4")

    Gimp-3.2.4

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
