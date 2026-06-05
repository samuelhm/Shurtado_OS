::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](cbindgen.md "Cbindgen-0.29.3"){accesskey="p"}

    Cbindgen-0.29.3

-   [Next](cmake.md "CMake-4.3.3"){accesskey="n"}

    CMake-4.3.3

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#clisp}Clisp-2.49.95 {#clisp-2.49.95 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Clisp {#introduction-to-clisp .sect2}

[GNU Clisp]{.application} is a Common Lisp implementation which includes an interpreter, compiler, debugger, and many extensions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package has not had a 'stable' release since 2010. The package here was created from the [upstream git repository](https://gitlab.com/gnu-clisp/clisp){.ulink} in order to enable it to be built with gcc-15. The most recent commit was May 2025.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/clisp/clisp-2.49.95.tar.xz](https://anduin.linuxfromscratch.org/BLFS/clisp/clisp-2.49.95.tar.xz){.ulink}

-   Download MD5 sum: e3b3ba6b3432280e4d4a766404f02d6f

-   Download size: 7.1 MB

-   Estimated disk space required: 146 MB (with tests; 34 MB installed)

-   Estimated build time: 0.6 SBU (Using parallelism=4; add 0.3 SBU for tests)
:::

### Clisp Dependencies

#### Recommended

[libsigsegv-2.15](libsigsegv.md "libsigsegv-2.15"){.xref}

#### Optional

[libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref} and [libffcall](https://www.gnu.org/software/libffcall/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of Clisp {#installation-of-clisp .sect2}

Install [Clisp]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

../configure --srcdir=../  \
             --prefix=/usr \
             --docdir=/usr/share/doc/clisp-2.49.95 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--docdir=/usr/share/doc/clisp-2.49.95`*: this switch forces the HTML documentation to be installed into a versioned directory.

`--with-libffcall-prefix=/usr`{.option}: use this to tell [**configure**]{.command} that you have installed the optional [libffcall]{.package} package.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [clisp and clisp-link]{.segbody}
:::

::: seg
**Installed Libraries:** [various static libraries in `/usr/lib/clisp-2.49.95+/base/`{.filename}]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/clisp-2.49.95+, /usr/share/doc/clisp-2.49.95, and /usr/share/emacs/site-lisp]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------
  []{#clisp-prog}[[**clisp**]{.command}]{.term}        is an ANSI Common Lisp compiler, interpreter, and debugger
  []{#clisp-link}[[**clisp-link**]{.command}]{.term}   is used to link an external module to clisp
  ---------------------------------------------------- ------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](cbindgen.md "Cbindgen-0.29.3"){accesskey="p"}

    Cbindgen-0.29.3

-   [Next](cmake.md "CMake-4.3.3"){accesskey="n"}

    CMake-4.3.3

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
