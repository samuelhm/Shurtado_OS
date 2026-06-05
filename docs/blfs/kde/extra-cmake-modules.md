<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](kdeintro.md "KDE Preliminaries")

    KDE Preliminaries

-   [Next](phonon.md "Phonon-4.12.0")

    Phonon-4.12.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Extra-CMake-Modules-6.26.0 {#extra-cmake-modules-6.26.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Extra CMake Modules {#introduction-to-extra-cmake-modules}

The <span class="application">Extra CMake Modules</span> package contains extra <span class="application">CMake</span> modules used by <span class="application">KDE Frameworks</span> and other packages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/frameworks/6.26/extra-cmake-modules-6.26.0.tar.xz">https://download.kde.org/stable/frameworks/6.26/extra-cmake-modules-6.26.0.tar.xz</a>

-   Download MD5 sum: 05432f3fcbc3ee0de5765413f5c8b436

-   Download size: 332 KB

-   Estimated disk space required: 5.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Extra CMake Modules Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Optional

<a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (for building documentation) and <a class="ulink" href="https://github.com/fsfe/reuse-tool/">ReuseTool</a> (for running internal tests)
</div>

<div class="installation" lang="en">
## Installation of Extra CMake Modules {#installation-of-extra-cmake-modules}

Install <span class="application">Extra CMake Modules</span> by running the following commands:

```bash
sed -i '/"lib64"/s/64//' kde-modules/KDEInstallDirsCommon.cmake &&

sed -e '/PACKAGE_INIT/i set(SAVE_PACKAGE_PREFIX_DIR "${PACKAGE_PREFIX_DIR}")' \
    -e '/^include/a set(PACKAGE_PREFIX_DIR "${SAVE_PACKAGE_PREFIX_DIR}")' \
    -i ECMConfig.cmake.in &&

mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_WITH_QT6=ON         \
      -D DOC_INSTALL_DIR=/usr/share/doc/extra-cmake-modules-6.26.0 \
      .. &&
make
```

This package does not come with a test suite.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Unlike other KF6 packages, this module is installed in /usr because it can be used by some non-KF6 packages.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... Modules/KDEInstallDirs.cmake</strong></span>: This command disables applications using CMake from attempting to install files in a <code class="filename">lib64</code> sub-directory.

<span class="command"><strong>sed ... ECMConfig.cmake.in</strong></span>: This command protects the global <span class="application">CMake</span> variable <code class="envar">PACKAGE_PREFIX_DIR</code> from being changed when checking for the presence of ECM. Since we install ECM into <code class="filename">/usr</code>, the check would set that variable to <code class="filename">/usr</code>, but most KDE packages expect it to be set to <code class="filename">/opt/kf6</code> and they will fail to build if it is set to something else.

*`-D DOC_INSTALL-DIR=/usr/share/doc/extra...`*: This switch allows installing the documentation (which is built if <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> is installed) into a versioned directory.
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
**Installed Directories:** <span class="segbody">/usr/share/ECM and /usr/share/doc/extra-cmake-modules-6.26.0 (if documentation was built)</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kdeintro.md "KDE Preliminaries")

    KDE Preliminaries

-   [Next](phonon.md "Phonon-4.12.0")

    Phonon-4.12.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
