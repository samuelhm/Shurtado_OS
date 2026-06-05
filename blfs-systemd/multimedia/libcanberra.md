<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libass.md "libass-0.17.4")

    libass-0.17.4

-   [Next](libcddb.md "libcddb-1.3.2")

    libcddb-1.3.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libcanberra-0.30 {#libcanberra-0.30}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libcanberra {#introduction-to-libcanberra}

<span class="application">libcanberra</span> is an implementation of the XDG Sound Theme and Name Specifications, for generating event sounds on free desktops, such as <span class="application">GNOME</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz">https://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz</a>

-   Download MD5 sum: 34cb7e4430afaf6f447c4ebdb9b42072

-   Download size: 312 KB

-   Estimated disk space required: 7.5 MB

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/libcanberra-0.30-wayland-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/libcanberra-0.30-wayland-1.patch</a>
</div>

### libcanberra Dependencies

#### Required

<a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>

#### Recommended

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="gstreamer10.md" title="gstreamer-1.28.3">gstreamer-1.28.3</a>, and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Optional

<a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="ulink" href="https://download.gnome.org/sources/gtk+/2.24/">GTK+-2</a> and <a class="ulink" href="https://tdb.samba.org/">tdb</a>

#### Recommended Sound Theme (Run Time)

<a class="xref" href="sound-theme-freedesktop.md" title="sound-theme-freedesktop-0.8">sound-theme-freedesktop-0.8</a>, or another theme, for example from <a class="ulink" href="https://www.gnome-look.org/browse?cat=316">the gnome-look website</a>
</div>

<div class="installation" lang="en">
## Installation of libcanberra {#installation-of-libcanberra}

First, apply a patch to fix an issue causing some applications to crash in Wayland-based desktop environments:

```bash
patch -Np1 -i ../libcanberra-0.30-wayland-1.patch
```

Install <span class="application">libcanberra</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-oss &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make docdir=/usr/share/doc/libcanberra-0.30 install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-oss`*: disables optional deprecated OSS support

<code class="option">--disable-gtk3</code>: disables optional support for GTK+-3
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">canberra-boot and canberra-gtk-play</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcanberra-gtk3.so and libcanberra.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/libcanberra-0.30, /usr/share/doc/libcanberra-0.30 and /usr/share/gtk-doc/html/libcanberra</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------------------------------
  <a id="canberra-gtk-play"></a><span class="command"><span class="term"><strong>canberra-gtk-play</strong></span></span>   is an application used for playing sound events
  <a id="libcanberra-gtk3"></a><span class="term"><code class="filename">libcanberra-gtk3.so</code></span>     contains the <span class="application">libcanberra</span> bindings for <span class="application">GTK+ 3</span>
  <a id="libcanberra-lib"></a><span class="term"><code class="filename">libcanberra.so</code></span>           contains the <span class="application">libcanberra</span> API functions
  ------------------------------------------------------------------ ------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libass.md "libass-0.17.4")

    libass-0.17.4

-   [Next](libcddb.md "libcddb-1.3.2")

    libcddb-1.3.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
