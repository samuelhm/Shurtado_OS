<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](balsa.md "Balsa-2.6.5")

    Balsa-2.6.5

-   [Next](fontforge.md "FontForge-20251009")

    FontForge-20251009

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# feh-3.12.2 {#feh-3.12.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to feh {#introduction-to-feh}

<span class="application">feh</span> is a fast, lightweight image viewer which uses Imlib2. It is commandline-driven and supports multiple images through slideshows, thumbnail browsing or multiple windows, and montages or index prints (using TrueType fonts to display file info). Advanced features include fast dynamic zooming, progressive loading, loading via HTTP (with reload support for watching webcams), recursive file opening (slideshow of a directory hierarchy), and mouse wheel/keyboard control.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://feh.finalrewind.org/feh-3.12.2.tar.bz2">https://feh.finalrewind.org/feh-3.12.2.tar.bz2</a>

-   Download MD5 sum: 6cc0868b091ea3a73617be64c0a85e27

-   Download size: 2.0 MB

-   Estimated disk space required: 5.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### feh Dependencies

#### Required

<a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a> and <a class="xref" href="../x/imlib2.md" title="imlib2-1.12.6">imlib2-1.12.6</a> (built with <a class="xref" href="../general/giflib.md" title="giflib-6.1.3">giflib-6.1.3</a> support, for the tests)

#### Recommended

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>

#### Optional

<a class="xref" href="../general/libexif.md" title="libexif-0.6.26">libexif-0.6.26</a>

#### Optional (runtime)

<a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a> (for lossless image rotation) and <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a> (to load unsupported formats)

#### Optional (test suite)

<a class="xref" href="../general/perl-modules.md#perl-test-command" title="Test::Command-0.11">Test-Command-0.11</a> (required) and <a class="ulink" href="https://mandoc.bsd.lv/">mandoc</a> (optional)
</div>

<div class="installation" lang="en">
## Installation of feh {#installation-of-feh}

Install <span class="application">feh</span> by running the following commands:

```bash
sed -i "s:doc/feh:&-3.12.2:" config.mk &&
make PREFIX=/usr
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i "s:doc/feh:&-3.12.2:" config.mk</strong></span>: This sed fixes the doc directory to a versioned one, as used in BLFS.

<code class="option">curl=0</code>: Use this make flag if you don't have the cURL package installed.

<code class="option">exif=1</code>: This make flag enables builtin Exif tag display support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">feh</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/feh-3.12.2 and /usr/share/feh</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------- -----------------------------------
  <a id="feh-prog"></a><span class="command"><span class="term"><strong>feh</strong></span></span>   is an image viewer and cataloguer
  ------------------------------------------- -----------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](balsa.md "Balsa-2.6.5")

    Balsa-2.6.5

-   [Next](fontforge.md "FontForge-20251009")

    FontForge-20251009

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
