<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libssh2.md "libssh2-1.11.1")

    libssh2-1.11.1

-   [Next](libtasn1.md "libtasn1-4.21.0")

    libtasn1-4.21.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libstatgrab-0.92.1 {#libstatgrab-0.92.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libstatgrab {#introduction-to-libstatgrab}

This is a library that provides cross platform access to statistics about the system on which it's run. It's written in C and presents a selection of useful interfaces which can be used to access key system statistics. The current list of statistics includes CPU usage, memory utilisation, disk usage, process counts, network traffic, disk I/O, and more.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.mirrorservice.org/sites/ftp.i-scream.org/pub/i-scream/libstatgrab/libstatgrab-0.92.1.tar.gz">https://www.mirrorservice.org/sites/ftp.i-scream.org/pub/i-scream/libstatgrab/libstatgrab-0.92.1.tar.gz</a>

-   Download MD5 sum: af685494e985229e0ac46365bc0cd50e

-   Download size: 800 KB

-   Estimated disk space required: 7.6 MB (with tests)

-   Estimated build time: 0.1 SBU (add 1.5 SBU for tests)
</div>

### libstatgrab Dependencies

#### Optional

<a class="xref" href="log4cplus.md" title="log4cplus-2.1.2">log4cplus-2.1.2</a>
</div>

<div class="installation" lang="en">
## Installation of libstatgrab {#installation-of-libstatgrab}

Install <span class="application">libstatgrab</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libstatgrab-0.92.1 &&
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
**Installed Programs:** <span class="segbody">saidar, statgrab, statgrab-make-mrtg-config, and statgrab-make-mrtg-index</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libstatgrab.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/libstatgrab-0.92.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------------- ----------------------------------------------------------------------
  <a id="saidar"></a><span class="command"><span class="term"><strong>saidar</strong></span></span>                                         is a curses-based tool for viewing system statistics
  <a id="statgrab"></a><span class="command"><span class="term"><strong>statgrab</strong></span></span>                                     is a sysctl-style interface to system statistics
  <a id="statgrab-make-mrtg-config"></a><span class="command"><span class="term"><strong>statgrab-make-mrtg-config</strong></span></span>   generates MRTG configuration
  <a id="statgrab-make-mrtg-index"></a><span class="command"><span class="term"><strong>statgrab-make-mrtg-index</strong></span></span>     generates an XHTML index page from MRTG configuration files or stdin
  <a id="libstatgrab-lib"></a><span class="term"><code class="filename">libstatgrab.so</code></span>                           contains the <span class="application">libstatgrab</span> API functions
  ---------------------------------------------------------------------------------- ----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libssh2.md "libssh2-1.11.1")

    libssh2-1.11.1

-   [Next](libtasn1.md "libtasn1-4.21.0")

    libtasn1-4.21.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
