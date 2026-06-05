<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](enchant.md "enchant-2.8.16")

    enchant-2.8.16

-   [Next](fast_float.md "fast_float-8.2.6")

    fast_float-8.2.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Exempi-2.6.6 {#exempi-2.6.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Exempi {#introduction-to-exempi}

<span class="application">Exempi</span> is an implementation of XMP (Adobe's Extensible Metadata Platform).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://libopenraw.freedesktop.org/download/exempi-2.6.6.tar.xz">https://libopenraw.freedesktop.org/download/exempi-2.6.6.tar.xz</a>

-   Download MD5 sum: f955e63dbd7b91c016f802c678e0e773

-   Download size: 2.7 MB

-   Estimated disk space required: 319 MB (add 245 MB for tests)

-   Estimated build time: 0.4 SBU (add 0.5 SBU for tests; both using parallelism=4)
</div>

### Exempi Dependencies

#### Required

<a class="xref" href="boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a>

#### Optional

<a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of Exempi {#installation-of-exempi}

If you intend to run the regression tests, first remove a test that depends on a proprietary Adobe SDK:

```bash
sed -i -r '/^\s?testadobesdk/d' exempi/Makefile.am &&
autoreconf -fiv
```

Install <span class="application">Exempi</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">exempi</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libexempi.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/exempi-2.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------
  <a id="exempi-prog"></a><span class="command"><span class="term"><strong>exempi</strong></span></span>    is a command line tool to manipulate XMP metadata
  <a id="libexempi"></a><span class="term"><code class="filename">libexempi.so</code></span>   is a library used to parse XMP metadata
  -------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](enchant.md "enchant-2.8.16")

    enchant-2.8.16

-   [Next](fast_float.md "fast_float-8.2.6")

    fast_float-8.2.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
