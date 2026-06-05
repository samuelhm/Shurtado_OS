<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](kquickimageeditor.md "kquickimageeditor-0.6.1")

    kquickimageeditor-0.6.1

-   [Next](plasma-all.md "Building Plasma")

    Building Plasma

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# bolt-0.9.11 {#bolt-0.9.11}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to bolt {#introduction-to-bolt}

The <span class="application">bolt</span> package is a system daemon to enable security levels for Thunderbolt.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/bolt/bolt/-/archive/0.9.11/bolt-0.9.11.tar.gz">https://gitlab.freedesktop.org/bolt/bolt/-/archive/0.9.11/bolt-0.9.11.tar.gz</a>

-   Download MD5 sum: 6fade22d3875b3ff480e26058571b534

-   Download size: 252 KB

-   Estimated disk space required: 9.8 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### bolt Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> and <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>

#### Optional

<a class="xref" href="../general/umockdev.md" title="Umockdev-0.19.7">umockdev-0.19.7</a> (for testing), and <a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> (for documentation)
</div>

<div class="installation" lang="en">
## Installation of bolt {#installation-of-bolt}

Install <span class="application">bolt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. One test, test_journal_object, is known to fail.

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
**Installed Programs:** <span class="segbody">boltctl and boltd (in /usr/libexec)</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kquickimageeditor.md "kquickimageeditor-0.6.1")

    kquickimageeditor-0.6.1

-   [Next](plasma-all.md "Building Plasma")

    Building Plasma

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
