::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libqmi.md "libqmi-1.38.0"){accesskey="p"}

    libqmi-1.38.0

-   [Next](libsigc.md "libsigc++-2.12.1"){accesskey="n"}

    libsigc++-2.12.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libseccomp}libseccomp-2.6.0 {#libseccomp-2.6.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libseccomp {#introduction-to-libseccomp .sect2}

The [libseccomp]{.application} package provides an easy to use and platform independent interface to the [Linux]{.application} kernel's syscall filtering mechanism.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/seccomp/libseccomp/releases/download/v2.6.0/libseccomp-2.6.0.tar.gz](https://github.com/seccomp/libseccomp/releases/download/v2.6.0/libseccomp-2.6.0.tar.gz){.ulink}

-   Download MD5 sum: 2d42bcde31fd6e994fcf251a1f71d487

-   Download size: 672 KB

-   Estimated disk space required: 7.6 MB (additional 6.3 MB for tests)

-   Estimated build time: less than 0.1 SBU (additional 1.7 SBU for tests)
:::

### libseccomp Dependencies

#### Optional

[Which-2.25](which.md "Which-2.25 and Alternatives"){.xref} (needed for tests), [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, [cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref} (for python bindings), and [LCOV](https://github.com/linux-test-project/lcov){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libseccomp {#installation-of-libseccomp .sect2}

Install [libseccomp]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
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

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-python`{.option}: this switch is needed to build python bindings if [cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref} is installed. The option `--disable-static`{.option} must not be given if this option is used. And you must run [**sed 's/env python/&3/' -i tests/regression**]{.command} if this option is used and you want to run the test suite.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [scmp_sys_resolver]{.segbody}
:::

::: seg
**Installed Library:** [libseccomp.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ --------------------------------------------------
  []{#scmp_sys_resolver}[[**scmp_sys_resolver**]{.command}]{.term}   is used to resolve system calls for applications
  []{#libseccomp-lib}[`libseccomp.so`{.filename}]{.term}             contains API functions for translating syscalls
  ------------------------------------------------------------------ --------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libqmi.md "libqmi-1.38.0"){accesskey="p"}

    libqmi-1.38.0

-   [Next](libsigc.md "libsigc++-2.12.1"){accesskey="n"}

    libsigc++-2.12.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
