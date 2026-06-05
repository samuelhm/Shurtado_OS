<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](file-roller.md "File-Roller-44.6")

    File-Roller-44.6

-   [Next](gnome-color-manager.md "gnome-color-manager-3.36.2")

    gnome-color-manager-3.36.2

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-calculator-50.0 {#gnome-calculator-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Calculator {#introduction-to-gnome-calculator}

<span class="application">GNOME Calculator</span> is a powerful graphical calculator with financial, logical and scientific modes. It uses a multiple precision package to do its arithmetic to give a high degree of accuracy.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-calculator/50/gnome-calculator-50.0.tar.xz">https://download.gnome.org/sources/gnome-calculator/50/gnome-calculator-50.0.tar.xz</a>

-   Download MD5 sum: db7f8f49762a51c5c658f1b4c0ed74d8

-   Download size: 1.2 MB

-   Estimated disk space required: 44 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

### GNOME Calculator Dependencies

#### Required

<a class="xref" href="../general/python-modules.md#blueprint-compiler" title="blueprint-compiler-0.20.4">blueprint-compiler-0.20.4</a>, <a class="xref" href="../x/gtksourceview5.md" title="gtksourceview5-5.20.0">gtksourceview5-5.20.0</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="libgee.md" title="libgee-0.20.8">libgee-0.20.8</a>, and <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>

#### Recommended

<a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Calculator {#installation-of-gnome-calculator}

Install <span class="application">GNOME Calculator</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

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
**Installed Programs:** <span class="segbody">gcalccmd and gnome-calculator</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgcalc-2.so and libgci-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gcalc-2, /usr/include/gci-2, /usr/share/devhelp/books/{GCalc-2,GCi-1}, and /usr/share/help/\*/gnome-calculator</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------------- -----------------------------------------------------------------
  <a id="gnome-calculator-prog"></a><span class="command"><span class="term"><strong>gnome-calculator</strong></span></span>   is the official calculator of the <span class="application">GNOME</span> Desktop
  <a id="gcalccmd"></a><span class="command"><span class="term"><strong>gcalccmd</strong></span></span>                        is a command line version of <span class="application">gnome-calculator</span>
  --------------------------------------------------------------------- -----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](file-roller.md "File-Roller-44.6")

    File-Roller-44.6

-   [Next](gnome-color-manager.md "gnome-color-manager-3.36.2")

    gnome-color-manager-3.36.2

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
