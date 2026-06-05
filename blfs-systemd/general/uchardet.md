<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](talloc.md "Talloc-2.4.4")

    Talloc-2.4.4

-   [Next](umockdev.md "Umockdev-0.19.7")

    Umockdev-0.19.7

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Uchardet-0.0.8 {#uchardet-0.0.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Uchardet {#introduction-to-uchardet}

The <span class="application">Uchardet</span> package contains an encoding detector library which takes a sequence of bytes in an unknown character encoding and attempts to determine the encoding of the text.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/uchardet/releases/uchardet-0.0.8.tar.xz">https://www.freedesktop.org/software/uchardet/releases/uchardet-0.0.8.tar.xz</a>

-   Download MD5 sum: 9e267be7aee81417e5875086dd9d44fd

-   Download size: 217 KB

-   Estimated disk space required: 4.6 MB (with test)

-   Estimated build time: less than 0.1 SBU (with test)
</div>

### Uchardet Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of Uchardet {#installation-of-uchardet}

Install <span class="application">Uchardet</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D BUILD_STATIC=OFF                 \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -W no-dev ..                        &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D BUILD_STATIC=OFF`*: This switch disables building the static version of the library.

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">uchardet</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libuchardet.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/uchardet</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------
  <a id="uchardet-prog"></a><span class="command"><span class="term"><strong>uchardet</strong></span></span>    detects what character set is used inside of a file
  <a id="libuchardet"></a><span class="term"><code class="filename">libuchardet.so</code></span>   provides an API for detecting the encoding of text in a file
  ------------------------------------------------------ --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](talloc.md "Talloc-2.4.4")

    Talloc-2.4.4

-   [Next](umockdev.md "Umockdev-0.19.7")

    Umockdev-0.19.7

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
