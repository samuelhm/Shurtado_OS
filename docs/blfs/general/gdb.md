<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](gc.md "GC-8.2.12")

    GC-8.2.12

-   [Next](git.md "Git-2.54.0")

    Git-2.54.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GDB-17.2 {#gdb-17.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GDB {#introduction-to-gdb}

<span class="application">GDB</span>, the GNU Project debugger, allows you to see what is going on <span class="quote">“<span class="quote">inside</span>”</span> another program while it executes -- or what another program was doing at the moment it crashed. Note that <span class="application">GDB</span> is most effective when tracing programs and libraries that were built with debugging symbols and not stripped.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/gdb/gdb-17.2.tar.xz">https://ftpmirror.gnu.org/gdb/gdb-17.2.tar.xz</a>

-   Download MD5 sum: 6137ae4ffa0e7423fce956768835de1f

-   Download size: 24 MB

-   Estimated disk space required: 884 MB (add 824 MB for docs; add 7.8 GB for tests)

-   Estimated build time: 1.2 SBU (add 0.4 SBU for docs; add 12.0 SBU tests; all using parallelism=8)
</div>

### GDB Dependencies

#### Recommended Runtime Dependency

<a class="xref" href="python-modules.md#six" title="six-1.17.0">six-1.17.0</a> (Python 3 module, required at run-time to use GDB scripts from various LFS/BLFS packages with Python 3 installed in LFS)

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="gcc.md" title="GCC-16.1.0">GCC-16.1.0</a> (ada, gfortran, and go are used for tests), <a class="xref" href="guile.md" title="Guile-3.0.11">Guile-3.0.11</a>, <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a> (used for some tests), <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, and <a class="ulink" href="https://sourceware.org/systemtap/">SystemTap</a> (run-time, used for tests)
</div>

<div class="installation" lang="en">
## Installation of GDB {#installation-of-gdb}

Install <span class="application">GDB</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

../configure --prefix=/usr          \
             --with-system-readline \
             --with-system-zlib     \
             --with-python=/usr/bin/python3 &&
make
```

Optionally, to build the API documentation using <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, run:

```bash
make -C gdb/doc doxy
```

Running the tests is not recommended. The results vary a lot depending on the system architecture and what optional dependencies are installed and what version of gcc is being used. On one system tested, there were 140 unexpected failures (out of over 108,000 tests) and on another system there were "only" 14 unexpected failures. The time to run the tests varies from approximately 3 SBU to over 15 SBU when using -j8. This depends on number of tests that time out as well as other factors.

<div class="admon tip">
![\[Tip\]](../images/tip.png)

### Tip

With a plain <span class="command"><strong>make check</strong></span>, there are many warning messages about a missing global configuration file. These can be avoided by running <span class="command"><strong>touch global.exp</strong></span> and prepending the <span class="command"><strong>make check</strong></span> command with <span class="command"><strong>DEJAGNU=\$PWD/global.exp</strong></span>. In addition the tests can be speeded up considerably by using the <span class="command"><strong>make</strong></span> option "-j\<N\>" where \<N\> is the number of cores on your system. At times though, using parallelism may result in strange failures.
</div>

To test the results anyway, issue:

```bash
pushd gdb/testsuite &&
make  site.exp      &&
echo  "set gdb_test_timeout 30" >> site.exp &&
make check 2>1 | tee gdb-check.log
popd
```

See <span class="emphasis"><em>gdb/testsuite/README</em></span> and <a class="ulink" href="https://sourceware.org/gdb/wiki/TestingGDB">TestingGDB</a>. There are many additional problems with the test suite:

<div class="itemizedlist">
-   Clean directories are needed if re-running the tests. For that reason, make a copy of the compiled source code directory before the tests in case you need to run the tests again.

-   Results can also depend on installed compilers.

-   On some AMD-based systems, over 200 additional tests may fail due to a difference in the threading implementation on those CPUs.

-   For gdb-17.1, using an Intel i7-14700K, there were 120 unexpected failures and over 126,500 passed tests.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make -C gdb install &&
make -C gdbserver install
```

If you have built the API documentation, it is now in gdb/doc/doxy. You can install it (as the <code class="systemitem">root</code> user):

```bash
install -d /usr/share/doc/gdb-17.2 &&
rm -rf gdb/doc/doxy/xml &&
cp -Rv gdb/doc/doxy /usr/share/doc/gdb-17.2
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-system-readline`*: This switch forces <span class="application">GDB</span> to use the copy of <span class="application">Readline</span> installed in LFS.

*`--with-system-zlib`*: This switch forces <span class="application">GDB</span> to use the copy of <span class="application">Zlib</span> installed in LFS.

*`--with-python=/usr/bin/python3`*: This switch forces <span class="application">GDB</span> to use Python 3.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gcore, gdb, gdbserver, gdb-add-index, and gstack</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libinproctrace.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,share}/gdb and /usr/share/doc/gdb-17.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gcore"></a><span class="command"><span class="term"><strong>gcore</strong></span></span>                     generates a core dump of a running program
  <a id="gdb-prog"></a><span class="command"><span class="term"><strong>gdb</strong></span></span>                    is the GNU Debugger
  <a id="gdbserver"></a><span class="command"><span class="term"><strong>gdbserver</strong></span></span>             is a remote server for the GNU debugger (it allows programs to be debugged from a different machine)
  <a id="gdb-add-index"></a><span class="command"><span class="term"><strong>gdb-add-index</strong></span></span>     Allows adding index files to ELF binaries. This speeds up <span class="command"><strong>gdb</strong></span> start on large programs.
  <a id="gstack"></a><span class="command"><span class="term"><strong>gstack</strong></span></span>                   prints a stack trace from a program which is currently running
  <a id="libinproctrace"></a><span class="term"><code class="filename">libinproctrace.so</code></span>   contains functions for the in-process tracing agent. The agent allows for installing fast tracepoints, listing static tracepoint markers, probing static tracepoints markers, and starting trace monitoring.
  ------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gc.md "GC-8.2.12")

    GC-8.2.12

-   [Next](git.md "Git-2.54.0")

    Git-2.54.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
