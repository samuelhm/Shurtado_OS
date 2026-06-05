<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfconf.md "Xfconf-4.20.0")

    Xfconf-4.20.0

-   [Next](exo.md "Exo-4.20.0")

    Exo-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxfce4ui-4.20.2 {#libxfce4ui-4.20.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxfce4ui {#introduction-to-libxfce4ui}

The <span class="application">libxfce4ui</span> package contains <span class="application">GTK+ 3</span> widgets that are used by other <span class="application">Xfce</span> applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/libxfce4ui/4.20/libxfce4ui-4.20.2.tar.bz2">https://archive.xfce.org/src/xfce/libxfce4ui/4.20/libxfce4ui-4.20.2.tar.bz2</a>

-   Download MD5 sum: ce54074a9ed7964b4a3274e8ac74d949

-   Download size: 1.1 MB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
</div>

### libxfce4ui Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="xfconf.md" title="Xfconf-4.20.0">Xfconf-4.20.0</a>

#### Recommended

<a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../gnome/libgtop.md" title="libgtop-2.41.3">libgtop-2.41.3</a>, <a class="xref" href="../general/libgudev.md" title="libgudev-238">libgudev-238</a>, and <a class="ulink" href="https://glade.gnome.org/">Glade</a>
</div>

<div class="installation" lang="en">
## Installation of libxfce4ui {#installation-of-libxfce4ui}

Install <span class="application">libxfce4ui</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxfce4kbd-private-{2,3}.so and libxfce4ui-{1,2}.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xdg/xfce4, /usr/include/xfce4/libxfce4kbd-private-2, /usr/include/xfce4/libxfce4ui-{1,2}, and /usr/share/gtk-doc/html/libxfce4ui</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------
  <a id="libxfce4kbd-private-2"></a><span class="term"><code class="filename">libxfce4kbd-private-2.so</code></span>   is a private <span class="application">Xfce</span> library for sharing code between <span class="application">Xfwm4</span> and <span class="application">Xfce4 Settings</span>
  <a id="libxfce4ui-1"></a><span class="term"><code class="filename">libxfce4ui-1.so</code></span>                     contains widgets that are used by other <span class="application">Xfce</span> applications
  -------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfconf.md "Xfconf-4.20.0")

    Xfconf-4.20.0

-   [Next](exo.md "Exo-4.20.0")

    Exo-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
