<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](clisp.md "Clisp-2.49.95")

    Clisp-2.49.95

-   [Next](doxygen.md "Doxygen-1.17.0")

    Doxygen-1.17.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# CMake-4.3.3 {#cmake-4.3.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to CMake {#introduction-to-cmake}

The <span class="application">CMake</span> package contains a modern toolset used for generating Makefiles. It is a successor of the auto-generated <span class="command"><strong>configure</strong></span> script and aims to be platform- and compiler-independent. A significant user of <span class="application">CMake</span> is <span class="application">KDE</span> since version 4.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://cmake.org/files/v4.3/cmake-4.3.3.tar.gz">https://cmake.org/files/v4.3/cmake-4.3.3.tar.gz</a>

-   Download MD5 sum: 6e1fe7693d103dac31aaaf0732926e20

-   Download size: 13 MB

-   Estimated disk space required: 2.2 GB (with tests)

-   Estimated build time: 2.2 SBU (add 4.3 SBU for tests, both using parallelism=4)
</div>

### CMake Dependencies

#### Recommended

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="libuv.md" title="libuv-1.52.1">libuv-1.52.1</a>, and <a class="xref" href="../basicnet/nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a>

#### Optional

<a class="xref" href="gcc.md" title="GCC-16.1.0">GCC-16.1.0</a> (for gfortran), <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> (for use during tests), <a class="xref" href="mercurial.md" title="Mercurial-7.2.2">mercurial-7.2.2</a> (for use during tests), <a class="xref" href="openjdk.md" title="OpenJDK-21.0.10">OpenJDK-21.0.10</a> (for use during tests), <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> (for the Qt-based GUI), <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (for building documents), <a class="xref" href="subversion.md" title="Subversion-1.14.5">Subversion-1.14.5</a> (for testing), <a class="ulink" href="https://github.com/google/cppdap/">cppdap</a>, <a class="ulink" href="https://github.com/open-source-parsers/jsoncpp/">jsoncpp</a>, and <a class="ulink" href="https://rhash.sourceforge.net/">rhash</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of CMake {#installation-of-cmake}

Install <span class="application">CMake</span> by running the following commands:

```bash
sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake &&

./bootstrap --prefix=/usr        \
            --system-libs        \
            --mandir=/share/man  \
            --no-system-jsoncpp  \
            --no-system-cppdap   \
            --no-system-librhash \
            --docdir=/share/doc/cmake-4.3.3 &&
make
```

To test the results, issue: <span class="command"><strong>bin/ctest -j<em>`$(nproc)`</strong></em></span>. Replace *`$(nproc)`* with an integer between 1 and the number of system logical cores if you don't want to use all.

If you want to investigate a problem with a given "problem1-test", use <span class="command"><strong>bin/ctest -R "problem1-test"</strong></span> and, to omit it, use <span class="command"><strong>bin/ctest -E "problem1-test"</strong></span>. These options can be used together: <span class="command"><strong>bin/ctest -R "problem1-test" -E "problem2-test"</strong></span>. Option <code class="option">-N</code> can be used to display all available tests, and you can run <span class="command"><strong>bin/ctest</strong></span> for a sub-set of tests by using separated by spaces names or numbers as options. Option <code class="option">--help</code> can be used to show all options.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... Modules/GNUInstallDirs.cmake</strong></span>: This command disables applications using cmake from attempting to install files in /usr/lib64/.

*`--system-libs`*: This switch forces the build system to link against the system installed version for all needed libraries but those explicitly specified via a <code class="option">--no-system-*</code> option.

*`--no-system-jsoncpp`* and *`--no-system-cppdap`*: These switches remove the <span class="application">JSON-C++</span> library from the list of system libraries. A bundled version of that library is used instead.

*`--no-system-librhash`*: This switch removes the <span class="application">librhash</span> library from the list of system libraries used. A bundled version of that library is used instead.

<code class="option">--no-system-{curl,libarchive,libuv,nghttp2}</code>: Use the corresponding option in the list for the <span class="command"><strong>bootstrap</strong></span> if one of the recommended dependencies is not installed. A bundled version of the dependency will be used instead.

<code class="option">--qt-gui</code>: This switch enables building the <span class="application">Qt</span>-based GUI for <span class="application">CMake</span>.

<code class="option">--parallel=</code>: This switch enables performing the <span class="application">CMake</span> bootstrap with multiple jobs at one time. It's not needed if the <code class="envar">MAKEFLAGS</code> variable has been already set for using multiple processors following <a class="xref" href="../introduction/notes-on-building.md#parallel-builds" title="Using Multiple Processors">Using Multiple Processors</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ccmake, cmake, cmake-gui (optional), cpack, and ctest</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/cmake-4.3 and /usr/share/doc/cmake-4.3.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------------
  <a id="ccmake"></a><span class="command"><span class="term"><strong>ccmake</strong></span></span>         is a curses based interactive frontend to <span class="command"><strong>cmake</strong></span>
  <a id="cmake-prog"></a><span class="command"><span class="term"><strong>cmake</strong></span></span>      is the makefile generator
  <a id="cmake-gui"></a><span class="command"><span class="term"><strong>cmake-gui</strong></span></span>   (optional) is the <span class="application">Qt</span>-based frontend to <span class="command"><strong>cmake</strong></span>
  <a id="cpack"></a><span class="command"><span class="term"><strong>cpack</strong></span></span>           is the <span class="application">CMake</span> packaging program
  <a id="ctest"></a><span class="command"><span class="term"><strong>ctest</strong></span></span>           is a testing utility for cmake-generated build trees
  -------------------------------------------------- ------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](clisp.md "Clisp-2.49.95")

    Clisp-2.49.95

-   [Next](doxygen.md "Doxygen-1.17.0")

    Doxygen-1.17.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
