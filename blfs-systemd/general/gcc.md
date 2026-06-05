::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](dtc.md "dtc-1.8.1"){accesskey="p"}

    dtc-1.8.1

-   [Next](gc.md "GC-8.2.12"){accesskey="n"}

    GC-8.2.12

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gcc}GCC-16.1.0 {#gcc-16.1.0 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to GCC {#introduction-to-gcc .sect2}

The [GCC]{.application} package contains the GNU Compiler Collection. This page describes the installation of compilers for the following languages: C, C++, Fortran, Objective C, Objective C++, Go, and Modula2. Since C and C++ are installed in LFS, this page is either for upgrading C and C++, or for installing additional compilers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Additional languages, including COBOL, D, and Ada, are available in the collection. COBOL is currently only supported on x86-64 systems. D and Ada have a binary bootstrap requirement for the first installation, so their installation is not described here. To install D or Ada, you can proceed along the same lines as below after installing the corresponding compiler from a binary package. Finally add `ada`{.option} or `d`{.option} or `cobol`{.option} to the *`--enable-languages`* line as desired.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

If you are upgrading [GCC]{.application} from any other version prior to 16.1.0, then you must be careful compiling 3rd party kernel modules. You should ensure that the kernel and all its native modules are also compiled using the same version of [GCC]{.application} that you use to build the 3rd party module. This issue does not affect native kernel (and kernel modules) updates, as the instructions below are a complete reinstallation of [GCC]{.application}. If you have existing 3rd party modules installed, ensure they are recompiled using the updated version of [GCC]{.application}.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/gcc/gcc-16.1.0/gcc-16.1.0.tar.xz](https://ftpmirror.gnu.org/gcc/gcc-16.1.0/gcc-16.1.0.tar.xz){.ulink}

-   Download MD5 sum: 9b016416f8e2dce4a0ef8759d1936446

-   Download size: 98 MB

-   Estimated disk space required: 12 GB (3.8 GB installed with all listed languages; add 2 GB for tests)

-   Estimated build time: 20 SBU (add 34 SBU for tests; both with parallelism=8)
:::

### GCC Dependencies

#### Optional

[GDB-17.2](gdb.md "GDB-17.2"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} (some tests use it if installed; note that if it's installed but not built with [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref} these tests will fail), [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref} (for the COBOL runtime library), [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref} (for tests), and [ISL](https://repo.or.cz/isl.git){.ulink} (to enable graphite optimization)
:::::::

:::: {.installation lang="en"}
## Installation of GCC {#installation-of-gcc .sect2}

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Even if you specify only languages other than C and C++ to the [**./configure**]{.command} command below, the installation process will overwrite your existing [GCC]{.application} C and C++ compilers and libraries. Running the full suite of tests is recommended because of this.

Do not continue with the [**make install**]{.command} command until you are confident the build was successful. You can compare your test results with those found at [https://gcc.gnu.org/ml/gcc-testresults/](https://gcc.gnu.org/ml/gcc-testresults/){.ulink}. You may also want to refer to the information found in the [GCC]{.application} section of Chapter 8 in the LFS book ([../../../../lfs/view/systemd/chapter08/gcc.html](../../../../lfs/view/systemd/chapter08/gcc.md){.ulink}).
:::

The instructions below are intentionally performing a [“[bootstrap]{.quote}”]{.quote} process. Bootstrapping is needed for robustness and is highly recommended when upgrading the compilers version. To disable bootstrapping anyway, add *`--disable-bootstrap`* to the [**./configure**]{.command} options below.

Install [GCC]{.application} by running the following commands:

``` userinput
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

If you have installed additional packages such as [valgrind]{.application} and [gdb]{.application}, the [gcc]{.application} part of the test suite will run more tests than in LFS. Some of those will report FAIL and others XPASS (pass when expected to FAIL). If all the compilers above are built, there will be about 83 unexpected failures out of over 610,000 tests. To run the tests, issue:

``` userinput
make -k check
```

The tests are very long, and the results may be hard to find in the logs, specially if you use parallel jobs with make. You can get a summary of the tests with:

``` userinput
../contrib/test_summary
```

Now, as the `root`{.systemitem} user:

``` root
make install &&

mkdir -pv /usr/share/gdb/auto-load/usr/lib              &&
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib &&

chown -v -R root:root \
    /usr/lib/gcc/*linux-gnu/16.1.0/include{,-fixed}     &&

ln -sfv ../../libexec/gcc/$(gcc -dumpmachine)/16.1.0/liblto_plugin.so \
        /usr/lib/bfd-plugins/
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**mkdir build; cd build**]{.command}: The [GCC]{.application} documentation recommends building the package in a dedicated build directory.

*`--disable-multilib`*: This parameter ensures that files are created for the specific architecture of your computer.

*`--with-system-zlib`*: Uses the system version of [zlib]{.application} instead of the bundled copy. [zlib]{.application} is used for compressing and decompressing [GCC]{.application}'s intermediate language in LTO (Link Time Optimization) object files.

*`--enable-default-pie`*: Makes the `-fpie`{.option} option the default when compiling programs. Together with the [ASLR](../appendices/glossary.md#gASLR "ASLR"){.xref} feature enabled in the kernel, this defeats some types of attacks based on known memory layouts.

*`--enable-default-ssp`*: Makes the `-fstack-protector-strong`{.option} option the default when compiling programs. [SSP](../appendices/glossary.md#gSSP "SSP"){.xref} is a technique preventing attacks that alter the flow of a program by corrupting the parameter stack.

*`--enable-host-pie`*: Makes the compiler executables PIE (Position Independent Executable). This can be used to enhance protection against ROP (Return Oriented Programming) attacks, and can be viewed as part of a wider trend to harden binaries.

*`--enable-languages=c,c++,fortran,go,objc,obj-c++,m2`*: This command identifies which languages to build. You may modify this command to remove undesired languages. GCC also supports Ada and D, but building GCC with Ada (or D) support needs an existing Ada (or D) compiler. So they are not enabled here. You can also enable COBOL support by adding cobol to the command, but note that it only works properly on x86_64 systems.

[**make -k check**]{.command}: This command runs the test suite without stopping if any errors are encountered.

[**../contrib/test_summary**]{.command}: This command will produce a summary of the test suite results. You can append [**\| grep -A7 Summ**]{.command} to the command to produce an even more condensed version of the summary. You may also wish to redirect the output to a file for review and comparison later on.

[**mv -v /usr/lib/\*gdb.py ...**]{.command}: The installation stage puts some files used by [gdb]{.application} under the `/usr/lib`{.filename} directory. This generates spurious error messages when performing [**ldconfig**]{.command}. This command moves the files to another location.

[**chown -v -R root:root /usr/lib/gcc/\*linux-gnu/...**]{.command}: If the package is built by a user other than root, the ownership of the installed `include`{.filename} directory (and its content) will be incorrect. This command changes the ownership to the `root`{.systemitem} user and group.

`--enable-host-shared --enable-languages=jit`{.option}: Build `libgccjit`{.systemitem}, a library for embedding GCC inside programs and libraries for generating machine code. Despite [“[JIT]{.quote}”]{.quote} (just-in-time) in the name, the library can be used for AOT (ahead-of-time) compilation as well. `--enable-host-shared`{.option} is needed for building `libgccjit`{.systemitem}, but it significantly slows down GCC. So `libgccjit`{.systemitem} should be built and installed separately, not as a part of the [“[main]{.quote}”]{.quote} GCC installation. If you need this library, configure GCC with these two options and install the library by running [**make -C gcc jit.install-common jit.install-info**]{.command} as the `root`{.systemitem} user. This library is not used by any BLFS package, nor is it tested by the BLFS developers.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

Some program and library names and descriptions are not listed here, but can be found at [LFS section for GCC](../../../../lfs/view/systemd/chapter08/gcc.md#contents-gcc){.ulink} as they were initially installed during the building of LFS.

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gccgo, gfortran, gm2, go, and gofmt, hard-linked to architecture specific names]{.segbody}
:::

::: seg
**Installed Libraries:** [libgfortran.{so,a}, libgm2.{so,a} libgo.{so,a}, libgobegin.a, libgolibbegin.a, libobjc.{so,a}, and numerous other run-time libraries and executables]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/go]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------------------------
  []{#gccgo}[[**gccgo**]{.command}]{.term}         is a GCC-based compiler for the [Go]{.application} language
  []{#gm2}[[**gm2**]{.command}]{.term}             is a GCC-based compiler for the [Modula-2]{.application} language
  []{#go}[[**go**]{.command}]{.term}               is a tool for managing [Go]{.application} source code
  []{#gofmt}[[**gofmt**]{.command}]{.term}         is a tool for formatting [Go]{.application} source code
  []{#gfortran}[[**gfortran**]{.command}]{.term}   is a GCC-based compiler for the [Fortran]{.application} language
  ------------------------------------------------ -------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](dtc.md "dtc-1.8.1"){accesskey="p"}

    dtc-1.8.1

-   [Next](gc.md "GC-8.2.12"){accesskey="n"}

    GC-8.2.12

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
