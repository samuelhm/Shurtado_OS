<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-shell.md "gnome-shell-50.2")

    gnome-shell-50.2

-   [Next](gnome-session.md "gnome-session-50.1")

    gnome-session-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-shell-extensions-50.2 {#gnome-shell-extensions-50.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Shell Extensions {#introduction-to-gnome-shell-extensions}

The <span class="application">GNOME Shell Extensions</span> package contains a collection of extensions providing additional and optional functionality to the <span class="application">GNOME Shell</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-shell-extensions/50/gnome-shell-extensions-50.2.tar.xz">https://download.gnome.org/sources/gnome-shell-extensions/50/gnome-shell-extensions-50.2.tar.xz</a>

-   Download MD5 sum: 3a9305d5925c0ed257b92ccbced01999

-   Download size: 240 KB

-   Estimated disk space required: 6.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GNOME Shell Extensions Dependencies

#### Required

<a class="xref" href="libgtop.md" title="libgtop-2.41.3">libgtop-2.41.3</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Shell Extensions {#installation-of-gnome-shell-extensions}

Install <span class="application">GNOME Shell Extensions</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. 
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D x11=true</code>: Enables X11 session support. This is deprecated and X11 support for GNOME will be removed in GNOME 50.
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
**Installed Directories:** <span class="segbody">/usr/share/gnome-shell/extensions</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-shell.md "gnome-shell-50.2")

    gnome-shell-50.2

-   [Next](gnome-session.md "gnome-session-50.1")

    gnome-session-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
