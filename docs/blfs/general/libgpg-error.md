<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgcrypt.md "libgcrypt-1.12.2")

    libgcrypt-1.12.2

-   [Next](libgsf.md "libgsf-1.14.58")

    libgsf-1.14.58

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgpg-error-1.61 {#libgpg-error-1.61}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgpg-error {#introduction-to-libgpg-error}

The <span class="application">libgpg-error</span> package contains a library that defines common error values for all <span class="application">GnuPG</span> components.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.61.tar.bz2">https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.61.tar.bz2</a>

-   Download MD5 sum: c89a8c6825cb64c527d5c1c0fb36f245

-   Download size: 1.1 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of libgpg-error {#installation-of-libgpg-error}

Install <span class="application">libgpg-error</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m644 -D README /usr/share/doc/libgpg-error-1.61/README
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gpg-error, gpgrt-config, and yat2m</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgpg-error.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/common-lisp/source/gpg-error, /usr/share/libgpg-error, and /usr/share/doc/libgpg-error-1.61</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------
  <a id="gpg-error"></a><span class="command"><span class="term"><strong>gpg-error</strong></span></span>             is used to determine <span class="application">libgpg-error</span> error codes
  <a id="gpgrt-config"></a><span class="command"><span class="term"><strong>gpgrt-config</strong></span></span>       is a <span class="command"><strong>pkg-config</strong></span> style tool for querying the information about installed version of libgpg-error
  <a id="yat2m"></a><span class="command"><span class="term"><strong>yat2m</strong></span></span>                     extracts man pages from a Texinfo source
  <a id="libgpg-error-lib"></a><span class="term"><code class="filename">libgpg-error.so</code></span>   contains the <span class="application">libgpg-error</span> API functions
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgcrypt.md "libgcrypt-1.12.2")

    libgcrypt-1.12.2

-   [Next](libgsf.md "libgsf-1.14.58")

    libgsf-1.14.58

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
