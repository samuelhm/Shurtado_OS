<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libxslt.md "libxslt-1.1.45")

    libxslt-1.1.45

-   [Next](libyaml.md "libyaml-0.2.5")

    libyaml-0.2.5

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libwacom-2.19.0 {#libwacom-2.19.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libwacom {#introduction-to-libwacom}

The <span class="application">libwacom</span> package contains a library used to identify graphics tablets from Wacom or various other vendors and their model-specific features.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/linuxwacom/libwacom/releases/download/libwacom-2.19.0/libwacom-2.19.0.tar.xz">https://github.com/linuxwacom/libwacom/releases/download/libwacom-2.19.0/libwacom-2.19.0.tar.xz</a>

-   Download MD5 sum: 471f8da9fc4ff7adc5463d34cc657e4f

-   Download size: 184 KB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### libwacom Dependencies

#### Required

<a class="xref" href="../x/x7driver.md#libevdev" title="libevdev 1.13.6">libevdev-1.13.6</a> and <a class="xref" href="libgudev.md" title="libgudev-238">libgudev-238</a>

#### Recommended

<a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (optional for some tests), and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> with <a class="ulink" href="https://pypi.org/project/libevdev/">python-libevdev</a> and <a class="ulink" href="https://pypi.org/project/pyudev/">pyudev</a>
</div>

<div class="installation" lang="en">
## Installation of libwacom {#installation-of-libwacom}

Install <span class="application">libwacom</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D tests=disabled   &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. To run additional tests, install <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, python-libevdev, and pyudev, then remove the "-D tests=disabled" option from the meson line above.

If upgrading from a previous version of libwacom, remove the old device database installation to prevent a potential duplicated match of devices in case some old database files are not overwritten:

```bash
rm -rf /usr/share/libwacom
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D tests=disabled`*: This parameter disables some of the more advanced tests because they require <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> and other two Python modules beyond the scope of BLFS to work properly.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">libwacom-list-devices, libwacom-list-local-devices, libwacom-show-stylus, and libwacom-update-db</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libwacom.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libwacom-1.0 and /usr/share/libwacom</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------------------- ----------------------------------------------------------------------
  <a id="libwacom-list-devices"></a><span class="command"><span class="term"><strong>libwacom-list-devices</strong></span></span>               lists all tablet devices that are supported by libwacom
  <a id="libwacom-list-local-devices"></a><span class="command"><span class="term"><strong>libwacom-list-local-devices</strong></span></span>   lists tablet devices that are connected to the system
  <a id="libwacom-show-stylus"></a><span class="command"><span class="term"><strong>libwacom-show-stylus</strong></span></span>                 lists tablet stylus IDs
  <a id="libwacom-update-db"></a><span class="command"><span class="term"><strong>libwacom-update-db</strong></span></span>                     updates the system according to the current set of tablet data files
  <a id="libwacom-lib"></a><span class="term"><code class="filename">libwacom.so</code></span>                                     contains functions used for accessing Wacom information
  -------------------------------------------------------------------------------------- ----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxslt.md "libxslt-1.1.45")

    libxslt-1.1.45

-   [Next](libyaml.md "libyaml-0.2.5")

    libyaml-0.2.5

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
