<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libqmi.md "libqmi-1.38.0")

    libqmi-1.38.0

-   [Next](libsigc.md "libsigc++-2.12.1")

    libsigc++-2.12.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libseccomp-2.6.0 {#libseccomp-2.6.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libseccomp {#introduction-to-libseccomp}

The <span class="application">libseccomp</span> package provides an easy to use and platform independent interface to the <span class="application">Linux</span> kernel's syscall filtering mechanism.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/seccomp/libseccomp/releases/download/v2.6.0/libseccomp-2.6.0.tar.gz">https://github.com/seccomp/libseccomp/releases/download/v2.6.0/libseccomp-2.6.0.tar.gz</a>

-   Download MD5 sum: 2d42bcde31fd6e994fcf251a1f71d487

-   Download size: 672 KB

-   Estimated disk space required: 7.6 MB (additional 6.3 MB for tests)

-   Estimated build time: less than 0.1 SBU (additional 1.7 SBU for tests)
</div>

### libseccomp Dependencies

#### Optional

<a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a> (needed for tests), <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a> (for python bindings), and <a class="ulink" href="https://github.com/linux-test-project/lcov">LCOV</a>
</div>

<div class="installation" lang="en">
## Installation of libseccomp {#installation-of-libseccomp}

Install <span class="application">libseccomp</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-python</code>: this switch is needed to build python bindings if <a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a> is installed. The option <code class="option">--disable-static</code> must not be given if this option is used. And you must run <span class="command"><strong>sed 's/env python/&3/' -i tests/regression</strong></span> if this option is used and you want to run the test suite.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">scmp_sys_resolver</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libseccomp.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ --------------------------------------------------
  <a id="scmp_sys_resolver"></a><span class="command"><span class="term"><strong>scmp_sys_resolver</strong></span></span>   is used to resolve system calls for applications
  <a id="libseccomp-lib"></a><span class="term"><code class="filename">libseccomp.so</code></span>             contains API functions for translating syscalls
  ------------------------------------------------------------------ --------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libqmi.md "libqmi-1.38.0")

    libqmi-1.38.0

-   [Next](libsigc.md "libsigc++-2.12.1")

    libsigc++-2.12.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
