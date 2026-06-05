::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](vala.md "Vala-0.56.19"){accesskey="p"}

    Vala-0.56.19

-   [Next](yasm.md "yasm-1.3.0"){accesskey="n"}

    yasm-1.3.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#valgrind}Valgrind-3.27.1 {#valgrind-3.27.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Valgrind {#introduction-to-valgrind .sect2}

[Valgrind]{.application} is an instrumentation framework for building dynamic analysis tools. There are Valgrind tools that can automatically detect many memory management and threading bugs, and profile programs in detail. Valgrind can also be used to build new tools.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://sourceware.org/pub/valgrind/valgrind-3.27.1.tar.bz2](https://sourceware.org/pub/valgrind/valgrind-3.27.1.tar.bz2){.ulink}

-   Download MD5 sum: 9b819b1aa88fc5936373fc624aa75723

-   Download size: 17 MB

-   Estimated disk space required: 421 MB (add 107 MB for tests)

-   Estimated build time: 0.5 SBU (add 7.6 SBU for tests; both using parallelism=4)
:::

### Valgrind Dependencies

#### Optional

[docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref} (for tests), [GDB-17.2](gdb.md "GDB-17.2"){.xref} (for tests), [libaio-0.3.113](libaio.md "libaio-0.3.113"){.xref}, [LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref} (with Clang), and [Which-2.25](which.md "Which-2.25 and Alternatives"){.xref} (for tests)
:::::

:::: {.installation lang="en"}
## Installation of Valgrind {#installation-of-valgrind .sect2}

Install [Valgrind]{.application} by running the following commands:

``` userinput
sed -i 's|/doc/valgrind||' docs/Makefile.in &&

./configure --prefix=/usr \
            --datadir=/usr/share/doc/valgrind-3.27.1 &&
make
```

To test the results, issue: [**make regtest**]{.command}. The tests may hang forever if [GDB-17.2](gdb.md "GDB-17.2"){.xref} is not installed. Some tests are known to hang also, depending on the version of glibc. A few tests can fail in various suites. Problematic tests can be disabled by changing the **`prereq:`** line in the corresponding `.vgtest`{.filename} file to **`prereq: false`**. For example:

``` userinput
sed -e 's@prereq:.*@prereq: false@' \
    -i {helgrind,drd}/tests/pth_cond_destroy_busy.vgtest
```

An additional test suite is now available that tests Valgrind with every system call provided by the kernel. The test suite is designed to test not only glibc and the kernel's conformance to standards, but also Valgrind's ability to handle different system calls. The test suite does require an internet connection to download the tests, and it takes a long time to run (an additional 20 SBUs and 1.3GB of disk space.) If you wish to run this test suite, issue the following command: [**make ltpchecks**]{.command}. Note that the output will show several failures where Valgrind does not currently support certain system calls, but the logs for the test suite can be found in the `auxprogs/auxchecks/ltp-full-20250930/ltp/tests`{.filename} directory. These tests are currently broken with Linux 6.18 and glibc-2.43.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [OpenMP]{.application} tests are skipped if libgomp has been compiled with `--enable-linux-futex`{.option} (the default). If needed, just recompile the libgomp library from the gcc build tree, passing `--disable-linux-futex`{.option} to configure, storing the library to some place and changing the link from `/usr/lib/libgomp.so.1`{.filename} to point to the new library.
:::

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i ... docs/Makefile.in**]{.command} : This sed provides for installing the documentation in a versioned directory.

`--enable-lto=yes`{.option}: This option allows building Valgrind with LTO (link time optimization). This produces a smaller/faster Valgrind (up to 10%), but build time increases to about 5.5 SBU.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [callgrind_annotate, callgrind_control, cg_annotate, cg_diff, cg_merge, ms_print, valgrind, valgrind-di-server, valgrind-listener, and vgdb]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/valgrind, /usr/libexec/valgrind, /usr/include/valgrind, and /usr/share/doc/valgrind-3.27.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  []{#valgrind-prog}[[**valgrind**]{.command}]{.term}                  is a program for debugging and profiling Linux executables
  []{#callgrind_annotate}[[**callgrind_annotate**]{.command}]{.term}   takes an output file produced by the [Valgrind]{.application} tool Callgrind and prints the information in an easy-to-read form
  []{#callgrind_control}[[**callgrind_control**]{.command}]{.term}     controls programs being run by the [Valgrind]{.application} tool Callgrind
  []{#cg_annotate}[[**cg_annotate**]{.command}]{.term}                 is a post-processing tool for the [Valgrind]{.application} tool Cachegrind
  []{#cg_diff}[[**cg_diff**]{.command}]{.term}                         compares two Cachegrind output files
  []{#cg_merge}[[**cg_merge**]{.command}]{.term}                       merges multiple Cachegrind output files into one
  []{#ms_print}[[**ms_print**]{.command}]{.term}                       takes an output file produced by the [Valgrind]{.application} tool Massif and prints the information in an easy-to-read form
  []{#valgrind-di-server}[[**valgrind-di-server**]{.command}]{.term}   is a server that reads debuginfo from objects stored on a different machine
  []{#valgrind-listener}[[**valgrind-listener**]{.command}]{.term}     listens on a socket for Valgrind commentary
  []{#vgdb}[[**vgdb**]{.command}]{.term}                               is an intermediary between Valgrind and GDB or a shell
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](vala.md "Vala-0.56.19"){accesskey="p"}

    Vala-0.56.19

-   [Next](yasm.md "yasm-1.3.0"){accesskey="n"}

    yasm-1.3.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
