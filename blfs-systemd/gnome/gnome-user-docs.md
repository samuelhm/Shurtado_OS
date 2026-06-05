<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-tweaks.md "gnome-tweaks-49.0")

    gnome-tweaks-49.0

-   [Next](yelp.md "Yelp-49.0")

    Yelp-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-user-docs-50.2 {#gnome-user-docs-50.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME User Docs {#introduction-to-gnome-user-docs}

The <span class="application">GNOME User Docs</span> package contains documentation for <span class="application">GNOME</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-user-docs/50/gnome-user-docs-50.2.tar.xz">https://download.gnome.org/sources/gnome-user-docs/50/gnome-user-docs-50.2.tar.xz</a>

-   Download MD5 sum: d86fa4a703c5cabbe3dc924a91112987

-   Download size: 16 MB

-   Estimated disk space required: 176 MB

-   Estimated build time: 0.3 SBU (using parallelism=4)
</div>

### GNOME User Docs Dependencies

#### Required

<a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a> and <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME User Docs {#installation-of-gnome-user-docs}

Install <span class="application">GNOME User Docs</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
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
**Installed Directories:** <span class="segbody">/usr/share/help/\<em>/gnome-help and /usr/share/help/\</em>/system-admin-guide</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-tweaks.md "gnome-tweaks-49.0")

    gnome-tweaks-49.0

-   [Next](yelp.md "Yelp-49.0")

    Yelp-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
