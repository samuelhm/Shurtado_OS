<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](frei0r.md "frei0r-3.1.3")

    frei0r-3.1.3

-   [Next](gstreamer10.md "gstreamer-1.28.3")

    gstreamer-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gavl-1.4.0 {#gavl-1.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gavl {#introduction-to-gavl}

<span class="application">Gavl</span> is short for Gmerlin Audio Video Library. It is a low level library that handles the details of audio and video formats like colorspaces, samplerates, multichannel configurations etc. It provides standardized definitions for those formats as well as container structures for carrying audio samples or video images inside an application.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/gmerlin/gavl-1.4.0.tar.gz">https://downloads.sourceforge.net/gmerlin/gavl-1.4.0.tar.gz</a>

-   Download MD5 sum: 2752013a817fbc43ddf13552215ec2c0

-   Download size: 4.4 MB

-   Estimated disk space required: 50 MB

-   Estimated build time: 0.8 SBU
</div>

### Gavl Dependencies

#### Required

<a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of Gavl {#installation-of-gavl}

First, fix an issue with gcc-14 and later:

```bash
sed -i "/stdio/a #include <string.h>" src/fill_test.c
```

Now, install <span class="application">Gavl</span> by running the following commands:

```bash
LIBS=-lm                         \
./configure --prefix=/usr        \
            --without-doxygen    \
            --with-cpuflags=none \
            --docdir=/usr/share/doc/gavl-1.4.0 &&
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

<code class="envar">LIBS=-lm</code>: This variable ensures the math library is searched when linking.

*`--without-doxygen`*: This switch disables use of Doxygen. Omit if Doxygen is installed and you wish to build the API documentation.

*`--with-cpuflags=none`*: This switch fixes a problem identifying capabilities of the system architecture.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgavl.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gavl and /usr/share/doc/gavl-1.4.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------- ------------------------------------
  <a id="libgavl.so"></a><span class="term"><code class="filename">libgavl.so</code></span>   is the Gmerlin Audio Video Library
  ------------------------------------------------- ------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](frei0r.md "frei0r-3.1.3")

    frei0r-3.1.3

-   [Next](gstreamer10.md "gstreamer-1.28.3")

    gstreamer-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
