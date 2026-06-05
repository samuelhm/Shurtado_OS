::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libsigc3.md "libsigc++-3.6.0"){accesskey="p"}

    libsigc++-3.6.0

-   [Next](libssh2.md "libssh2-1.11.1"){accesskey="n"}

    libssh2-1.11.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libsigsegv}libsigsegv-2.15 {#libsigsegv-2.15 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libsigsegv {#introduction-to-libsigsegv .sect2}

libsigsegv is a library for handling page faults in user mode. A page fault occurs when a program tries to access to a region of memory that is currently not available. Catching and handling a page fault is a useful technique for implementing pageable virtual memory, memory-mapped access to persistent databases, generational garbage collectors, stack overflow handlers, and distributed shared memory.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/libsigsegv/libsigsegv-2.15.tar.gz](https://ftpmirror.gnu.org/libsigsegv/libsigsegv-2.15.tar.gz){.ulink}

-   Download MD5 sum: c2885785b3e5d1c94b1adb22b3002ccc

-   Download size: 484 KB

-   Estimated disk space required: 3.7 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of libsigsegv {#installation-of-libsigsegv .sect2}

Install [libsigsegv]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static &&
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

*`--enable-shared`*: This switch ensures that shared libraries are compiled.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libsigsegv.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------
  []{#libsigsegv-lib}[`libsigsegv.so`{.filename}]{.term}   is a library for handling page faults in user mode
  -------------------------------------------------------- ----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libsigc3.md "libsigc++-3.6.0"){accesskey="p"}

    libsigc++-3.6.0

-   [Next](libssh2.md "libssh2-1.11.1"){accesskey="n"}

    libssh2-1.11.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
