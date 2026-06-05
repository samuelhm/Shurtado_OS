<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7")

    xdg-dbus-proxy-0.1.7

-   [Next](sysutils.md "System Utilities")

    System Utilities

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xdg-user-dirs-0.20 {#xdg-user-dirs-0.20}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xdg-user-dirs {#introduction-to-xdg-user-dirs}

<span class="application">Xdg-user-dirs</span> is a tool to help manage <span class="quote">“<span class="quote">well known</span>”</span> user directories like the desktop folder and the music folder. It also handles localization (i.e. translation) of the filenames.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/xdg/xdg-user-dirs/-/archive/v0.20/xdg-user-dirs-v0.20.tar.gz">https://gitlab.freedesktop.org/xdg/xdg-user-dirs/-/archive/v0.20/xdg-user-dirs-v0.20.tar.gz</a>

-   Download MD5 sum: a80c6f2cc9fd3d9870fcda76d73ce3e6

-   Download size: 68 KB

-   Estimated disk space required: 3.6 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Xdg-user-dirs Dependencies

#### Optional

<a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (all three for building the man pages)
</div>

<div class="installation" lang="en">
## Installation of Xdg-user-dirs {#installation-of-xdg-user-dirs}

Install <span class="application">xdg-user-dirs</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D docs=false       \
            .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D docs=false`*: Disable the installation of the man pages. Remove this switch if you've installed the optional dependencies and you wish to install the man pages of this package.
</div>

<div class="configuration" lang="en">
## Configuring Xdg-user-dirs {#configuring-xdg-user-dirs}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.config/user-dirs.dirs</code>, <code class="filename">/etc/xdg/user-dirs.conf</code>, and <code class="filename">/etc/xdg/user-dirs.defaults</code>. Those default locations can be overridden by <code class="envar">XDG_CONFIG_HOME</code> and <code class="envar">XDG_CONFIG_DIRS</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xdg-user-dir and xdg-user-dirs-update</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ---------------------------------------------------------------
  <a id="xdg-user-dir"></a><span class="command"><span class="term"><strong>xdg-user-dir</strong></span></span>                   looks up the current path for one of the XDG user directories
  <a id="xdg-user-dirs-update"></a><span class="command"><span class="term"><strong>xdg-user-dirs-update</strong></span></span>   creates localized versions of the user directories
  ------------------------------------------------------------------------ ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7")

    xdg-dbus-proxy-0.1.7

-   [Next](sysutils.md "System Utilities")

    System Utilities

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
