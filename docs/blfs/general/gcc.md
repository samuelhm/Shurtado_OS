<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](dtc.md "dtc-1.8.1")

    dtc-1.8.1

-   [Next](gc.md "GC-8.2.12")

    GC-8.2.12

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GCC-16.1.0 {#gcc-16.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GCC {#introduction-to-gcc}

The <span class="application">GCC</span> package contains the GNU Compiler Collection. This page describes the installation of compilers for the following languages: C, C++, Fortran, Objective C, Objective C++, Go, and Modula2. Since C and C++ are installed in LFS, this page is either for upgrading C and C++, or for installing additional compilers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Additional languages, including COBOL, D, and Ada, are available in the collection. COBOL is currently only supported on x86-64 systems. D and Ada have a binary bootstrap requirement for the first installation, so their installation is not described here. To install D or Ada, you can proceed along the same lines as below after installing the corresponding compiler from a binary package. Finally add <code class="option">ada</code> or <code class="option">d</code> or <code class="option">cobol</code> to the *`--enable-languages`* line as desired.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

If you are upgrading <span class="application">GCC</span> from any other version prior to 16.1.0, then you must be careful compiling 3rd party kernel modules. You should ensure that the kernel and all its native modules are also compiled using the same version of <span class="application">GCC</span> that you use to build the 3rd party module. This issue does not affect native kernel (and kernel modules) updates, as the instructions below are a complete reinstallation of <span class="application">GCC</span>. If you have existing 3rd party modules installed, ensure they are recompiled using the updated version of <span class="application">GCC</span>.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/gcc/gcc-16.1.0/gcc-16.1.0.tar.xz">https://ftpmirror.gnu.org/gcc/gcc-16.1.0/gcc-16.1.0.tar.xz</a>

-   Download MD5 sum: 9b016416f8e2dce4a0ef8759d1936446

-   Download size: 98 MB

-   Estimated disk space required: 12 GB (3.8 GB installed with all listed languages; add 2 GB for tests)

-   Estimated build time: 20 SBU (add 34 SBU for tests; both with parallelism=8)
</div>

### GCC Dependencies

#### Optional

<a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (some tests use it if installed; note that if it's installed but not built with <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a> these tests will fail), <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> (for the COBOL runtime library), <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (for tests), and <a class="ulink" href="https://repo.or.cz/isl.git">ISL</a> (to enable graphite optimization)
</div>

<div class="installation" lang="en">
## Installation of GCC {#installation-of-gcc}

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

Even if you specify only languages other than C and C++ to the <span class="command"><strong>./configure</strong></span> command below, the installation process will overwrite your existing <span class="application">GCC</span> C and C++ compilers and libraries. Running the full suite of tests is recommended because of this.

Do not continue with the <span class="command"><strong>make install</strong></span> command until you are confident the build was successful. You can compare your test results with those found at <a class="ulink" href="https://gcc.gnu.org/ml/gcc-testresults/">https://gcc.gnu.org/ml/gcc-testresults/</a>. You may also want to refer to the information found in the <span class="application">GCC</span> section of Chapter 8 in the LFS book (<a class="ulink" href="../../../../lfs/view/systemd/chapter08/gcc.md">../../../../lfs/view/systemd/chapter08/gcc.html</a>).
</div>

The instructions below are intentionally performing a <span class="quote">“<span class="quote">bootstrap</span>”</span> process. Bootstrapping is needed for robustness and is highly recommended when upgrading the compilers version. To disable bootstrapping anyway, add *`--disable-bootstrap`* to the <span class="command"><strong>./configure</strong></span> options below.

Install <span class="application">GCC</span> by running the following commands:

```bash
case $(uname -m) in
  x86_64)
    sed -i.orig '/m64=/s/lib64/lib/' gcc/config/i386/t-linux64
  ;;
esac

mkdir build               &&
cd    build               &&

../configure              \
    --prefix=/usr         \
    --disable-multilib    \
    --with-system-zlib    \
    --enable-default-pie  \
    --enable-default-ssp  \
    --enable-host-pie     \
    --disable-fixincludes \
    --enable-languages=c,c++,fortran,go,objc,obj-c++,m2 &&
make
```

If you have installed additional packages such as <span class="application">valgrind</span> and <span class="application">gdb</span>, the <span class="application">gcc</span> part of the test suite will run more tests than in LFS. Some of those will report FAIL and others XPASS (pass when expected to FAIL). If all the compilers above are built, there will be about 83 unexpected failures out of over 610,000 tests. To run the tests, issue:

```bash
make -k check
```

The tests are very long, and the results may be hard to find in the logs, specially if you use parallel jobs with make. You can get a summary of the tests with:

```bash
../contrib/test_summary
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

mkdir -pv /usr/share/gdb/auto-load/usr/lib              &&
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib &&

chown -v -R root:root \
    /usr/lib/gcc/*linux-gnu/16.1.0/include{,-fixed}     &&

ln -sfv ../../libexec/gcc/$(gcc -dumpmachine)/16.1.0/liblto_plugin.so \
        /usr/lib/bfd-plugins/
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>mkdir build; cd build</strong></span>: The <span class="application">GCC</span> documentation recommends building the package in a dedicated build directory.

*`--disable-multilib`*: This parameter ensures that files are created for the specific architecture of your computer.

*`--with-system-zlib`*: Uses the system version of <span class="application">zlib</span> instead of the bundled copy. <span class="application">zlib</span> is used for compressing and decompressing <span class="application">GCC</span>'s intermediate language in LTO (Link Time Optimization) object files.

*`--enable-default-pie`*: Makes the <code class="option">-fpie</code> option the default when compiling programs. Together with the <a class="xref" href="../appendices/glossary.md#gASLR" title="ASLR">ASLR</a> feature enabled in the kernel, this defeats some types of attacks based on known memory layouts.

*`--enable-default-ssp`*: Makes the <code class="option">-fstack-protector-strong</code> option the default when compiling programs. <a class="xref" href="../appendices/glossary.md#gSSP" title="SSP">SSP</a> is a technique preventing attacks that alter the flow of a program by corrupting the parameter stack.

*`--enable-host-pie`*: Makes the compiler executables PIE (Position Independent Executable). This can be used to enhance protection against ROP (Return Oriented Programming) attacks, and can be viewed as part of a wider trend to harden binaries.

*`--enable-languages=c,c++,fortran,go,objc,obj-c++,m2`*: This command identifies which languages to build. You may modify this command to remove undesired languages. GCC also supports Ada and D, but building GCC with Ada (or D) support needs an existing Ada (or D) compiler. So they are not enabled here. You can also enable COBOL support by adding cobol to the command, but note that it only works properly on x86_64 systems.

<span class="command"><strong>make -k check</strong></span>: This command runs the test suite without stopping if any errors are encountered.

<span class="command"><strong>../contrib/test_summary</strong></span>: This command will produce a summary of the test suite results. You can append <span class="command"><strong>\| grep -A7 Summ</strong></span> to the command to produce an even more condensed version of the summary. You may also wish to redirect the output to a file for review and comparison later on.

<span class="command"><strong>mv -v /usr/lib/\*gdb.py ...</strong></span>: The installation stage puts some files used by <span class="application">gdb</span> under the <code class="filename">/usr/lib</code> directory. This generates spurious error messages when performing <span class="command"><strong>ldconfig</strong></span>. This command moves the files to another location.

<span class="command"><strong>chown -v -R root:root /usr/lib/gcc/\*linux-gnu/...</strong></span>: If the package is built by a user other than root, the ownership of the installed <code class="filename">include</code> directory (and its content) will be incorrect. This command changes the ownership to the <code class="systemitem">root</code> user and group.

<code class="option">--enable-host-shared --enable-languages=jit</code>: Build <code class="systemitem">libgccjit</code>, a library for embedding GCC inside programs and libraries for generating machine code. Despite <span class="quote">“<span class="quote">JIT</span>”</span> (just-in-time) in the name, the library can be used for AOT (ahead-of-time) compilation as well. <code class="option">--enable-host-shared</code> is needed for building <code class="systemitem">libgccjit</code>, but it significantly slows down GCC. So <code class="systemitem">libgccjit</code> should be built and installed separately, not as a part of the <span class="quote">“<span class="quote">main</span>”</span> GCC installation. If you need this library, configure GCC with these two options and install the library by running <span class="command"><strong>make -C gcc jit.install-common jit.install-info</strong></span> as the <code class="systemitem">root</code> user. This library is not used by any BLFS package, nor is it tested by the BLFS developers.
</div>

<div class="content" lang="en">
## Contents {#contents}

Some program and library names and descriptions are not listed here, but can be found at <a class="ulink" href="../../../../lfs/view/systemd/chapter08/gcc.md#contents-gcc">LFS section for GCC</a> as they were initially installed during the building of LFS.

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gccgo, gfortran, gm2, go, and gofmt, hard-linked to architecture specific names</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgfortran.{so,a}, libgm2.{so,a} libgo.{so,a}, libgobegin.a, libgolibbegin.a, libobjc.{so,a}, and numerous other run-time libraries and executables</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/go</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------------------------
  <a id="gccgo"></a><span class="command"><span class="term"><strong>gccgo</strong></span></span>         is a GCC-based compiler for the <span class="application">Go</span> language
  <a id="gm2"></a><span class="command"><span class="term"><strong>gm2</strong></span></span>             is a GCC-based compiler for the <span class="application">Modula-2</span> language
  <a id="go"></a><span class="command"><span class="term"><strong>go</strong></span></span>               is a tool for managing <span class="application">Go</span> source code
  <a id="gofmt"></a><span class="command"><span class="term"><strong>gofmt</strong></span></span>         is a tool for formatting <span class="application">Go</span> source code
  <a id="gfortran"></a><span class="command"><span class="term"><strong>gfortran</strong></span></span>   is a GCC-based compiler for the <span class="application">Fortran</span> language
  ------------------------------------------------ -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dtc.md "dtc-1.8.1")

    dtc-1.8.1

-   [Next](gc.md "GC-8.2.12")

    GC-8.2.12

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
