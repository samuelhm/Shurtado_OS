<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](dos2unix.md "dos2unix-7.5.6")

    dos2unix-7.5.6

-   [Next](glslc.md "glslc from shaderc-2026.2")

    glslc from shaderc-2026.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# editorconfig-core-c-0.12.11 {#editorconfig-core-c-0.12.11}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to editorconfig-core-c {#introduction-to-editorconfig-core-c}

The EditorConfig project maintains a file format and plugins for various text editors which allow this file format to be read and used by those editors.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/editorconfig/editorconfig-core-c/archive/v0.12.11/editorconfig-core-c-0.12.11.tar.gz">https://github.com/editorconfig/editorconfig-core-c/archive/v0.12.11/editorconfig-core-c-0.12.11.tar.gz</a>

-   Download MD5 sum: a0a6b43efe67635dad20e2d66a569a7b

-   Download size: 76 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of editorconfig-core-c {#installation-of-editorconfig-core-c}

Install <span class="application">editorconfig-core-c</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_DOCUMENTATION=OFF   \
      ..                           &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
rm -fv /usr/lib/libeditorconfig_static.a
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">editorconfig</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libeditorconfig.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/editorconfig and /usr/lib/cmake/EditorConfig</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dos2unix.md "dos2unix-7.5.6")

    dos2unix-7.5.6

-   [Next](glslc.md "glslc from shaderc-2026.2")

    glslc from shaderc-2026.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
