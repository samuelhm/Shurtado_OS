<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](umockdev.md "Umockdev-0.19.7")

    Umockdev-0.19.7

-   [Next](wayland.md "Wayland-1.25.0")

    Wayland-1.25.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# utfcpp-4.1.1 {#utfcpp-4.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to utfcpp {#introduction-to-utfcpp}

The <span class="application">utfcpp</span> package contains a set of include files to provide UTF-8 with C++ in a Portable Way.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/nemtrif/utfcpp/archive/v4.1.1/utfcpp-4.1.1.tar.gz">https://github.com/nemtrif/utfcpp/archive/v4.1.1/utfcpp-4.1.1.tar.gz</a>

-   Download MD5 sum: 2b439bf8f222cd85bac0d2603265a246

-   Download size: 36 KB

-   Estimated disk space required: 716 KB

-   Estimated build time: less than 0.1 SBU
</div>

### utfcpp Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of utfcpp {#installation-of-utfcpp}

Install <span class="application">utfcpp</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr ..
```

This package does not come with a test suite.

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/utf8cpp and /usr/share/utf8cpp</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](umockdev.md "Umockdev-0.19.7")

    Umockdev-0.19.7

-   [Next](wayland.md "Wayland-1.25.0")

    Wayland-1.25.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
