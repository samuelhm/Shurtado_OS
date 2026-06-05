<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](docbook-4.5-dtd.md "docbook-4.5-dtd")

    docbook-4.5-dtd

-   [Next](openjade.md "OpenJade-1.3.2")

    OpenJade-1.3.2

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# OpenSP-1.5.2 {#opensp-1.5.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to OpenSP {#introduction-to-opensp}

The <span class="application">OpenSP</span> package contains a <span class="application">C++</span> library for using SGML/XML files. This is useful for validating, parsing and manipulating SGML and XML documents.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz">https://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz</a>

-   Download MD5 sum: 670b223c5d12cee40c9137be86b6c39b

-   Download size: 1.5 MB

-   Estimated disk space required: 32 MB

-   Estimated build time: 1.0 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/OpenSP-1.5.2-gcc14-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/OpenSP-1.5.2-gcc14-1.patch</a>
</div>

### OpenSP Dependencies

#### Required

<a class="xref" href="sgml-common.md" title="sgml-common-0.6.3">sgml-common-0.6.3</a>

#### Optional

<a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a> and <a class="xref" href="xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>
</div>

<div class="installation" lang="en">
## Installation of OpenSP {#installation-of-opensp}

Install <span class="application">OpenSP</span> by running the following commands:

```bash
patch -Np1 -i ../OpenSP-1.5.2-gcc14-1.patch              &&
sed -i 's/32,/253,/' lib/Syntax.cxx                      &&
sed -i 's/LITLEN          240 /LITLEN          8092/'    \
    unicode/{gensyntax.pl,unicode.syn}                   &&

./configure --prefix=/usr                                \
            --disable-static                             \
            --disable-doc-build                          \
            --enable-default-catalog=/etc/sgml/catalog   \
            --enable-http                                \
            --enable-default-search-path=/usr/share/sgml &&

make pkgdatadir=/usr/share/sgml/OpenSP-1.5.2
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. The <code class="filename">catalog-2</code>, <code class="filename">af-7</code>, <code class="filename">af-8</code>, <code class="filename">af-9</code>, <code class="filename">af-10</code>, and <code class="filename">af-11</code> tests are known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
make pkgdatadir=/usr/share/sgml/OpenSP-1.5.2 \
     docdir=/usr/share/doc/OpenSP-1.5.2      \
     install &&

ln -v -sf onsgmls   /usr/bin/nsgmls   &&
ln -v -sf osgmlnorm /usr/bin/sgmlnorm &&
ln -v -sf ospam     /usr/bin/spam     &&
ln -v -sf ospcat    /usr/bin/spcat    &&
ln -v -sf ospent    /usr/bin/spent    &&
ln -v -sf osx       /usr/bin/sx       &&
ln -v -sf osx       /usr/bin/sgml2xml &&
ln -v -sf libosp.so /usr/lib/libsp.so
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i 's/32,/253,/...unicode.syn}</strong></span>: These seds prevent some annoying messages that may otherwise appear while running <span class="command"><strong>openjade</strong></span>.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-http`*: This switch adds support for HTTP.

*`--disable-doc-build`*: This switch prevents the <span class="command"><strong>configure</strong></span> script checking if you have <span class="application">xmlto</span> installed. If you have <span class="application">xmlto</span>, you can remove this option.

*`--enable-default-catalog=/etc/sgml/catalog`*: This switch sets the path to the centralized catalog.

*`--enable-default-search-path`*: This switch sets the default value of <code class="envar">SGML_SEARCH_PATH</code>.

<code class="option">--enable-xml-messages</code>: This switch adds support for XML Formatted Messages.

<span class="command"><strong>make pkgdatadir=/usr/share/sgml/OpenSP-1.5.2</strong></span> : This sets the pkgdatadir variable in the <code class="filename">Makefile</code> from <code class="filename">/usr/share/OpenSP</code> to <code class="filename">/usr/share/sgml/OpenSP-1.5.2</code>.

<span class="command"><strong>ln -v -sf ...</strong></span>: These commands create the <span class="application">SP</span> equivalents of <span class="application">OpenSP</span> executables and libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="application">onsgmls, osgmlnorm, ospam, ospcat, ospent, osx, and the <span class="segbody">SP</span> equivalent symlinks: nsgmls, sgml2xml, sgmlnorm, spam, spcat, spent, and sx</span>
</div>

<div class="seg">
**Installed Library:** <span class="application">libosp.so and the <span class="segbody">SP</span> equivalent symlink: libsp.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/OpenSP, /usr/share/doc/OpenSP, and /usr/share/sgml/OpenSP-1.5.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="onsgmls"></a><span class="command"><span class="term"><strong>onsgmls</strong></span></span>       is used to process SGML files
  <a id="osgmlnorm"></a><span class="command"><span class="term"><strong>osgmlnorm</strong></span></span>   prints on the standard output a normalized document instance for the SGML document contained in the concatenation of the entities with system identifiers .nf and .fi
  <a id="ospam"></a><span class="command"><span class="term"><strong>ospam</strong></span></span>           is a markup stream editor
  <a id="ospcat"></a><span class="command"><span class="term"><strong>ospcat</strong></span></span>         prints effective system identifiers found in the catalogs
  <a id="ospent"></a><span class="command"><span class="term"><strong>ospent</strong></span></span>         provides access to <span class="application">OpenSP</span>'s entity manager
  <a id="osx"></a><span class="command"><span class="term"><strong>osx</strong></span></span>               is an SGML normalizer or used to convert SGML files to XML files
  <a id="nsgmls"></a><span class="command"><span class="term"><strong>nsgmls</strong></span></span>         is a symlink to <span class="command"><strong>onsgmls</strong></span>
  <a id="sgml2xml"></a><span class="command"><span class="term"><strong>sgml2xml</strong></span></span>     is a symlink to <span class="command"><strong>osx</strong></span>
  <a id="sgmlnorm"></a><span class="command"><span class="term"><strong>sgmlnorm</strong></span></span>     is a symlink to <span class="command"><strong>osgmlnorm</strong></span>
  <a id="spam"></a><span class="command"><span class="term"><strong>spam</strong></span></span>             is a symlink to <span class="command"><strong>ospam</strong></span>
  <a id="spcat"></a><span class="command"><span class="term"><strong>spcat</strong></span></span>           is a symlink to <span class="command"><strong>ospcat</strong></span>
  <a id="spent"></a><span class="command"><span class="term"><strong>spent</strong></span></span>           is a symlink to <span class="command"><strong>ospent</strong></span>
  <a id="sx"></a><span class="command"><span class="term"><strong>sx</strong></span></span>                 is a symlink to <span class="command"><strong>osx</strong></span>
  <a id="libosp"></a><span class="term"><code class="filename">libosp.so</code></span>         contains functions required by the <span class="application">OpenSP</span> programs to parse, validate and manipulate SGML and XML files
  <a id="libsp"></a><span class="term"><code class="filename">libsp.so</code></span>           is a symlink to <code class="filename">libosp.so</code>
  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](docbook-4.5-dtd.md "docbook-4.5-dtd")

    docbook-4.5-dtd

-   [Next](openjade.md "OpenJade-1.3.2")

    OpenJade-1.3.2

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
