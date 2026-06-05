<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libpcap.md "libpcap-1.10.6")

    libpcap-1.10.6

-   [Next](libslirp.md "libslirp-4.9.3")

    libslirp-4.9.3

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libpsl-0.21.5 {#libpsl-0.21.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libpsl {#introduction-to-libpsl}

The <span class="application">libpsl</span> package provides a library for accessing and resolving information from the Public Suffix List (PSL). The PSL is a set of domain names beyond the standard suffixes, such as .com.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/rockdaboot/libpsl/releases/download/0.21.5/libpsl-0.21.5.tar.gz">https://github.com/rockdaboot/libpsl/releases/download/0.21.5/libpsl-0.21.5.tar.gz</a>

-   Download MD5 sum: 870a798ee9860b6e77896548428dba7b

-   Download size: 7.3 MB

-   Estimated disk space required: 50 MB

-   Estimated build time: less than 0.1 SBU (including tests)
</div>

### libpsl Dependencies

#### Recommended

<a class="xref" href="../general/libidn2.md" title="libidn2-2.3.8">libidn2-2.3.8</a> and <a class="xref" href="../general/libunistring.md" title="libunistring-1.4.2">libunistring-1.4.2</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> (for documentation), <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a> (may be used instead of libidn2), <a class="xref" href="../general/libidn.md" title="libidn-1.43">libidn-1.43</a> (may be used instead of libidn2), <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (for tests)
</div>

<div class="installation" lang="en">
## Installation of libpsl {#installation-of-libpsl}

Install <span class="application">libpsl</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&

ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">psl</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libpsl.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------
  <a id="psl"></a><span class="command"><span class="term"><strong>psl</strong></span></span>             queries the Public Suffix List
  <a id="libpsl-lib"></a><span class="term"><code class="filename">libpsl.so</code></span>   contains a library used to access the Public Suffix List
  ------------------------------------------------ ----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libpcap.md "libpcap-1.10.6")

    libpcap-1.10.6

-   [Next](libslirp.md "libslirp-4.9.3")

    libslirp-4.9.3

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
