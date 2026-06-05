<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](pavucontrol.md "pavucontrol-6.2")

    pavucontrol-6.2

-   [Next](vorbistools.md "vorbis-tools-1.4.3")

    vorbis-tools-1.4.3

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# pnmixer-0.7.2 {#pnmixer-0.7.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Pnmixer {#introduction-to-pnmixer}

The <span class="application">Pnmixer</span> package provides a lightweight volume control with a tray icon.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/nicklan/pnmixer/releases/download/v0.7.2/pnmixer-v0.7.2.tar.gz">https://github.com/nicklan/pnmixer/releases/download/v0.7.2/pnmixer-v0.7.2.tar.gz</a>

-   Download MD5 sum: e9f17f56c50de39393030a96e343427b

-   Download size: 236 KB

-   Estimated disk space required: 2.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Pnmixer Dependencies

#### Required

<a class="xref" href="alsa-utils.md" title="alsa-utils-1.2.15.2">alsa-utils-1.2.15.2</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, and <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>
</div>

<div class="installation" lang="en">
## Installation of Pnmixer {#installation-of-pnmixer}

Install <span class="application">Pnmixer</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      ..  &&
make
```

This package does not have a test suite.

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
**Installed Program:** <span class="segbody">pnmixer</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/pnmixer</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- -----------------------------------------------------
  <a id="pnmixer-prog"></a><span class="command"><span class="term"><strong>pnmixer</strong></span></span>   is a lightweight volume control that sits in a tray
  --------------------------------------------------- -----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pavucontrol.md "pavucontrol-6.2")

    pavucontrol-6.2

-   [Next](vorbistools.md "vorbis-tools-1.4.3")

    vorbis-tools-1.4.3

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
