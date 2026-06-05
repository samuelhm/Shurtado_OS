<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libdaemon.md "libdaemon-0.14")

    libdaemon-0.14

-   [Next](libgcrypt.md "libgcrypt-1.12.2")

    libgcrypt-1.12.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libdisplay-info-0.3.0 {#libdisplay-info-0.3.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libdisplay-info {#introduction-to-libdisplay-info}

The <span class="application">libdisplay-info</span> package provides a set of high-level and low-level functions to access detailed Extended Display Identification Data (EDID) information.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/emersion/libdisplay-info/-/releases/0.3.0/downloads/libdisplay-info-0.3.0.tar.xz">https://gitlab.freedesktop.org/emersion/libdisplay-info/-/releases/0.3.0/downloads/libdisplay-info-0.3.0.tar.xz</a>

-   Download MD5 sum: f2a15697f6e8c66722b7760ceccbed60

-   Download size: 112 KB

-   Estimated disk space required: 3.3 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libdisplay-info Dependencies

#### Required

<a class="xref" href="hwdata.md" title="hwdata-0.408">hwdata-0.408</a>
</div>

<div class="installation" lang="en">
## Installation of libdisplay-info {#installation-of-libdisplay-info}

Install <span class="application">libdisplay-info</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, run <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">di-edid-decode</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libdisplay-info.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libdisplay-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------------------------------
  <a id="di-edid-decode"></a><span class="command"><span class="term"><strong>di-edid-decode</strong></span></span>         parses EDID file and prints information from the file in human-readable form
  <a id="libdisplay-info-lib"></a><span class="term"><code class="filename">libdisplay-info.so</code></span>   is a library for handling EDID and DisplayID
  ------------------------------------------------------------------ ------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libdaemon.md "libdaemon-0.14")

    libdaemon-0.14

-   [Next](libgcrypt.md "libgcrypt-1.12.2")

    libgcrypt-1.12.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
