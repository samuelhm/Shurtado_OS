<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](aspell.md "Aspell-0.60.8.2")

    Aspell-0.60.8.2

-   [Next](brotli.md "brotli-1.2.0")

    brotli-1.2.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# boost-1.91.0-1 {#boost-1.91.0-1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Boost {#introduction-to-boost}

<span class="application">Boost</span> provides a set of free peer-reviewed portable C++ source libraries. It includes libraries for linear algebra, pseudorandom number generation, multithreading, image processing, regular expressions and unit testing.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package will extract to the <code class="filename">boost-1.91.0-1</code>/ directory.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/boostorg/boost/releases/download/boost-1.91.0-1/boost-1.91.0-1-b2-nodocs.tar.xz">https://github.com/boostorg/boost/releases/download/boost-1.91.0-1/boost-1.91.0-1-b2-nodocs.tar.xz</a>

-   Download MD5 sum: c2165c422db10a72772c7836cd03bea3

-   Download size: 50 MB

-   Estimated disk space required: 747 MB (207 MB installed)

-   Estimated build time: 1.7 SBU (Using parallelism=4; add 0.2 SBU for tests)
</div>

### Boost Dependencies

#### Recommended

<a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a>

#### Optional

<a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="python-modules.md#numpy" title="NumPy-2.4.6">NumPy-2.4.6</a>, and <a class="ulink" href="https://www.open-mpi.org/">Open MPI</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/boost">https://wiki.linuxfromscratch.org/blfs/wiki/boost</a>
</div>

<div class="installation" lang="en">
## Installation of Boost {#installation-of-boost}

First, fix a build issue which occurs in the stacktrace library. This issue is specific to i686 systems.

```bash
case $(uname -m) in
   i?86)
      sed -e "s/defined(__MINGW32__)/& || defined(__i386__)/" \
          -i ./libs/stacktrace/src/exception_headers.h ;;
esac
```

This package can be built with several jobs running in parallel. In the instructions below, all available logical cores are used. Replace *`$(nproc)`* with the number of logical cores you want to use if you don't want to use all. Install <span class="application">Boost</span> by running the following commands:

```bash
./bootstrap.sh --prefix=/usr --with-python=python3 &&
./b2 stage -j$(nproc) threading=multi link=shared
```

To run Boost.Build's regression tests, issue <span class="command"><strong>pushd tools/build/test; python3 test_all.py; popd</strong></span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Boost installs many versioned directories in /usr/lib/cmake. If a new version of <span class="application">Boost</span> is installed over a previous version, the older cmake directories need to be explicitly removed. To do this, run as the <code class="systemitem">root</code> user:

```bash
rm -rf /usr/lib/cmake/[Bb]oost*
```

before installing the new version.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
./b2 install threading=multi link=shared
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`threading=multi`*: This parameter ensures that <span class="application">Boost</span> is built with multithreading support.

*`link=shared`*: This parameter ensures that only shared libraries are created, except for libboost_exception and libboost_test_exec_monitor which are created as static. Most people will not need the static libraries, and most programs using <span class="application">Boost</span> only use the headers. Omit this parameter if you do need static libraries.

*`--with-python=python3`*: This switch ensures that Python is detected correctly.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libboost_atomic.so, libboost_charconv.so, libboost_chrono.so, libboost_container.so, libboost_context.so, libboost_contract.so, libboost_coroutine.so, libboost_date_time.so, libboost_exception.a, libboost_fiber.so, libboost_filesystem.so, libboost_graph.so, libboost_iostreams.so, libboost_json.so, libboost_locale.so, libboost_log_setup.so, libboost_log.so, libboost_math_c99.so, libboost_math_c99f.so, libboost_math_c99l.so, libboost_math_tr1.so, libboost_math_tr1f.so, libboost_math_tr1l.so, libboost_nowide.so, libboost_numpy314.so, libboost_prg_exec_monitor.so, libboost_process.so, libboost_program_options.so, libboost_python314.so, libboost_random.so, libboost_regex.so, libboost_serialization.so, libboost_stacktrace_addr2line.so, libboost_stacktrace_basic.so, libboost_stacktrace_from_exception.so, libboost_stacktrace_noop.so, libboost_test_exec_monitor.a, libboost_thread.so, libboost_timer.so, libboost_type_erasure.so, libboost_unit_test_framework.so, libboost_url.so, libboost_wave.so, and libboost_wserialization.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/boost and /usr/share/boost_predef</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="libboost"></a><span class="term"><code class="filename">libboost_*.so</code></span>   contains libraries that provide a variety of functions, including wrappers for NumPy, linear algebra, pseudorandom number generation, multithreading, image processing, regular expressions, unit testing, locales, JSON, logging, graphing, and debugging
  -------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](aspell.md "Aspell-0.60.8.2")

    Aspell-0.60.8.2

-   [Next](brotli.md "brotli-1.2.0")

    brotli-1.2.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
