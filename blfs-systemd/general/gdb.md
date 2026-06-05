::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](gc.md "GC-8.2.12"){accesskey="p"}

    GC-8.2.12

-   [Next](git.md "Git-2.54.0"){accesskey="n"}

    Git-2.54.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gdb}GDB-17.2 {#gdb-17.2 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GDB {#introduction-to-gdb .sect2}

[GDB]{.application}, the GNU Project debugger, allows you to see what is going on [“[inside]{.quote}”]{.quote} another program while it executes -- or what another program was doing at the moment it crashed. Note that [GDB]{.application} is most effective when tracing programs and libraries that were built with debugging symbols and not stripped.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/gdb/gdb-17.2.tar.xz](https://ftpmirror.gnu.org/gdb/gdb-17.2.tar.xz){.ulink}

-   Download MD5 sum: 6137ae4ffa0e7423fce956768835de1f

-   Download size: 24 MB

-   Estimated disk space required: 884 MB (add 824 MB for docs; add 7.8 GB for tests)

-   Estimated build time: 1.2 SBU (add 0.4 SBU for docs; add 12.0 SBU tests; all using parallelism=8)
:::

### GDB Dependencies

#### Recommended Runtime Dependency

[six-1.17.0](python-modules.md#six "six-1.17.0"){.xref} (Python 3 module, required at run-time to use GDB scripts from various LFS/BLFS packages with Python 3 installed in LFS)

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [GCC-16.1.0](gcc.md "GCC-16.1.0"){.xref} (ada, gfortran, and go are used for tests), [Guile-3.0.11](guile.md "Guile-3.0.11"){.xref}, [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref} (used for some tests), [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, and [SystemTap](https://sourceware.org/systemtap/){.ulink} (run-time, used for tests)
:::::

::::: {.installation lang="en"}
## Installation of GDB {#installation-of-gdb .sect2}

Install [GDB]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

../configure --prefix=/usr          \
             --with-system-readline \
             --with-system-zlib     \
             --with-python=/usr/bin/python3 &&
make
```

Optionally, to build the API documentation using [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, run:

``` userinput
make -C gdb/doc doxy
```

Running the tests is not recommended. The results vary a lot depending on the system architecture and what optional dependencies are installed and what version of gcc is being used. On one system tested, there were 140 unexpected failures (out of over 108,000 tests) and on another system there were "only" 14 unexpected failures. The time to run the tests varies from approximately 3 SBU to over 15 SBU when using -j8. This depends on number of tests that time out as well as other factors.

::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Tip

With a plain [**make check**]{.command}, there are many warning messages about a missing global configuration file. These can be avoided by running [**touch global.exp**]{.command} and prepending the [**make check**]{.command} command with [**DEJAGNU=\$PWD/global.exp**]{.command}. In addition the tests can be speeded up considerably by using the [**make**]{.command} option "-j\<N\>" where \<N\> is the number of cores on your system. At times though, using parallelism may result in strange failures.
:::

To test the results anyway, issue:

``` userinput
pushd gdb/testsuite &&
make  site.exp      &&
echo  "set gdb_test_timeout 30" >> site.exp &&
make check 2>1 | tee gdb-check.log
popd
```

See [*gdb/testsuite/README*]{.emphasis} and [TestingGDB](https://sourceware.org/gdb/wiki/TestingGDB){.ulink}. There are many additional problems with the test suite:

::: itemizedlist
-   Clean directories are needed if re-running the tests. For that reason, make a copy of the compiled source code directory before the tests in case you need to run the tests again.

-   Results can also depend on installed compilers.

-   On some AMD-based systems, over 200 additional tests may fail due to a difference in the threading implementation on those CPUs.

-   For gdb-17.1, using an Intel i7-14700K, there were 120 unexpected failures and over 126,500 passed tests.
:::

Now, as the `root`{.systemitem} user:

``` root
make -C gdb install &&
make -C gdbserver install
```

If you have built the API documentation, it is now in gdb/doc/doxy. You can install it (as the `root`{.systemitem} user):

``` root
install -d /usr/share/doc/gdb-17.2 &&
rm -rf gdb/doc/doxy/xml &&
cp -Rv gdb/doc/doxy /usr/share/doc/gdb-17.2
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-system-readline`*: This switch forces [GDB]{.application} to use the copy of [Readline]{.application} installed in LFS.

*`--with-system-zlib`*: This switch forces [GDB]{.application} to use the copy of [Zlib]{.application} installed in LFS.

*`--with-python=/usr/bin/python3`*: This switch forces [GDB]{.application} to use Python 3.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gcore, gdb, gdbserver, gdb-add-index, and gstack]{.segbody}
:::

::: seg
**Installed Library:** [libinproctrace.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,share}/gdb and /usr/share/doc/gdb-17.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gcore}[[**gcore**]{.command}]{.term}                     generates a core dump of a running program
  []{#gdb-prog}[[**gdb**]{.command}]{.term}                    is the GNU Debugger
  []{#gdbserver}[[**gdbserver**]{.command}]{.term}             is a remote server for the GNU debugger (it allows programs to be debugged from a different machine)
  []{#gdb-add-index}[[**gdb-add-index**]{.command}]{.term}     Allows adding index files to ELF binaries. This speeds up [**gdb**]{.command} start on large programs.
  []{#gstack}[[**gstack**]{.command}]{.term}                   prints a stack trace from a program which is currently running
  []{#libinproctrace}[`libinproctrace.so`{.filename}]{.term}   contains functions for the in-process tracing agent. The agent allows for installing fast tracepoints, listing static tracepoint markers, probing static tracepoints markers, and starting trace monitoring.
  ------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](gc.md "GC-8.2.12"){accesskey="p"}

    GC-8.2.12

-   [Next](git.md "Git-2.54.0"){accesskey="n"}

    Git-2.54.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
