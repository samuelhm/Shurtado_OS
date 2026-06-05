<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libmypaint.md "libmypaint-1.6.1")

    libmypaint-1.6.1

-   [Next](libqrencode.md "libqrencode-4.1.1")

    libqrencode-4.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libpng-1.6.58 {#libpng-1.6.58}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libpng {#introduction-to-libpng}

The <span class="application">libpng</span> package contains libraries used by other programs for reading and writing PNG files. The PNG format was designed as a replacement for GIF and, to a lesser extent, TIFF, with many improvements and extensions and lack of patent problems.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/libpng/libpng-1.6.58.tar.xz">https://downloads.sourceforge.net/libpng/libpng-1.6.58.tar.xz</a>

-   Download MD5 sum: c6c372a9d7754c66e0b77a8d34987a3b

-   Download size: 1.1 MB

-   Estimated disk space required: 17 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Recommended patch to include animated png functionality in <span class="application">libpng</span> (required to use the system <span class="application">libpng</span> in <span class="application">Firefox</span>, <span class="application">Seamonkey</span>, and <span class="application">Thunderbird</span>): <a class="ulink" href="https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.58-apng.patch.gz">https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.58-apng.patch.gz</a>

-   Patch md5sum: 1eef1ddd6def88814d1a65ce1f4dceb9
</div>
</div>

<div class="installation" lang="en">
## Installation of libpng {#installation-of-libpng}

If you want to patch libpng to support apng files, apply it here:

```bash
zcat ../libpng-1.6.58-apng.patch.gz | patch -p1
```

Install <span class="application">libpng</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -vDm644 README libpng-manual.txt -t /usr/share/doc/libpng-1.6.58
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
**Installed Programs:** <span class="segbody">libpng-config (symlink), libpng16-config, pngfix and png-fix-itxt</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpng.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libpng16 and /usr/share/doc/libpng-1.6.58</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
  <a id="pngfix"></a><span class="command"><span class="term"><strong>pngfix</strong></span></span>                 tests, optimizes and optionally fixes the zlib header in PNG files. Optionally, when fixing, strips ancillary chunks from the file
  <a id="png-fix-itxt"></a><span class="command"><span class="term"><strong>png-fix-itxt</strong></span></span>     fixes PNG files that have an incorrect length field in the iTXt chunks
  <a id="libpng-config"></a><span class="command"><span class="term"><strong>libpng-config</strong></span></span>   is a shell script that provides configuration information for applications wanting to use <span class="application">libpng</span>
  <a id="libpng-lin"></a><span class="term"><code class="filename">libpng.so</code></span>             contain routines used to create and manipulate PNG format graphics files
  ---------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libmypaint.md "libmypaint-1.6.1")

    libmypaint-1.6.1

-   [Next](libqrencode.md "libqrencode-4.1.1")

    libqrencode-4.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
