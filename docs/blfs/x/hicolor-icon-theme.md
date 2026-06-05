<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](gnome-themes-extra.md "gnome-themes-extra-3.28")

    gnome-themes-extra-3.28

-   [Next](icon-naming-utils.md "icon-naming-utils-0.8.90")

    icon-naming-utils-0.8.90

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# hicolor-icon-theme-0.18 {#hicolor-icon-theme-0.18}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to hicolor-icon-theme {#introduction-to-hicolor-icon-theme}

The <span class="application">hicolor-icon-theme</span> package contains a default fallback theme for implementations of the icon theme specification.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.18.tar.xz">https://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.18.tar.xz</a>

-   Download MD5 sum: ef14f3af03bcde9ed134aad626bdbaad

-   Download size: 32 KB

-   Estimated disk space required: 644 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of hicolor-icon-theme {#installation-of-hicolor-icon-theme}

Install <span class="application">hicolor-icon-theme</span> by running the following commands:

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
**Installed Directory:** <span class="segbody">/usr/share/icons/hicolor</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- --------------------------------------------
  <a id="hicolor-icon-themes"></a><span class="term">/usr/share/icons/hicolor/\*</span>   contains icon definitions used as defaults
  -------------------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-themes-extra.md "gnome-themes-extra-3.28")

    gnome-themes-extra-3.28

-   [Next](icon-naming-utils.md "icon-naming-utils-0.8.90")

    icon-naming-utils-0.8.90

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
