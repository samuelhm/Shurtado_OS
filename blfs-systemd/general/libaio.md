<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](keyutils.md "keyutils-1.6.3")

    keyutils-1.6.3

-   [Next](libarchive.md "libarchive-3.8.7")

    libarchive-3.8.7

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libaio-0.3.113 {#libaio-0.3.113}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libaio {#introduction-to-libaio}

The <span class="application">libaio</span> package is an asynchronous I/O facility ("async I/O", or "aio") that has a richer API and capability set than the simple POSIX async I/O facility. This library, libaio, provides the Linux-native API for async I/O. The POSIX async I/O facility requires this library in order to provide kernel-accelerated async I/O capabilities, as do applications which require the Linux-native async I/O API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://pagure.io/libaio/archive/libaio-0.3.113/libaio-0.3.113.tar.gz">https://pagure.io/libaio/archive/libaio-0.3.113/libaio-0.3.113.tar.gz</a>

-   Download MD5 sum: 605237f35de238dfacc83bcae406d95d

-   Download size: 48 KB

-   Estimated disk space required: 1.0 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of libaio {#installation-of-libaio}

First, disable the installation of the static library:

```bash
sed -i '/install.*libaio.a/s/^/#/' src/Makefile
```

Next, fix an issue in the test suite:

```bash
case "$(uname -m)" in
  i?86) sed -e "s/off_t/off64_t/" -i harness/cases/23.t ;;
esac
```

Build <span class="application">libaio</span> by running the following command:

```bash
make
```

To test the results, issue: <span class="command"><strong>make partcheck</strong></span>.

Now, install the package as the <code class="systemitem">root</code> user:

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
**Installed Library:** <span class="segbody">libaio.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -----------------------
  <a id="libaio-lib"></a><span class="term"><code class="filename">libaio.so</code></span>   is the libaio library
  ------------------------------------------------ -----------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](keyutils.md "keyutils-1.6.3")

    keyutils-1.6.3

-   [Next](libarchive.md "libarchive-3.8.7")

    libarchive-3.8.7

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
