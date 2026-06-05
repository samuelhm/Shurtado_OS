<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 40. Graphical Web Browsers

-   [Prev](epiphany.md "Epiphany-50.4")

    Epiphany-50.4

-   [Next](firefox.md "Firefox-140.11.0esr")

    Firefox-140.11.0esr

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# falkon-26.04.1 {#falkon-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to falkon {#introduction-to-falkon}

<span class="application">Falkon</span> is a KDE web browser using the QtWebEngine rendering engine. It was previously known as <span class="application">QupZilla</span>. It aims to be a lightweight web browser available through all major platforms.

Although <span class="application">falkon</span> is now part of KDE, it can be installed without KDE (with the loss of <span class="application">kwallet</span> functionality).

Falkon relies on QtWebEngine. Please read the warning on that page.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/falkon-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/falkon-26.04.1.tar.xz</a>

-   Download MD5 sum: d3afd86041279e0560463beefe0b65d5

-   Download size: 2.6 MB

-   Estimated disk space required: 165 MB

-   Estimated build time: 1.6 SBU (Using parallelism=4; add 0.1 SBU for tests)
</div>

### falkon Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>, <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> (for karchive), and <a class="xref" href="../x/qtwebengine.md" title="QtWebEngine-6.11.1">qtwebengine-6.11.1</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Strictly speaking, only karchive and ki18n are required to build falkon, but several other packages in <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> can be used if they are present. To build only karchive and ki18n, download those packages from the directory specified in <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> and use the build instructions on that page, changing the \$KF6_PREFIX variable to /usr.
</div>

#### Optional

<a class="ulink" href="https://pypi.org/project/PySide2/">PySide2</a> and <a class="ulink" href="https://pypi.org/project/shiboken2/">Shiboken2</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/falkon">https://wiki.linuxfromscratch.org/blfs/wiki/falkon</a>
</div>

<div class="installation" lang="en">
## Installation of falkon {#installation-of-falkon}

Install <span class="application">falkon</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      .. &&

make
```

The tests need the package to be installed first because they depend on functionality that is only present after the package is installed.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
ldconfig
```

To test the results, issue: <span class="command"><strong>make test</strong></span>. All tests should pass. If any fail, the full results will be in <code class="filename">Testing/Temporary/LastTest.log</code>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When upgrading this package, it is possible that the contents of the application will remain empty even though everything else appears to be working properly. If this happens, try removing <code class="filename">~/.cache/falkon</code> and restarting the program.
</div>

If you have installed <span class="application">Pyside2</span>, you will want to examine <span class="command"><strong>hellopython.py</strong></span> which is in the <code class="filename">scripts/</code> directory, and perhaps copy it to your home directory.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are on a non-x86_64 architecture and run into problems with missing text, you may wish to export <code class="envar">QTWEBENGINE_CHROMIUM_FLAGS="--no-sandbox"</code> prior to running Falkon. Note that doing this amplifies the severity of any security vulnerabilities in QtWebEngine.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D BUILD_TESTING=OFF</code>: This will save a little time and space by not building the test programs. Use this switch if you are not planning on running the tests.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">falkon</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libFalkonPrivate.so.3</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/falkon</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------- -----------------------------------------
  <a id="falkon-prog"></a><span class="command"><span class="term"><strong>falkon</strong></span></span>                         is a web browser which uses qtwebengine
  <a id="libFalkonPrivate.so.3"></a><span class="term"><code class="filename">libFalkonPrivate.so.3</code></span>   contains functions used by falkon
  ----------------------------------------------------------------------- -----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](epiphany.md "Epiphany-50.4")

    Epiphany-50.4

-   [Next](firefox.md "Firefox-140.11.0esr")

    Firefox-140.11.0esr

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
