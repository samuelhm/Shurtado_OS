<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libtasn1.md "libtasn1-4.21.0")

    libtasn1-4.21.0

-   [Next](libunwind.md "libunwind-1.8.3")

    libunwind-1.8.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libunistring-1.4.2 {#libunistring-1.4.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libunistring {#introduction-to-libunistring}

<span class="application">libunistring</span> is a library that provides functions for manipulating Unicode strings and for manipulating C strings according to the Unicode standard.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/libunistring/libunistring-1.4.2.tar.xz">https://ftpmirror.gnu.org/libunistring/libunistring-1.4.2.tar.xz</a>

-   Download MD5 sum: e033195d90d0803063f3fecc77148124

-   Download size: 2.7 MB

-   Estimated disk space required: 58 MB (add 46 MB for tests)

-   Estimated build time: 0.6 SBU (add 0.3 SBU for tests; both using parallelism=4)
</div>

### libunistring Dependencies

#### Optional

<a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>) (to rebuild the documentation)
</div>

<div class="installation" lang="en">
## Installation of libunistring {#installation-of-libunistring}

Install <span class="application">libunistring</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libunistring-1.4.2 &&
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libunistring.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/unistring and /usr/share/doc/libunistring-1.4.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------- -----------------------------------------
  <a id="libunistring-lib"></a><span class="command"><span class="term"><strong>libunistring.so</strong></span></span>   provides the unicode string library API
  --------------------------------------------------------------- -----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libtasn1.md "libtasn1-4.21.0")

    libtasn1-4.21.0

-   [Next](libunwind.md "libunwind-1.8.3")

    libunwind-1.8.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
