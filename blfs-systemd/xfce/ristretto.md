<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](xfburn.md "Xfburn-0.8.0")

    Xfburn-0.8.0

-   [Next](xfce4-notifyd.md "xfce4-notifyd-0.9.7")

    xfce4-notifyd-0.9.7

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ristretto-0.14.0 {#ristretto-0.14.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Ristretto {#introduction-to-ristretto}

<span class="application">Ristretto</span> is a fast and lightweight image viewer for the <span class="application">Xfce</span> desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/apps/ristretto/0.14/ristretto-0.14.0.tar.xz">https://archive.xfce.org/src/apps/ristretto/0.14/ristretto-0.14.0.tar.xz</a>

-   Download MD5 sum: 63b94c3e3fab28c4533697f36ee6caa2

-   Download size: 280 KB

-   Estimated disk space required: 5.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Ristretto Dependencies

#### Required

<a class="xref" href="../general/libexif.md" title="libexif-0.6.26">libexif-0.6.26</a> and <a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a>

#### Optional

<a class="xref" href="tumbler.md" title="tumbler-4.20.1">tumbler-4.20.1</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of Ristretto {#installation-of-ristretto}

Install <span class="application">ristretto</span> by running the following commands:

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
**Installed Program:** <span class="segbody">ristretto</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- ----------------------------------------
  <a id="ristretto-prog"></a><span class="command"><span class="term"><strong>ristretto</strong></span></span>   is a fast and lightweight image viewer
  ------------------------------------------------------- ----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfburn.md "Xfburn-0.8.0")

    Xfburn-0.8.0

-   [Next](xfce4-notifyd.md "xfce4-notifyd-0.9.7")

    xfce4-notifyd-0.9.7

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
