<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](x265.md "x265-4.2")

    x265-4.2

-   [Next](xvid.md "XviD-1.3.7")

    XviD-1.3.7

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xine-lib-1.2.13 {#xine-lib-1.2.13}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xine Libraries {#introduction-to-xine-libraries}

The <span class="application">Xine Libraries</span> package contains xine libraries. These are useful for interfacing with external plug-ins that allow the flow of information from the source to the audio and video hardware.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/xine/xine-lib-1.2.13.tar.xz">https://downloads.sourceforge.net/xine/xine-lib-1.2.13.tar.xz</a>

-   Download MD5 sum: 9e1be39857b7a3cd7cc0f2b96331ff22

-   Download size: 4.8 MB

-   Estimated disk space required: 98 MB (with API documentation)

-   Estimated build time: 0.5 SBU (Using parallelism=4; with API documentation)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-upstream_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-upstream_fixes-1.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-gcc15_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-gcc15_fixes-1.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-ffmpeg8.patch">https://www.linuxfromscratch.org/patches/blfs/svn/xine-lib-1.2.13-ffmpeg8.patch</a>
</div>

### Xine Libraries Dependencies

#### Required

<a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, <a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, and at least one of: <a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, or <a class="ulink" href="https://jackaudio.org/">JACK</a>

#### Recommended

<a class="xref" href="libdvdnav.md" title="libdvdnav-7.0.0">libdvdnav-7.0.0</a>

#### Optional

<a class="xref" href="../general/aalib.md" title="AAlib-1.4rc5">AAlib-1.4rc5</a>, <a class="xref" href="faad2.md" title="FAAD2-2.11.2">FAAD2-2.11.2</a>, <a class="xref" href="flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>, <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="../x/glu.md" title="GLU-9.0.3">GLU-9.0.3</a>, <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a>, <a class="xref" href="liba52.md" title="Liba52-0.8.0">liba52-0.8.0</a>, <a class="xref" href="libdvdcss.md" title="libdvdcss-1.5.0">libdvdcss-1.5.0</a>, <a class="xref" href="libmad.md" title="libmad-0.15.1b">libmad-0.15.1b</a>, <a class="xref" href="../general/libmng.md" title="libmng-2.0.3">libmng-2.0.3</a>, <a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="xref" href="libva.md" title="libva-2.23.0">libva-2.23.0</a> (requires <a class="xref" href="../x/glu.md" title="GLU-9.0.3">GLU-9.0.3</a>), <a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>, <a class="xref" href="libvpx.md" title="libvpx-1.16.0">libvpx-1.16.0</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="../basicnet/samba.md" title="Samba-4.24.0">Samba-4.24.0</a>, <a class="xref" href="speex.md" title="Speex-1.2.1">Speex-1.2.1</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to create the API documentation), <a class="xref" href="v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a> <a class="ulink" href="https://pkgs.fedoraproject.org/repo/pkgs/directfb/">DirectFB</a>, <a class="ulink" href="https://www.videolan.org/developers/libbluray.md">libbluray</a>, <a class="ulink" href="https://github.com/cacalabs/libcaca">libcaca</a>, <a class="ulink" href="https://www.videolan.org/developers/libdca.md">libdca</a>, <a class="ulink" href="https://fame.sourceforge.net">libFAME</a>, <a class="ulink" href="https://sourceforge.net/projects/modplug-xmms/">libmodplug</a>, <a class="ulink" href="https://www.theora.org">libtheora</a>, <a class="ulink" href="https://www.musepack.net/">musepack</a>, <a class="ulink" href="https://github.com/libsdl-org/sdl12-compat">SDL1</a>, <a class="ulink" href="https://ftpmirror.gnu.org/vcdimager/">VCDImager</a>, and <a class="ulink" href="https://www.wavpack.com/">WavPack</a>
</div>

<div class="installation" lang="en">
## Installation of Xine Libraries {#installation-of-xine-libraries}

First, fix building this package with ffmpeg-7.0 and later:

```bash
patch -Np1 -i ../xine-lib-1.2.13-upstream_fixes-1.patch
```

Next, fix building this package with gcc-15.x:

```bash
patch -Np1 -i ../xine-lib-1.2.13-gcc15_fixes-1.patch
```

Next, fix building this package with ffmpeg-8:

```bash
patch -Np1 -i ../xine-lib-1.2.13-ffmpeg8.patch
```

Install <span class="application">Xine Libraries</span> by running the following commands:

```bash
./configure --prefix=/usr          \
            --disable-vcd          \
            --disable-w32dll       \
            --with-external-dvdnav \
            --docdir=/usr/share/doc/xine-lib-1.2.13 &&
make
```

To create the API documentation, <span class="application">Doxygen</span> must be installed and issue the following command:

```bash
doxygen doc/Doxyfile
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When installing, the Makefile does some additional linking. If you do not have Xorg in /usr, the LIBRARY_PATH variable needs to be defined for the root user. If using sudo to assume root, use the -E option to pass your current environment variables for the install process.
</div>

If you built the API documentation, issue the following commands as the <code class="systemitem">root</code> user to install it:

```bash
install -v -m755 -d /usr/share/doc/xine-lib-1.2.13/api &&
install -v -m644    doc/api/* \
                    /usr/share/doc/xine-lib-1.2.13/api
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-vcd`*: This switch is required to compile <span class="application">Xine Lib</span> without <a class="ulink" href="https://ftpmirror.gnu.org/vcdimager/">VCDImager</a> installed. Remove this option if you have installed VCDImager.

*`--with-external-dvdnav`*: This switch is required, because internal libraries cannot decrypt DVD.

*`--disable-win32dll`*: This switch disables building Win32 support into the libraries, and fixes a compilation failure on 32-bit systems.

*`--docdir=/usr/share/doc/xine-lib-1.2.13`*: This switch causes the documentation to be installed into a versioned directory instead of the default <code class="filename">/usr/share/doc/xine-lib</code>.

<code class="option">--disable-vaapi</code>: use this switch if <a class="xref" href="libva.md" title="libva-2.23.0">libva-2.23.0</a> is installed and <a class="xref" href="../x/glu.md" title="GLU-9.0.3">GLU-9.0.3</a> is not, to prevent a build failure.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xine-config and xine-list-1.2</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxine.so and numerous plugin modules and video extensions under /usr/lib/xine/plugins/2.8</span>
</div>

<div class="seg">
**Installed Fonts:** <span class="segbody">Output display engine fonts located in /usr/share/xine-lib/fonts</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/xine, /usr/lib/xine, /usr/share/xine-lib, and /usr/share/doc/xine-lib-1.2.13</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -----------------------------------------------------------------------------------------
  <a id="xine-config"></a><span class="command"><span class="term"><strong>xine-config</strong></span></span>       provides information to programs trying to link with the <span class="application">xine</span> libraries
  <a id="xine-list-1.2"></a><span class="command"><span class="term"><strong>xine-list-1.2</strong></span></span>   is used to get supported file type information from <span class="application">xine-lib</span>
  <a id="libxine"></a><span class="term"><code class="filename">libxine.so</code></span>               provides the API for processing audio/video files
  ---------------------------------------------------------- -----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](x265.md "x265-4.2")

    x265-4.2

-   [Next](xvid.md "XviD-1.3.7")

    XviD-1.3.7

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
