<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-firmware.md "alsa-firmware-1.2.4")

    alsa-firmware-1.2.4

-   [Next](dav1d.md "dav1d-1.5.3")

    dav1d-1.5.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# AudioFile-0.3.6 {#audiofile-0.3.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to AudioFile {#introduction-to-audiofile}

The <span class="application">AudioFile</span> package contains the audio file libraries and two sound file support programs useful to support basic sound file formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/audiofile/0.3/audiofile-0.3.6.tar.xz">https://download.gnome.org/sources/audiofile/0.3/audiofile-0.3.6.tar.xz</a>

-   Download MD5 sum: 235dde14742317328f0109e9866a8008

-   Download size: 520 KB

-   Estimated disk space required: 18 MB

-   Estimated build time: 0.6 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/audiofile-0.3.6-consolidated_patches-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/audiofile-0.3.6-consolidated_patches-1.patch</a>
</div>

### AudioFile Dependencies

#### Required

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>

#### Recommended

<a class="xref" href="flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>

#### Optional

<a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> and <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of AudioFile {#installation-of-audiofile}

Install <span class="application">AudioFile</span> by running the following commands:

```bash
patch -Np1 -i ../audiofile-0.3.6-consolidated_patches-1.patch &&
autoreconf -fiv                             &&

./configure --prefix=/usr --disable-static  &&

make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. Note that the tests will fail if the --disable-static option is used and tests are executed before <span class="command"><strong>make install</strong></span>. You have three options:

\(a\) configure without --disable-static, run the tests, but do not install, then start a fresh build using --disable-static just for installing the package.

\(b\) configure with --disable-static, but only run the tests after the package is installed.

\(c\) configure with --disable-static, but only run the tests after a DESTDIR install.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">sfconvert and sfinfo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libaudiofile.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------
  <a id="sfinfo"></a><span class="command"><span class="term"><strong>sfinfo</strong></span></span>               displays the sound file format, audio encoding, sampling rate and duration for audio formats supported by this library
  <a id="sfconvert"></a><span class="command"><span class="term"><strong>sfconvert</strong></span></span>         converts sound file formats where the original format and destination format are supported by this library
  <a id="libaudiofile"></a><span class="term"><code class="filename">libaudiofile.so</code></span>   contains functions used by programs to support AIFF, AIFF-compressed, Sun/NeXT, WAV and BIC audio formats
  -------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](alsa-firmware.md "alsa-firmware-1.2.4")

    alsa-firmware-1.2.4

-   [Next](dav1d.md "dav1d-1.5.3")

    dav1d-1.5.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
