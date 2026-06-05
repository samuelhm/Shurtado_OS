<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](vala.md "Vala-0.56.19")

    Vala-0.56.19

-   [Next](yasm.md "yasm-1.3.0")

    yasm-1.3.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Valgrind-3.27.1 {#valgrind-3.27.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Valgrind {#introduction-to-valgrind}

<span class="application">Valgrind</span> is an instrumentation framework for building dynamic analysis tools. There are Valgrind tools that can automatically detect many memory management and threading bugs, and profile programs in detail. Valgrind can also be used to build new tools.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://sourceware.org/pub/valgrind/valgrind-3.27.1.tar.bz2">https://sourceware.org/pub/valgrind/valgrind-3.27.1.tar.bz2</a>

-   Download MD5 sum: 9b819b1aa88fc5936373fc624aa75723

-   Download size: 17 MB

-   Estimated disk space required: 421 MB (add 107 MB for tests)

-   Estimated build time: 0.5 SBU (add 7.6 SBU for tests; both using parallelism=4)
</div>

### Valgrind Dependencies

#### Optional

<a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a> (for tests), <a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a> (for tests), <a class="xref" href="libaio.md" title="libaio-0.3.113">libaio-0.3.113</a>, <a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (with Clang), and <a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a> (for tests)
</div>

<div class="installation" lang="en">
## Installation of Valgrind {#installation-of-valgrind}

Install <span class="application">Valgrind</span> by running the following commands:

```bash
sed -i 's|/doc/valgrind||' docs/Makefile.in &&

./configure --prefix=/usr \
            --datadir=/usr/share/doc/valgrind-3.27.1 &&
make
```

To test the results, issue: <span class="command"><strong>make regtest</strong></span>. The tests may hang forever if <a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a> is not installed. Some tests are known to hang also, depending on the version of glibc. A few tests can fail in various suites. Problematic tests can be disabled by changing the **`prereq:`** line in the corresponding <code class="filename">.vgtest</code> file to **`prereq: false`**. For example:

```bash
sed -e 's@prereq:.*@prereq: false@' \
    -i {helgrind,drd}/tests/pth_cond_destroy_busy.vgtest
```

An additional test suite is now available that tests Valgrind with every system call provided by the kernel. The test suite is designed to test not only glibc and the kernel's conformance to standards, but also Valgrind's ability to handle different system calls. The test suite does require an internet connection to download the tests, and it takes a long time to run (an additional 20 SBUs and 1.3GB of disk space.) If you wish to run this test suite, issue the following command: <span class="command"><strong>make ltpchecks</strong></span>. Note that the output will show several failures where Valgrind does not currently support certain system calls, but the logs for the test suite can be found in the <code class="filename">auxprogs/auxchecks/ltp-full-20250930/ltp/tests</code> directory. These tests are currently broken with Linux 6.18 and glibc-2.43.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="application">OpenMP</span> tests are skipped if libgomp has been compiled with <code class="option">--enable-linux-futex</code> (the default). If needed, just recompile the libgomp library from the gcc build tree, passing <code class="option">--disable-linux-futex</code> to configure, storing the library to some place and changing the link from <code class="filename">/usr/lib/libgomp.so.1</code> to point to the new library.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i ... docs/Makefile.in</strong></span> : This sed provides for installing the documentation in a versioned directory.

<code class="option">--enable-lto=yes</code>: This option allows building Valgrind with LTO (link time optimization). This produces a smaller/faster Valgrind (up to 10%), but build time increases to about 5.5 SBU.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">callgrind_annotate, callgrind_control, cg_annotate, cg_diff, cg_merge, ms_print, valgrind, valgrind-di-server, valgrind-listener, and vgdb</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/valgrind, /usr/libexec/valgrind, /usr/include/valgrind, and /usr/share/doc/valgrind-3.27.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  <a id="valgrind-prog"></a><span class="command"><span class="term"><strong>valgrind</strong></span></span>                  is a program for debugging and profiling Linux executables
  <a id="callgrind_annotate"></a><span class="command"><span class="term"><strong>callgrind_annotate</strong></span></span>   takes an output file produced by the <span class="application">Valgrind</span> tool Callgrind and prints the information in an easy-to-read form
  <a id="callgrind_control"></a><span class="command"><span class="term"><strong>callgrind_control</strong></span></span>     controls programs being run by the <span class="application">Valgrind</span> tool Callgrind
  <a id="cg_annotate"></a><span class="command"><span class="term"><strong>cg_annotate</strong></span></span>                 is a post-processing tool for the <span class="application">Valgrind</span> tool Cachegrind
  <a id="cg_diff"></a><span class="command"><span class="term"><strong>cg_diff</strong></span></span>                         compares two Cachegrind output files
  <a id="cg_merge"></a><span class="command"><span class="term"><strong>cg_merge</strong></span></span>                       merges multiple Cachegrind output files into one
  <a id="ms_print"></a><span class="command"><span class="term"><strong>ms_print</strong></span></span>                       takes an output file produced by the <span class="application">Valgrind</span> tool Massif and prints the information in an easy-to-read form
  <a id="valgrind-di-server"></a><span class="command"><span class="term"><strong>valgrind-di-server</strong></span></span>   is a server that reads debuginfo from objects stored on a different machine
  <a id="valgrind-listener"></a><span class="command"><span class="term"><strong>valgrind-listener</strong></span></span>     listens on a socket for Valgrind commentary
  <a id="vgdb"></a><span class="command"><span class="term"><strong>vgdb</strong></span></span>                               is an intermediary between Valgrind and GDB or a shell
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](vala.md "Vala-0.56.19")

    Vala-0.56.19

-   [Next](yasm.md "yasm-1.3.0")

    yasm-1.3.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
