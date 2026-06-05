<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](opentimelineio.md "OpenTimelineIO-0.18.1")

    OpenTimelineIO-0.18.1

-   [Next](protobuf.md "Protobuf-35.0")

    Protobuf-35.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Popt-1.19 {#popt-1.19}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Popt {#introduction-to-popt}

The <span class="application">popt</span> package contains the <span class="application">popt</span> libraries which are used by some programs to parse command-line options.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftp.osuosl.org/pub/rpm/popt/releases/popt-1.x/popt-1.19.tar.gz">https://ftp.osuosl.org/pub/rpm/popt/releases/popt-1.x/popt-1.19.tar.gz</a>

-   Download MD5 sum: eaa2135fddb6eb03f2c87ee1823e5a78

-   Download size: 584 KB

-   Estimated disk space required: 6.9 MB (includes installing documentation and tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### popt Dependencies

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for generating documentation)
</div>

<div class="installation" lang="en">
## Installation of Popt {#installation-of-popt}

Install <span class="application">popt</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

If you have <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed and wish to build the API documentation, issue:

```bash
sed -i 's@\./@src/@' Doxyfile &&
doxygen
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the API documentation, install it using the following commands issued by the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d /usr/share/doc/popt-1.19 &&
install -v -m644 doxygen/html/* /usr/share/doc/popt-1.19
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libpopt.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/popt-1.19</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ---------------------------------------
  <a id="libpopt"></a><span class="term"><code class="filename">libpopt.so</code></span>   is used to parse command-line options
  ---------------------------------------------- ---------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](opentimelineio.md "OpenTimelineIO-0.18.1")

    OpenTimelineIO-0.18.1

-   [Next](protobuf.md "Protobuf-35.0")

    Protobuf-35.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
