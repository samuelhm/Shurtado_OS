<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libnvme.md "libnvme-1.16.1")

    libnvme-1.16.1

-   [Next](libportal.md "libportal-0.9.1")

    libportal-0.9.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libpaper-2.2.8 {#libpaper-2.2.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libpaper {#introduction-to-libpaper}

This package is intended to provide a simple way for applications to take actions based on a system or user-specified paper size.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/rrthomas/libpaper/releases/download/v2.2.8/libpaper-2.2.8.tar.gz">https://github.com/rrthomas/libpaper/releases/download/v2.2.8/libpaper-2.2.8.tar.gz</a>

-   Download MD5 sum: 6ec14207927c291631062338e148bf27

-   Download size: 1.3 MB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of libpaper {#installation-of-libpaper}

Install <span class="application">libpaper</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --docdir=/usr/share/doc/libpaper-2.2.8 &&
make
```

The test suite of this package does not work with a configuration using the standard installation location.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="configuration" lang="en">
## Configuring libpaper {#configuring-libpaper}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The paper size is automatically determined from the system locale; see <code class="literal">LC_PAPER</code> in <a class="ulink" href="https://man.archlinux.org/man/locale.7">locale(7)</a>. If you want to override it, create a <code class="filename">papersize</code> file in the user configuration directory. For example:

```bash
mkdir -pv ~/.config &&
echo "a4" > ~/.config/papersize
```

If you want to override the paper size globally (for all users), set up the <code class="envar">PAPERSIZE</code> environment variable. For example:

```bash
echo "PAPERSIZE=a4" > /etc/profile.d/libpaper.sh
```

You may use a different paper size, such as <code class="literal">letter</code>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">paper and paperconf</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libpaper.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/libpaper-2.2.8</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------------------
  <a id="paper"></a><span class="command"><span class="term"><strong>paper</strong></span></span>             prints paper configuration information
  <a id="paperconf"></a><span class="command"><span class="term"><strong>paperconf</strong></span></span>     prints paper configuration information in a compatibility mode
  <a id="libpaper-lib"></a><span class="term"><code class="filename">libpaper.so</code></span>   contains functions for interrogating the paper library
  ---------------------------------------------------- ----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libnvme.md "libnvme-1.16.1")

    libnvme-1.16.1

-   [Next](libportal.md "libportal-0.9.1")

    libportal-0.9.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
