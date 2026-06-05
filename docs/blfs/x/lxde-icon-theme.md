<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](icon-naming-utils.md "icon-naming-utils-0.8.90")

    icon-naming-utils-0.8.90

-   [Next](oxygen-icons.md "oxygen-icons-6.1.0")

    oxygen-icons-6.1.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxde-icon-theme-0.5.1 {#lxde-icon-theme-0.5.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to LXDE Icon Theme {#introduction-to-lxde-icon-theme}

The <span class="application">LXDE Icon Theme</span> package contains nuoveXT 2.2 Icon Theme for <span class="application">LXDE</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/lxde/lxde-icon-theme-0.5.1.tar.xz">https://downloads.sourceforge.net/lxde/lxde-icon-theme-0.5.1.tar.xz</a>

-   Download MD5 sum: 7467133275edbbcc79349379235d4411

-   Download size: 4.3 MB

-   Estimated disk space required: 18 MB

-   Estimated build time: less than 0.1 SBU
</div>

### LXDE Icon Theme Dependencies

#### Optional

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (for <span class="command"><strong>gtk-update-icon-cache</strong></span> command)
</div>

<div class="installation" lang="en">
## Installation of LXDE Icon Theme {#installation-of-lxde-icon-theme}

Install <span class="application">LXDE Icon Theme</span> by running the following commands:

```bash
./configure --prefix=/usr
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have installed one of the optional dependencies, run the following command as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qf /usr/share/icons/nuoveXT2
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
**Installed Directory:** <span class="segbody">/usr/share/icons/nuoveXT2</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](icon-naming-utils.md "icon-naming-utils-0.8.90")

    icon-naming-utils-0.8.90

-   [Next](oxygen-icons.md "oxygen-icons-6.1.0")

    oxygen-icons-6.1.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
