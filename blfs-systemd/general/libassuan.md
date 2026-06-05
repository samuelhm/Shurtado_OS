<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libarchive.md "libarchive-3.8.7")

    libarchive-3.8.7

-   [Next](libatasmart.md "libatasmart-0.19")

    libatasmart-0.19

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libassuan-3.0.2 {#libassuan-3.0.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libassuan {#introduction-to-libassuan}

The <span class="application">libassuan</span> package contains an inter process communication library used by some of the other <span class="application">GnuPG</span> related packages. <span class="application">libassuan</span>'s primary use is to allow a client to interact with a non-persistent server. <span class="application">libassuan</span> is not, however, limited to use with <span class="application">GnuPG</span> servers and clients. It was designed to be flexible enough to meet the demands of many transaction based environments with non-persistent servers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/libassuan/libassuan-3.0.2.tar.bz2">https://www.gnupg.org/ftp/gcrypt/libassuan/libassuan-3.0.2.tar.bz2</a>

-   Download MD5 sum: c6f1bf4bd2aaa79cd1635dcc070ba51a

-   Download size: 580 KB

-   Estimated disk space required: 6.5 MB (with tests, add 3.4 MB for pdf documentation)

-   Estimated build time: 0.1 SBU (with tests and html documentation)
</div>

### libassuan Dependencies

#### Required

<a class="xref" href="libgpg-error.md" title="libgpg-error-1.61">libgpg-error-1.61</a>

#### Optional

<a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>)
</div>

<div class="installation" lang="en">
## Installation of libassuan {#installation-of-libassuan}

Install <span class="application">libassuan</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make                      &&

make -C doc html                                                       &&
makeinfo --html --no-split -o doc/assuan_nochunks.md doc/assuan.texi &&
makeinfo --plaintext       -o doc/assuan.txt           doc/assuan.texi
```

The above commands build the documentation in html and plaintext formats. If you wish to build alternate formats of the documentation, you must have <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed and issue the following commands:

```bash
make -C doc pdf ps
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

install -v -dm755   /usr/share/doc/libassuan-3.0.2/html &&
install -v -m644 doc/assuan.html/* \
                    /usr/share/doc/libassuan-3.0.2/html &&
install -v -m644 doc/assuan_nochunks.md \
                    /usr/share/doc/libassuan-3.0.2      &&
install -v -m644 doc/assuan.{txt,texi} \
                    /usr/share/doc/libassuan-3.0.2
```

If you built alternate formats of the documentation, install them by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m644  doc/assuan.{pdf,ps,dvi} \
                  /usr/share/doc/libassuan-3.0.2
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libassuan.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/libassuan-3.0.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------
  <a id="libassuan-lib"></a><span class="term"><code class="filename">libassuan.so</code></span>   is an inter process communication library which implements the Assuan protocol
  ------------------------------------------------------ --------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libarchive.md "libarchive-3.8.7")

    libarchive-3.8.7

-   [Next](libatasmart.md "libatasmart-0.19")

    libatasmart-0.19

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
