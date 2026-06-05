<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libusb.md "libusb-1.0.30")

    libusb-1.0.30

-   [Next](libxkbcommon.md "libxkbcommon-1.13.2")

    libxkbcommon-1.13.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libuv-1.52.1 {#libuv-1.52.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libuv {#introduction-to-libuv}

The <span class="application">libuv</span> package is a multi-platform support library with a focus on asynchronous I/O.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://dist.libuv.org/dist/v1.52.1/libuv-v1.52.1.tar.gz">https://dist.libuv.org/dist/v1.52.1/libuv-v1.52.1.tar.gz</a>

-   Download MD5 sum: db711bbe3822dd4fe51fad0cd78baa57

-   Download size: 1.3 MB

-   Estimated disk space required: 33 MB (with tests and man page)

-   Estimated build time: 0.5 SBU (with tests and man page)
</div>

### libuv Dependencies

#### Optional

<a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>
</div>

<div class="installation" lang="en">
## Installation of libuv {#installation-of-libuv}

Install <span class="application">libuv</span> by running the following commands:

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

The <span class="command"><strong>sh autogen.sh</strong></span> command below fails if the ACLOCAL environment variable is set as specified in <a class="xref" href="../x/xorg7.md" title="Introduction to Xorg-7">Xorg-7</a>. If it is used, ACLOCAL needs to be unset for this package and then reset for other packages.
</div>

```bash
sh autogen.sh                              &&
./configure --prefix=/usr --disable-static &&
make 
```

If you installed the optional <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> python module, create the man page:

```bash
make man -C docs
```

If you want to run the tests, run: <span class="command"><strong>make check</strong></span> as a non-root user.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the man page, install it as the <code class="systemitem">root</code> user:

```bash
install -Dm644 docs/build/man/libuv.1 /usr/share/man/man1
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
**Installed Library:** <span class="segbody">libuv.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/uv</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- --------------------------------------------------------
  <a id="libuv.so"></a><span class="term"><code class="filename">libuv.so</code></span>   contains API functions for asynchronous I/O operations
  --------------------------------------------- --------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libusb.md "libusb-1.0.30")

    libusb-1.0.30

-   [Next](libxkbcommon.md "libxkbcommon-1.13.2")

    libxkbcommon-1.13.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
