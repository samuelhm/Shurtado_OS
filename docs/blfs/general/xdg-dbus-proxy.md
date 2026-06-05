<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](unixodbc.md "unixODBC-2.3.14")

    unixODBC-2.3.14

-   [Next](xdg-user-dirs.md "Xdg-user-dirs-0.20")

    Xdg-user-dirs-0.20

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xdg-dbus-proxy-0.1.7 {#xdg-dbus-proxy-0.1.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xdg-dbus-proxy {#introduction-to-xdg-dbus-proxy}

The <span class="application">xdg-dbus-proxy</span> package contains a filtering proxy for D-Bus connections. This is useful for forwarding data in and out of a sandbox.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/flatpak/xdg-dbus-proxy/releases/download/0.1.7/xdg-dbus-proxy-0.1.7.tar.xz">https://github.com/flatpak/xdg-dbus-proxy/releases/download/0.1.7/xdg-dbus-proxy-0.1.7.tar.xz</a>

-   Download MD5 sum: f79f2de6c6667762ff4ab11f6927d5b7

-   Download size: 44 KB

-   Estimated disk space required: 996 KB

-   Estimated build time: less than 0.1 SBU
</div>

### xdg-dbus-proxy Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>
</div>

<div class="installation" lang="en">
## Installation of xdg-dbus-proxy {#installation-of-xdg-dbus-proxy}

Install <span class="application">xdg-dbus-proxy</span> by running the following commands:

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

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xdg-dbus-proxy</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- --------------------------------------------
  <a id="xdg-dbus-proxy-prog"></a><span class="command"><span class="term"><strong>xdg-dbus-proxy</strong></span></span>   is a filtering proxy for D-Bus connections
  ----------------------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](unixodbc.md "unixODBC-2.3.14")

    unixODBC-2.3.14

-   [Next](xdg-user-dirs.md "Xdg-user-dirs-0.20")

    Xdg-user-dirs-0.20

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
