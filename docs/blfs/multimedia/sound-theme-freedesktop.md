<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](sdl3.md "SDL3-3.4.10")

    SDL3-3.4.10

-   [Next](soundtouch.md "SoundTouch-2.4.1")

    SoundTouch-2.4.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sound-theme-freedesktop-0.8 {#sound-theme-freedesktop-0.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Sound Theme Freedesktop {#introduction-to-sound-theme-freedesktop}

The <span class="application">Sound Theme Freedesktop</span> package contains sound themes for the desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://people.freedesktop.org/~mccann/dist/sound-theme-freedesktop-0.8.tar.bz2">https://people.freedesktop.org/\~mccann/dist/sound-theme-freedesktop-0.8.tar.bz2</a>

-   Download MD5 sum: d7387912cfd275282d1ec94483cb2f62

-   Download size: 472 KB

-   Estimated disk space required: 2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### sound-theme-freedesktop Dependencies

#### Required

<a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>
</div>

<div class="installation" lang="en">
## Installation of Sound Theme Freedesktop {#installation-of-sound-theme-freedesktop}

Install <span class="application">Sound Theme Freedesktop</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/sounds/freedesktop</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sdl3.md "SDL3-3.4.10")

    SDL3-3.4.10

-   [Next](soundtouch.md "SoundTouch-2.4.1")

    SoundTouch-2.4.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
