<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](clucene.md "CLucene-2.3.3.4")

    CLucene-2.3.3.4

-   [Next](double-conversion.md "Double-conversion-3.4.0")

    Double-conversion-3.4.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dbus-glib-0.114 {#dbus-glib-0.114}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to D-Bus GLib {#introduction-to-d-bus-glib}

The <span class="application">D-Bus GLib</span> package contains <span class="application">GLib</span> interfaces to the <span class="application">D-Bus</span> API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.114.tar.gz">https://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.114.tar.gz</a>

-   Download MD5 sum: 188792077e880a8c0359288d7819dab3

-   Download size: 724 KB

-   Estimated disk space required: 11 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### D-Bus GLib Dependencies

#### Required

<a class="xref" href="dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> and <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of D-Bus GLib {#installation-of-d-bus-glib}

Install <span class="application">D-Bus GLib</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. Note that more comprehensive tests can be run by following the same method used in <span class="application">D-Bus</span> instructions, which requires building the package twice.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">dbus-binding-tool</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libdbus-glib-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/gtk-doc/html/dbus-glib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------- ------------------------------------------------------------------------------------
  <a id="glib-dbus-binding-tool"></a><span class="command"><span class="term"><strong>dbus-binding-tool</strong></span></span>   is a tool used to interface with the D-Bus API
  <a id="libdbus-glib-1"></a><span class="term"><code class="filename">libdbus-glib-1.so</code></span>              contains <span class="application">GLib</span> interface functions to the <span class="application">D-Bus</span> API
  ----------------------------------------------------------------------- ------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](clucene.md "CLucene-2.3.3.4")

    CLucene-2.3.3.4

-   [Next](double-conversion.md "Double-conversion-3.4.0")

    Double-conversion-3.4.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
