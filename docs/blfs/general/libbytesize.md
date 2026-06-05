<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libblockdev.md "libblockdev-3.5.0")

    libblockdev-3.5.0

-   [Next](libclc.md "libclc-22.1.0")

    libclc-22.1.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libbytesize-2.12 {#libbytesize-2.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libbytesize {#introduction-to-libbytesize}

The <span class="application">libbytesize</span> package is a library which facilitates the common operations with sizes in bytes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/storaged-project/libbytesize/releases/download/2.12/libbytesize-2.12.tar.gz">https://github.com/storaged-project/libbytesize/releases/download/2.12/libbytesize-2.12.tar.gz</a>

-   Download MD5 sum: 5314b773b20d1f3acdf3b2bf0c92549f

-   Download size: 464 KB

-   Estimated disk space required: 3.6 MB

-   Estimated build time: less than 0.1 SBU (including tests)
</div>

### libbytesize Dependencies

#### Required

<a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="ulink" href="https://github.com/rhinstaller/pocketlint/releases">pocketlint</a> (python module for one test), and <a class="ulink" href="https://pypi.python.org/pypi/polib">polib</a> (python module for one test)
</div>

<div class="installation" lang="en">
## Installation of libbytesize {#installation-of-libbytesize}

Install <span class="application">libbytesize</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

If you have the optional python modules installed, the regression tests can be run with: <span class="command"><strong>make check</strong></span>.

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
**Installed Programs:** <span class="segbody">bscalc</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libbytesize.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/bytesize and /usr/lib/python3.14/site-packages/bytesize</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------------------
  <a id="bscalc"></a><span class="command"><span class="term"><strong>bscalc</strong></span></span>                 converts from a larger unit, such as MB or TB, back to a value in bytes
  <a id="libbytesize-lib"></a><span class="term"><code class="filename">libbytesize.so</code></span>   contains functions used to handle common read/write operations with sizes in bytes
  ---------------------------------------------------------- ------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libblockdev.md "libblockdev-3.5.0")

    libblockdev-3.5.0

-   [Next](libclc.md "libclc-22.1.0")

    libclc-22.1.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
