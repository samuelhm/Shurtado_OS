<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](qca.md "Qca-2.3.10")

    Qca-2.3.10

-   [Next](simdutf.md "simdutf-9.0.0")

    simdutf-9.0.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# qcoro-0.13.0 {#qcoro-0.13.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to qcoro {#introduction-to-qcoro}

This package provides a set of tools to make use of C++20 coroutines with Qt.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/danvratil/qcoro/archive/v0.13.0/qcoro-0.13.0.tar.gz">https://github.com/danvratil/qcoro/archive/v0.13.0/qcoro-0.13.0.tar.gz</a>

-   Download MD5 sum: 1cc2b522b90d8d0842523f751e75c99b

-   Download size: 160 KB

-   Estimated disk space required: 31 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; add 0.6 SBU for tests)
</div>

### qcoro Dependencies

#### Required

<a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of qcoro {#installation-of-qcoro}

Install <span class="application">qcoro</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$QT6DIR \
      -D CMAKE_BUILD_TYPE=Release     \
      -D BUILD_TESTING=OFF            \
      -D QCORO_BUILD_EXAMPLES=OFF     \
      -D BUILD_SHARED_LIBS=ON         \
       ..                             &&
make
```

To test this package, remove the 'BUILD_TESTING=OFF' parameter above and run:

```bash
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply a higher level of compiler optimizations.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libQCoro6Core.so, libQCoro6DBus.so, libQCoro6Network.so, libQCoro6Qml.so, libQCoro6Quick.so, and libQCoro6WebSockets.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">Nine directories in \$QT6DIR/lib/cmake/ and \$QT6DIR/include/qcoro6</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qca.md "Qca-2.3.10")

    Qca-2.3.10

-   [Next](simdutf.md "simdutf-9.0.0")

    simdutf-9.0.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
