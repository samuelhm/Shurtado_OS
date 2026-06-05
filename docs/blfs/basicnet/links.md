<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 18. Text Web Browsers

-   [Prev](textweb.md "Text Web Browsers")

    Text Web Browsers

-   [Next](lynx.md "Lynx-2.9.3")

    Lynx-2.9.3

-   [Up](textweb.md "Chapter 18. Text Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Links-2.30 {#links-2.30}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Links {#introduction-to-links}

<span class="application">Links</span> is a text and graphics mode WWW browser. It includes support for rendering tables and frames, features background downloads, can display colors and has many other features.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://links.twibright.com/download/links-2.30.tar.bz2">http://links.twibright.com/download/links-2.30.tar.bz2</a>

-   Download MD5 sum: dc56041551980c74dd354cd7c2882539

-   Download size: 6.3 MB

-   Estimated disk space required: 36 MB

-   Estimated build time: 0.2 SBU
</div>

### Links Dependencies

#### Recommended

<a class="xref" href="libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>

#### Optional

Graphics mode requires at least one of <a class="xref" href="../general/gpm.md" title="GPM-1.20.7">GPM-1.20.7</a> (mouse support to be used with a framebuffer-based console), <a class="ulink" href="https://www.svgalib.org/">SVGAlib</a>, <a class="ulink" href="https://pkgs.fedoraproject.org/repo/pkgs/directfb/">DirectFB</a>, and <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>

For decoding various image formats <span class="application">Links</span> can utilize <a class="xref" href="../general/libavif.md" title="libavif-1.4.2">libavif-1.4.2</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, and <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>

For decompressing web pages that are compressed with Brotli, <span class="application">Links</span> can utilize <a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>
</div>

<div class="installation" lang="en">
## Installation of Links {#installation-of-links}

First, fix an issue introduced by glibc-2.43 and higher:

```bash
sed '/*strchr/s/cast_const_char //g' -i ftp.c
```

Install <span class="application">Links</span> by running the following commands:

```bash
./configure --prefix=/usr --mandir=/usr/share/man &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -d -m755 /usr/share/doc/links-2.30 &&
install -v -m644 doc/links_cal/* KEYS BRAILLE_HOWTO \
    /usr/share/doc/links-2.30
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-graphics</code>: This switch enables support for graphics mode.
</div>

<div class="configuration" lang="en">
## Configuring Links {#configuring-links}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.links/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">Links</span> stores its configuration in per-user files in the <code class="filename">~/.links</code> directory. These files are created automatically when <span class="command"><strong>links</strong></span> is run for the first time.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">links</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/links-2.30</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------ -----------------------------------------
  <a id="links"></a><span class="command"><span class="term"><strong>links</strong></span></span>   is a text and graphics mode WWW browser
  ------------------------------------------ -----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](textweb.md "Text Web Browsers")

    Text Web Browsers

-   [Next](lynx.md "Lynx-2.9.3")

    Lynx-2.9.3

-   [Up](textweb.md "Chapter 18. Text Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
