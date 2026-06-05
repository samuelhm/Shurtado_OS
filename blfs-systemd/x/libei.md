<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libadwaita.md "libadwaita-1.9.1")

    libadwaita-1.9.1

-   [Next](libhandy1.md "libhandy-1.8.3")

    libhandy-1.8.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libei-1.6.0 {#libei-1.6.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libei {#introduction-to-libei}

The <span class="application">libei</span> package contains a set of libraries for handling emulated inputs. It is primarily aimed at the Wayland stack.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/libinput/libei/-/archive/1.6.0/libei-1.6.0.tar.bz2">https://gitlab.freedesktop.org/libinput/libei/-/archive/1.6.0/libei-1.6.0.tar.bz2</a>

-   Download MD5 sum: 08186470213bdba5a4e58d322368f31d

-   Download size: 192 KB

-   Estimated disk space required: 7.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libei Dependencies

#### Optional

<a class="xref" href="x7driver.md#libevdev" title="libevdev 1.13.6">libevdev-1.13.6</a>, <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="ulink" href="https://github.com/nemequ/munit">munit</a>, and <a class="ulink" href="https://pypi.org/project/structlog/">structlog</a>
</div>

<div class="installation" lang="en">
## Installation of libei {#installation-of-libei}

Install <span class="application">libei</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D tests=disabled &&
ninja
```

This package does come with a test suite, but it requires an external dependency. If you have both <a class="ulink" href="https://github.com/nemequ/munit">munit</a> and <a class="ulink" href="https://pypi.org/project/structlog/">structlog</a> installed, and you wish to run the test suite, run the following commands:

```bash
meson configure -D tests=enabled &&
ninja test
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D tests=disabled`*: This switch avoids a dependency on <a class="ulink" href="https://github.com/nemequ/munit">munit</a>. Remove this switch if you have <span class="application">munit</span> installed and wish to run the test suite.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libei.so, libeis.so, and liboeffis.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libei-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- -------------------------------------------------------------------------------------
  <a id="libei-lib"></a><span class="term"><code class="filename">libei.so</code></span>   provides a client side implementation for handling Emulated Input
  <a id="libeis"></a><span class="term"><code class="filename">libeis.so</code></span>     provides a server side implementation for handling Emulated Input
  <a id="liboffis"></a><span class="term"><code class="filename">liboffis</code></span>    provides DBus communication services between libei and the XDG RemoteDesktop portal
  ---------------------------------------------- -------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libadwaita.md "libadwaita-1.9.1")

    libadwaita-1.9.1

-   [Next](libhandy1.md "libhandy-1.8.3")

    libhandy-1.8.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
