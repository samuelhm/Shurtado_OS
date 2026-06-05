<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](dbus-glib.md "dbus-glib-0.114")

    dbus-glib-0.114

-   [Next](duktape.md "duktape-2.7.0")

    duktape-2.7.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Double-conversion-3.4.0 {#double-conversion-3.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Double-conversion {#introduction-to-double-conversion}

The <span class="application">Double-conversion</span> package contains a library that facilitates binary-to-decimal and decimal-to-binary routines for IEEE doubles.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/google/double-conversion/archive/v3.4.0/double-conversion-3.4.0.tar.gz">https://github.com/google/double-conversion/archive/v3.4.0/double-conversion-3.4.0.tar.gz</a>

-   Download MD5 sum: cb2e555c32614f680ba928e962dda9be

-   Download size: 6.7 MB

-   Estimated disk space required: 62 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### Double-conversion Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of Double-conversion {#installation-of-double-conversion}

Install <span class="application">Double-conversion</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -D BUILD_SHARED_LIBS=ON             \
      -D BUILD_TESTING=ON                 \
      ..                                  &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.

*`-D BUILD_SHARED_LIBS=ON`*: This switch forces cmake to build a shared version of the library instead of the static version.

*`-D BUILD_TESTING=ON`*: This switch builds the test programs.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdouble-conversion.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/double-conversion</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------------------------------
  <a id="libdouble-conversion"></a><span class="term"><code class="filename">libdouble-conversion.so</code></span>   provides binary-to-decimal and decimal-to-binary routines for IEEE doubles
  ------------------------------------------------------------------------ ----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dbus-glib.md "dbus-glib-0.114")

    dbus-glib-0.114

-   [Next](duktape.md "duktape-2.7.0")

    duktape-2.7.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
