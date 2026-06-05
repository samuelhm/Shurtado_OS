<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libptytty.md "libptytty-2.0")

    libptytty-2.0

-   [Next](libqmi.md "libqmi-1.38.0")

    libqmi-1.38.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libqalculate-5.11.0 {#libqalculate-5.11.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libqalculate {#introduction-to-libqalculate}

The <span class="application">libqalculate</span> package contains a library that provides functions for a multi-purpose calculator.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/Qalculate/libqalculate/releases/download/v5.11.0/libqalculate-5.11.0.tar.gz">https://github.com/Qalculate/libqalculate/releases/download/v5.11.0/libqalculate-5.11.0.tar.gz</a>

-   Download MD5 sum: 7a442ecab06ed65e2eae3a9b2abfbe0d

-   Download size: 3.5 MB

-   Estimated disk space required: 240 MB (with tests)

-   Estimated build time: 0.6 SBU (With tests; both using parallelism=8)
</div>

### libqalculate Dependencies

#### Required

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>, and <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="ulink" href="http://www.gnuplot.info/download.md">gnuplot</a>
</div>

<div class="installation" lang="en">
## Installation of libqalculate {#installation-of-libqalculate}

Install <span class="application">libqalculate</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libqalculate-5.11.0 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

The libtool archive file from this package is referring to the libraries from <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>. Such a reference may cause packages depending on this package to be unnecessary linked against the ICU libraries, and this can increase the burden of rebuilding packages if ICU is updated to a new major version. As we've explained in <a class="xref" href="../introduction/la-files.md" title="About Libtool Archive (.la) files">Libtool archive (.la) files</a>, these libtool archive files are unneeded anyway. So as the <code class="systemitem">root</code> user, remove the libtool archive file now:

```bash
rm -v /usr/lib/libqalculate.la
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
**Installed Programs:** <span class="segbody">qalc</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libqalculate.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libqalculate, /usr/share/doc/libqalculate-5.11.0, and /usr/share/qalculate</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- ---------------------------------------------------------
  <a id="qalc"></a><span class="command"><span class="term"><strong>qalc</strong></span></span>                      is a powerful and easy to use command line calculator
  <a id="libqalculate.so"></a><span class="term"><code class="filename">libqalculate.so</code></span>   contains the <span class="application">libqalculate</span> API functions
  ----------------------------------------------------------- ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libptytty.md "libptytty-2.0")

    libptytty-2.0

-   [Next](libqmi.md "libqmi-1.38.0")

    libqmi-1.38.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
