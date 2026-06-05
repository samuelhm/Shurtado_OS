<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](cpio.md "cpio-2.15")

    cpio-2.15

-   [Next](dbus.md "dbus-1.16.2")

    dbus-1.16.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# cups-pk-helper-0.2.7 {#cups-pk-helper-0.2.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to cups-pk-helper {#introduction-to-cups-pk-helper}

The <span class="application">cups-pk-helper</span> package contains a <span class="application">PolicyKit</span> helper used to configure <span class="application">Cups</span> with fine-grained privileges.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/cups-pk-helper/releases/cups-pk-helper-0.2.7.tar.xz">https://www.freedesktop.org/software/cups-pk-helper/releases/cups-pk-helper-0.2.7.tar.xz</a>

-   Download MD5 sum: 0cdadec9ea8f88b7fc7af8ca206da2bd

-   Download size: 56 KB

-   Estimated disk space required: 5.3 MB

-   Estimated build time: 0.1 SBU
</div>

### cups-pk-helper Dependencies

#### Required

<a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a> and <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>
</div>

<div class="installation" lang="en">
## Installation of cups-pk-helper {#installation-of-cups-pk-helper}

Install <span class="application">cups-pk-helper</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. &&
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
**Installed Programs:** <span class="segbody">cups-pk-helper-mechanism (library executable)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cpio.md "cpio-2.15")

    cpio-2.15

-   [Next](dbus.md "dbus-1.16.2")

    dbus-1.16.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
