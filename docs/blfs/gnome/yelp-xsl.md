<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](vte.md "VTE-0.84.0")

    VTE-0.84.0

-   [Next](geocode-glib.md "geocode-glib-3.26.4")

    geocode-glib-3.26.4

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# yelp-xsl-49.0 {#yelp-xsl-49.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Yelp XSL {#introduction-to-yelp-xsl}

The <span class="application">Yelp XSL</span> package contains XSL stylesheets that are used by the <span class="application">Yelp</span> help browser to format Docbook and Mallard documents.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/yelp-xsl/49/yelp-xsl-49.0.tar.xz">https://download.gnome.org/sources/yelp-xsl/49/yelp-xsl-49.0.tar.xz</a>

-   Download MD5 sum: 78a347ceef497c9e83abf7f644a753b0

-   Download size: 388 KB

-   Estimated disk space required: 8.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Yelp XSL Dependencies

#### Required

<a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> and <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>
</div>

<div class="installation" lang="en">
## Installation of Yelp XSL {#installation-of-yelp-xsl}

Install <span class="application">Yelp XSL</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/yelp-xsl</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](vte.md "VTE-0.84.0")

    VTE-0.84.0

-   [Next](geocode-glib.md "geocode-glib-3.26.4")

    geocode-glib-3.26.4

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
