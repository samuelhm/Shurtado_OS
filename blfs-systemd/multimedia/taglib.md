<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](svt-av1.md "SVT-AV1-4.1.0")

    SVT-AV1-4.1.0

-   [Next](v4l-utils.md "v4l-utils-1.32.0")

    v4l-utils-1.32.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Taglib-2.3 {#taglib-2.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Taglib {#introduction-to-taglib}

<span class="application">Taglib</span> is a library used for reading, writing and manipulating audio file tags and is used by applications such as <span class="application">VLC</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://taglib.org/releases/taglib-2.3.tar.gz">https://taglib.org/releases/taglib-2.3.tar.gz</a>

-   Download MD5 sum: 5c38962970c698f8d18beddef0df7f9a

-   Download size: 1.6 MB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
</div>

### Taglib Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="../general/utfcpp.md" title="utfcpp-4.1.1">utfcpp-4.1.1</a>

#### Optional (for tests)

<a class="ulink" href="https://freedesktop.org/wiki/Software/cppunit/">Cppunit</a>
</div>

<div class="installation" lang="en">
## Installation of Taglib {#installation-of-taglib}

Install <span class="application">Taglib</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=ON \
      .. &&
make
```

The test suite requires <span class="application">Cppunit</span> but it's not a BLFS package.

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
**Installed Programs:** <span class="segbody">taglib-config</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libtag.so and libtag_c.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/taglib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------------------
  <a id="taglib-config"></a><span class="command"><span class="term"><strong>taglib-config</strong></span></span>   is a tool used to print information about the taglib installation
  ---------------------------------------------------------- -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](svt-av1.md "SVT-AV1-4.1.0")

    SVT-AV1-4.1.0

-   [Next](v4l-utils.md "v4l-utils-1.32.0")

    v4l-utils-1.32.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
