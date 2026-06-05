<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libxmlb.md "libxmlb-0.3.27")

    libxmlb-0.3.27

-   [Next](libwacom.md "libwacom-2.19.0")

    libwacom-2.19.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxslt-1.1.45 {#libxslt-1.1.45}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxslt {#introduction-to-libxslt}

The <span class="application">libxslt</span> package contains XSLT libraries used for extending <code class="filename">libxml2</code> libraries to support XSLT files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libxslt/1.1/libxslt-1.1.45.tar.xz">https://download.gnome.org/sources/libxslt/1.1/libxslt-1.1.45.tar.xz</a>

-   Download MD5 sum: 84bb3f6ba7f5ee98af5dcd72e828c73e

-   Download size: 1.5 MB

-   Estimated disk space required: 33 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### libxslt Dependencies

#### Required

<a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Recommended (at runtime)

<a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a> and <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Although it is not a direct dependency, many applications using <span class="application">libxslt</span> will expect <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a> and <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> to be present.
</div>

#### Optional

<a class="xref" href="libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a> (only needed for the deprecated EXSLT crypto extension, see Command Explanations)
</div>

<div class="installation" lang="en">
## Installation of libxslt {#installation-of-libxslt}

Install <span class="application">libxslt</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --without-python \
            --docdir=/usr/share/doc/libxslt-1.1.45 &&
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

*`--without-python`*: Disable the Python binding of this package. The binding only works if the Python binding of <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> is installed, but we've not enabled the deprecated Python binding when we built <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>.

<code class="option">--with-crypto</code>: Enable the non-standard and deprecated EXSLT crypto extension feature. It needs <a class="xref" href="libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a> and the upstream will remove it in the future.

<code class="option">--with-debug</code>: Enables thorough diagnostics with the <code class="option">-v, --verbose</code> of <span class="command"><strong>xsltproc</strong></span>. Use it if you plan to debug XSLT stylesheets.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xslt-config and xsltproc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="application">libexslt.so, libxslt.so and optionally, libxsltmod.so <span class="segbody">Python</span> module</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libexslt, /usr/include/libxslt, /usr/lib/cmake/libxslt, /usr/lib/libxslt-plugins, /usr/share/gtk-doc/lib{xslt,exslt}, /usr/share/doc/libxslt-1.1.45, and /usr/share/doc/libxslt-python-1.1.45</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="xslt-config"></a><span class="command"><span class="term"><strong>xslt-config</strong></span></span>   is used to find out the pre-processor, linking and compiling flags necessary to use the <span class="application">libxslt</span> libraries in 3rd-party programs
  <a id="xsltproc"></a><span class="command"><span class="term"><strong>xsltproc</strong></span></span>         is used to apply XSLT stylesheets to XML documents
  <a id="libexslt"></a><span class="term"><code class="filename">libexslt.so</code></span>         is used to provide extensions to XSLT functions
  <a id="libxslt-lib"></a><span class="term"><code class="filename">libxslt.so</code></span>       provides extensions to the <code class="filename">libxml2</code> libraries to parse files that use the XSLT format
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxmlb.md "libxmlb-0.3.27")

    libxmlb-0.3.27

-   [Next](libwacom.md "libwacom-2.19.0")

    libwacom-2.19.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
