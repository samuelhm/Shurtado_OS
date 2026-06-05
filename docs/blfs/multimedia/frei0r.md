<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](flac.md "FLAC-1.5.0")

    FLAC-1.5.0

-   [Next](gavl.md "gavl-1.4.0")

    gavl-1.4.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# frei0r-3.1.3 {#frei0r-3.1.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Frei0r {#introduction-to-frei0r}

<span class="application">Frei0r</span> is a minimalistic plugin API for video effects. Note that the 0 in the name is a zero, not a capital letter o.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/dyne/frei0r/archive/v3.1.3/frei0r-3.1.3.tar.gz">https://github.com/dyne/frei0r/archive/v3.1.3/frei0r-3.1.3.tar.gz</a>

-   Download MD5 sum: 286941063d19126504ca8ebfd11a7985

-   Download size: 936 KB

-   Estimated disk space required: 54 MB

-   Estimated build time: 0.4 SBU
</div>

### Frei0r Dependencies

#### Recommended

<a class="xref" href="gavl.md" title="gavl-1.4.0">gavl-1.4.0</a> and <a class="xref" href="../general/opencv.md" title="opencv-4.13.0">opencv-4.13.0</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of frei0r {#installation-of-frei0r}

Install <span class="application">Frei0r</span> by running the following commands:

```bash
mkdir -vp build &&
cd        build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -W no-dev .. &&

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

<code class="option">-D WITHOUT_OPENCV=TRUE</code>: This option instructs the make procedure to disable building plugins dependent upon opencv.

<code class="option">-D WITHOUT_GAVL=TRUE</code>: This option instructs the make procedure to disable building plugins dependent upon gavl.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Over 150 video effects plugins</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/frei0r-1</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](flac.md "FLAC-1.5.0")

    FLAC-1.5.0

-   [Next](gavl.md "gavl-1.4.0")

    gavl-1.4.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
