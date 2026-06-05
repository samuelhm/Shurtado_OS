<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](icu.md "icu-78.3")

    icu-78.3

-   [Next](jansson.md "Jansson-2.15.0")

    Jansson-2.15.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# inih-62 {#inih-62}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to inih {#introduction-to-inih}

This package is a simple .INI file parser written in C.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/benhoyt/inih/archive/r62/inih-r62.tar.gz">https://github.com/benhoyt/inih/archive/r62/inih-r62.tar.gz</a>

-   Download MD5 sum: c0c6982525958a0376a3cb5bfbee14a0

-   Download size: 24 KB

-   Estimated disk space required: 2 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of inih {#installation-of-inih}

Install <span class="application">inih</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libinih.so and libINIReader.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ----------------------------
  <a id="libinih"></a><span class="term"><code class="filename">libinih.so</code></span>             is the inih main library
  <a id="libINIReader"></a><span class="term"><code class="filename">libINIReader.so</code></span>   is the inih parser library
  -------------------------------------------------------- ----------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](icu.md "icu-78.3")

    icu-78.3

-   [Next](jansson.md "Jansson-2.15.0")

    Jansson-2.15.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
