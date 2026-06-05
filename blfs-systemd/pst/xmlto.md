<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](itstool.md "itstool-2.0.7")

    itstool-2.0.7

-   [Next](ps.md "PostScript")

    PostScript

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xmlto-0.0.29 {#xmlto-0.0.29}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xmlto {#introduction-to-xmlto}

The <span class="application">xmlto</span> package is a front-end to a XSL toolchain. It chooses an appropriate stylesheet for the conversion you want and applies it using an external XSLT processor. It also performs any necessary post-processing.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://pagure.io/xmlto/archive/0.0.29/xmlto-0.0.29.tar.gz">https://pagure.io/xmlto/archive/0.0.29/xmlto-0.0.29.tar.gz</a>

-   Download MD5 sum: 556f2642cdcd005749bd4c08bc621c37

-   Download size: 64 KB

-   Estimated disk space required: 1.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### xmlto Dependencies

#### Required

<a class="xref" href="docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, and <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>

#### Optional (for DVI, PDF, and postscript backend post-processing)

<a class="xref" href="fop.md" title="fop-2.11">fop-2.11</a>, <a class="ulink" href="https://sourceforge.net/projects/dblatex/files/dblatex/">dblatex</a>, and <a class="ulink" href="https://www.garshol.priv.no/download/xmltools/prod/PassiveTeX.md">PassiveTeX</a>

#### Optional (for text backend post-processing)

One of <a class="xref" href="../basicnet/links.md" title="Links-2.30">Links-2.30</a>, <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a>, <a class="ulink" href="https://w3m.sourceforge.net/">W3m</a>, or <a class="ulink" href="http://elinks.or.cz">ELinks</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/xmlto">https://wiki.linuxfromscratch.org/blfs/wiki/xmlto</a>
</div>

<div class="installation" lang="en">
## Installation of xmlto {#installation-of-xmlto}

Install <span class="application">xmlto</span> by running the following commands:

```bash
autoreconf -fiv                                  &&
LINKS="/usr/bin/links" ./configure --prefix=/usr &&

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

<code class="envar">LINKS="/usr/bin/links"</code>: This environment variable fixes a bug causing <span class="command"><strong>xmlto</strong></span> to think that <span class="command"><strong>links</strong></span> command is the same as <span class="command"><strong>elinks</strong></span>. Setting this variable does not cause problems if <a class="xref" href="../basicnet/links.md" title="Links-2.30">Links-2.30</a> is not installed, unless you have <a class="ulink" href="http://elinks.or.cz/">ELinks</a> installed, and you wish to use it for text backend post-processing. If you do wish to ELinks, you should remove this environment variable.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xmlif and xmlto</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/xmlto</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------
  <a id="xmlif"></a><span class="command"><span class="term"><strong>xmlif</strong></span></span>        is a conditional processing instructions for XML
  <a id="xmlto-prog"></a><span class="command"><span class="term"><strong>xmlto</strong></span></span>   applies an XSL stylesheet to an XML document
  ----------------------------------------------- --------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](itstool.md "itstool-2.0.7")

    itstool-2.0.7

-   [Next](ps.md "PostScript")

    PostScript

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
