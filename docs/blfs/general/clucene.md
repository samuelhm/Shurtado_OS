<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](brotli.md "brotli-1.2.0")

    brotli-1.2.0

-   [Next](dbus-glib.md "dbus-glib-0.114")

    dbus-glib-0.114

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# CLucene-2.3.3.4 {#clucene-2.3.3.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to CLucene {#introduction-to-clucene}

<span class="application">CLucene</span> is a C++ version of Lucene, a high performance text search engine.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/clucene/clucene-core-2.3.3.4.tar.gz">https://downloads.sourceforge.net/clucene/clucene-core-2.3.3.4.tar.gz</a>

-   Download MD5 sum: 48d647fbd8ef8889e5a7f422c1bfda94

-   Download size: 2.2 MB

-   Estimated disk space required: 78 MB

-   Estimated build time: 0.8 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/clucene-2.3.3.4-contribs_lib-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/clucene-2.3.3.4-contribs_lib-1.patch</a>
</div>

### CLucene Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a>
</div>

<div class="installation" lang="en">
## Installation of CLucene {#installation-of-clucene}

Install <span class="application">CLucene</span> by running the following commands:

```bash
patch -Np1 -i ../clucene-2.3.3.4-contribs_lib-1.patch &&

sed -i '/Misc.h/a #include <ctime>' src/core/CLucene/document/DateTools.cpp &&

mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -D BUILD_CONTRIBS_LIB=ON            \
      -W no-dev ..                        &&
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.

*`-D BUILD_CONTRIBS_LIB=ON`*: This cmake variable enables building the CLucene contribs library necessary for running applications that use language specific text analyzers like LibreOffice for example.

*`-W no-dev`*: This parameter silences several warnings only intended for project developers.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libclucene-contribs-lib.so, libclucene-core.so, and libclucene-shared.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/CLucene and /usr/lib/CLuceneConfig.cmake</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](brotli.md "brotli-1.2.0")

    brotli-1.2.0

-   [Next](dbus-glib.md "dbus-glib-0.114")

    dbus-glib-0.114

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
