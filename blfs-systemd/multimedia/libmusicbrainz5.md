<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libmpeg2.md "libmpeg2-0.5.1")

    libmpeg2-0.5.1

-   [Next](libogg.md "libogg-1.3.6")

    libogg-1.3.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libmusicbrainz-5.1.0 {#libmusicbrainz-5.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libmusicbrainz {#introduction-to-libmusicbrainz}

The <span class="application">libmusicbrainz</span> package contains a library which allows you to access the data held on the MusicBrainz server.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz">https://github.com/metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz</a>

-   Download MD5 sum: 4cc5556aa40ff7ab8f8cb83965535bc3

-   Download size: 76 KB

-   Estimated disk space required: 6.6 MB (additional 4.4 MB for the API documentation)

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/libmusicbrainz-5.1.0-cmake_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/libmusicbrainz-5.1.0-cmake_fixes-1.patch</a>
</div>

### libmusicbrainz Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> and <a class="xref" href="../basicnet/neon.md" title="neon-0.37.1">neon-0.37.1</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of libmusicbrainz {#installation-of-libmusicbrainz}

First, fix a problem caused by CMake-3.18.0 and later:

```bash
patch -Np1 -i ../libmusicbrainz-5.1.0-cmake_fixes-1.patch
```

Fix also a problem caused by libxml-2.12.x:

```bash
sed -e 's/xmlErrorPtr /const xmlError */'     \
    -i src/xmlParser.cc
```

Install <span class="application">libmusicbrainz</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 .. &&
make
```

If you have installed <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, optionally build the API documentation:

```bash
doxygen ../Doxyfile
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have built the API documentation, install, as the <code class="systemitem">root</code> user:

```bash
rm -rf /usr/share/doc/libmusicbrainz-5.1.0 &&
cp -vr docs/ /usr/share/doc/libmusicbrainz-5.1.0
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
**Installed Library:** <span class="segbody">libmusicbrainz5.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libmusicbrainz5 and /usr/share/doc/libmusicbrainz-5.1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------
  <a id="libmusicbrainz5-lib"></a><span class="term"><code class="filename">libmusicbrainz5.so</code></span>   contains API functions for accessing the MusicBrainz database
  ------------------------------------------------------------------ ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libmpeg2.md "libmpeg2-0.5.1")

    libmpeg2-0.5.1

-   [Next](libogg.md "libogg-1.3.6")

    libogg-1.3.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
