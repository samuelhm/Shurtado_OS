<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8")

    sound-theme-freedesktop-0.8

-   [Next](speex.md "Speex-1.2.1")

    Speex-1.2.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SoundTouch-2.4.1 {#soundtouch-2.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SoundTouch {#introduction-to-soundtouch}

The <span class="application">SoundTouch</span> package contains an open-source audio processing library that allows changing the sound tempo, pitch and playback rate parameters independently from each other.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.surina.net/soundtouch/soundtouch-2.4.1.tar.gz">https://www.surina.net/soundtouch/soundtouch-2.4.1.tar.gz</a>

-   Download MD5 sum: 6e8732dea92b6e65fc4ee75528ab0524

-   Download size: 592 KB

-   Estimated disk space required: 8.4 MB

-   Estimated build time: 0.2 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of SoundTouch {#installation-of-soundtouch}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The tarball expands to 'soundtouch' instead of the expected 'soundtouch-2.4.1'
</div>

Install <span class="application">SoundTouch</span> by running the following commands:

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

The <span class="command"><strong>bootstrap</strong></span> command below fails if the ACLOCAL environment variable is set as specified in <a class="xref" href="../x/xorg7.md" title="Introduction to Xorg-7">Xorg-7</a>. If it is used, ACLOCAL needs to be unset for this package and then reset for other packages.
</div>

```bash
./bootstrap &&
./configure --prefix=/usr \
            --docdir=/usr/share/doc/soundtouch-2.4.1 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install 
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-openmp</code>: This switch adds support for running the algorithms in parallel across several processor cores using OpenMP implementation provided by GCC.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">soundstretch</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libSoundTouch.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/soundtouch and /usr/share/doc/soundtouch-2.4.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
  <a id="soundstretch"></a><span class="command"><span class="term"><strong>soundstretch</strong></span></span>     is a program for processing WAV audio files by modifying sound tempo, pitch and playback rate properties independently from each other
  <a id="libSoundTouch"></a><span class="term"><code class="filename">libSoundTouch.so</code></span>   contains <span class="application">SoundTouch</span> API functions
  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8")

    sound-theme-freedesktop-0.8

-   [Next](speex.md "Speex-1.2.1")

    Speex-1.2.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
