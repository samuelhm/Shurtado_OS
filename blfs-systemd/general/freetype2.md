<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](exiv2.md "Exiv2-0.28.8")

    Exiv2-0.28.8

-   [Next](fontconfig.md "Fontconfig-2.18.1")

    Fontconfig-2.18.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# FreeType-2.14.3 {#freetype-2.14.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to FreeType2 {#introduction-to-freetype2}

The <span class="application">FreeType2</span> package contains a library which allows applications to properly render <span class="application">TrueType</span> fonts.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/freetype/freetype-2.14.3.tar.xz">https://downloads.sourceforge.net/freetype/freetype-2.14.3.tar.xz</a>

-   Download MD5 sum: 5e78e6fdce5a61d3075e4c25e9852f84

-   Download size: 2.6 MB

-   Estimated disk space required: 51 MB (with additional documentation)

-   Estimated build time: 0.2 SBU (with additional documentation)
</div>

### Additional Downloads

<div class="itemizedlist">
**Additional Documentation**

-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/freetype/freetype-doc-2.14.3.tar.xz">https://downloads.sourceforge.net/freetype/freetype-doc-2.14.3.tar.xz</a>

-   Download MD5 sum: a9a92aa403d7c1b4eed6ee452dc23305

-   Download size: 2.1 MB
</div>

### FreeType2 Dependencies

#### Recommended

<a class="xref" href="harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a> (runtime), <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, and <a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a>

#### Optional

<a class="xref" href="brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a> and <a class="xref" href="librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>

#### Optional (for documentation)

<a class="ulink" href="https://pypi.org/project/docwriter/">docwriter</a>
</div>

<div class="installation" lang="en">
## Installation of FreeType2 {#installation-of-freetype2}

If you downloaded the additional documentation, unpack it into the source tree using the following command:

```bash
tar -xf ../freetype-doc-2.14.3.tar.xz --strip-components=2 -C docs
```

Install <span class="application">FreeType2</span> by running the following commands:

```bash
sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg &&

sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" \
    -i include/freetype/config/ftoption.h   &&

./configure --prefix=/usr            \
            --disable-static         \
            --enable-freetype-config \
            --with-harfbuzz=dynamic  &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you downloaded the optional documentation, install it as the <code class="systemitem">root</code> user:

```bash
cp -v -R docs -T /usr/share/doc/freetype-2.14.3 &&
rm -v /usr/share/doc/freetype-2.14.3/freetype-config.1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -ri ...</strong></span>: First command enables GX/AAT and OpenType table validation and second command enables Subpixel Rendering. Note that Subpixel Rendering may have patent issues. Be sure to read the <code class="literal">'Other patent issues'</code> part of <a class="ulink" href="https://freetype.org/patents.md">https://freetype.org/patents.html</a> before enabling this option.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-freetype-config`*: This switch ensures that the man page for freetype-config is installed.

*`--with-harfbuzz=dynamic`*: This switch ensures that HarfBuzz is loaded dynamically, skipping the requirement to rebuild this package after HarfBuzz is installed.

<code class="option">--without-harfbuzz</code>: If <span class="application">harfbuzz</span> is installed prior to <span class="application">freetype</span> without <span class="application">freetype</span> support, use this switch to avoid a build failure.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">freetype-config</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfreetype.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/freetype2 and /usr/share/doc/freetype-2.14.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ---------------------------------------------------------------------------------
  <a id="freetype-config"></a><span class="command"><span class="term"><strong>freetype-config</strong></span></span>   is used to get <span class="application">FreeType</span> compilation and linking information
  <a id="libfreetype"></a><span class="term"><code class="filename">libfreetype.so</code></span>           contains functions for rendering various font types, such as TrueType and Type1
  -------------------------------------------------------------- ---------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](exiv2.md "Exiv2-0.28.8")

    Exiv2-0.28.8

-   [Next](fontconfig.md "Fontconfig-2.18.1")

    Fontconfig-2.18.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
