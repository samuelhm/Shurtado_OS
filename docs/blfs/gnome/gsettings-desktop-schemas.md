<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gcr4.md "Gcr-4.4.0.1")

    Gcr-4.4.0.1

-   [Next](libsecret.md "libsecret-0.21.7")

    libsecret-0.21.7

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gsettings-desktop-schemas-50.1 {#gsettings-desktop-schemas-50.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GSettings Desktop Schemas {#introduction-to-gsettings-desktop-schemas}

The <span class="application">GSettings Desktop Schemas</span> package contains a collection of GSettings schemas for settings shared by various components of a <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gsettings-desktop-schemas/50/gsettings-desktop-schemas-50.1.tar.xz">https://download.gnome.org/sources/gsettings-desktop-schemas/50/gsettings-desktop-schemas-50.1.tar.xz</a>

-   Download MD5 sum: b3851a1d2dd684f7ea1a1d032e2a7dfb

-   Download size: 876 KB

-   Estimated disk space required: 17 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GSettings Desktop Schemas Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)
</div>

<div class="installation" lang="en">
## Installation of GSettings Desktop Schemas {#installation-of-gsettings-desktop-schemas}

Install <span class="application">GSettings Desktop Schemas</span> by running the following commands:

```bash
sed -i -r 's:"(/system):"/org/gnome\1:g' schemas/*.in &&

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

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a <span class="quote">“<span class="quote">DESTDIR</span>”</span> method, <code class="filename">/usr/share/glib-2.0/schemas/gschemas.compiled</code> was not updated/created. Create (or update) the file using the following command as the <code class="systemitem">root</code> user:

```bash
glib-compile-schemas /usr/share/glib-2.0/schemas
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... schemas/\*.in</strong></span>: This command fixes some deprecated entries in the schema templates.
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
**Installed Directory:** <span class="segbody">/usr/include/gsettings-desktop-schemas and /usr/share/GConf/gsettings</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gcr4.md "Gcr-4.4.0.1")

    Gcr-4.4.0.1

-   [Next](libsecret.md "libsecret-0.21.7")

    libsecret-0.21.7

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
