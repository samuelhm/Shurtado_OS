<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libaio.md "libaio-0.3.113")

    libaio-0.3.113

-   [Next](libassuan.md "libassuan-3.0.2")

    libassuan-3.0.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libarchive-3.8.7 {#libarchive-3.8.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libarchive {#introduction-to-libarchive}

The <span class="application">libarchive</span> library provides a single interface for reading/writing various compression formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libarchive/libarchive/releases/download/v3.8.7/libarchive-3.8.7.tar.xz">https://github.com/libarchive/libarchive/releases/download/v3.8.7/libarchive-3.8.7.tar.xz</a>

-   Download MD5 sum: dd48e73d519e309ce08ce76a004fb0e0

-   Download size: 5.8 MB

-   Estimated disk space required: 86 MB (with tests)

-   Estimated build time: 0.2 SBU (add 0.3 SBU for tests)
</div>

### libarchive Dependencies

#### Optional

<a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="lzo.md" title="LZO-2.10">LZO-2.10</a>, and <a class="xref" href="../postlfs/nettle.md" title="Nettle-4.0">Nettle-4.0</a>
</div>

<div class="installation" lang="en">
## Installation of libarchive {#installation-of-libarchive}

Install <span class="application">libarchive</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span> as a non-<code class="systemitem">root</code> user.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Still as the <code class="systemitem">root</code> user, create a symlink so we can use <span class="command"><strong>bsdunzip</strong></span> as <span class="command"><strong>unzip</strong></span>, instead of relying on the unmaintained Unzip package:

```bash
ln -sfv bsdunzip /usr/bin/unzip
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

As discussed in <a class="xref" href="../introduction/locale-issues.md#locale-wrong-filename-encoding" title="The Program Uses or Creates Filenames in the Wrong Encoding">Wrong Filename Encoding</a>, if the Zip archive to be extracted contains any file with a name containing any non-Latin characters, you need to manually specify the encoding of those characters or they will be turned into unreadable sequences in the extracted file name. For example, if a Zip archive created with WinZip, <code class="filename">archive.zip</code>, contains a file named with Simplified Chinese characters, the encoding should be CP936 and the *`-I cp936`* option should be used. I.e. the command to extract the archive should be <span class="command"><strong>unzip -I cp936 archive.zip</strong></span>.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--without-xml2</code>: This switch uses expat for xar archive format support instead of libxml2 (which is preferred) if both packages are installed.

<code class="option">--with-nettle</code>: This switch uses Nettle for crypto support instead of OpenSSL. This support is known to be broken upstream due to Nettle-4.0.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">bsdcat, bsdcpio, bsdtar, bsdunzip, and unzip (symlink to bsdunzip)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libarchive.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -------------------------------------------------------------------------
  <a id="bsdcat"></a><span class="command"><span class="term"><strong>bsdcat</strong></span></span>               expands files to standard output
  <a id="bsdcpio"></a><span class="command"><span class="term"><strong>bsdcpio</strong></span></span>             is a tool similar to <span class="command"><strong>cpio</strong></span>
  <a id="bsdtar"></a><span class="command"><span class="term"><strong>bsdtar</strong></span></span>               is a tool similar to GNU <span class="command"><strong>tar</strong></span>
  <a id="bsdunzip"></a><span class="command"><span class="term"><strong>bsdunzip</strong></span></span>           is a tool similar to Info-ZIP <span class="command"><strong>unzip</strong></span>
  <a id="libarchive-lib"></a><span class="term"><code class="filename">libarchive.so</code></span>   is a library that can create and read several streaming archive formats
  -------------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libaio.md "libaio-0.3.113")

    libaio-0.3.113

-   [Next](libassuan.md "libassuan-3.0.2")

    libassuan-3.0.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
