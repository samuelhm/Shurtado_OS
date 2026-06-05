::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libunistring.md "libunistring-1.4.2"){accesskey="p"}

    libunistring-1.4.2

-   [Next](liburcu.md "liburcu-0.15.6"){accesskey="n"}

    liburcu-0.15.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libunwind}libunwind-1.8.3 {#libunwind-1.8.3 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libunwind {#introduction-to-libunwind .sect2}

The [libunwind]{.application} package contains a portable and efficient C programming interface (API) to determine the call-chain of a program. The API additionally provides the means to manipulate the preserved (callee-saved) state of each call-frame and to resume execution at any point in the call-chain (non-local goto). The API supports both local (same-process) and remote (across-process) operation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libunwind/libunwind/releases/download/v1.8.3/libunwind-1.8.3.tar.gz](https://github.com/libunwind/libunwind/releases/download/v1.8.3/libunwind-1.8.3.tar.gz){.ulink}

-   Download MD5 sum: 13bc7b41462ac6ea157d350eaf6c1503

-   Download size: 960 KB

-   Estimated disk space required: 22 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

### libunwind Dependencies

#### Optional

[texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (for latex2man)
:::::

::: {.installation lang="en"}
## Installation of libunwind {#installation-of-libunwind .sect2}

First, fix a problem when building with gcc-15:

``` userinput
sed -i '/func.s/s/s//' tests/Gtest-nomalloc.c
```

Install [libunwind]{.application} by running the following commands:

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
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libunwind.so, libunwind-coredump.so, libunwind-generic.so (symlink to libunwind-x86_64.so), libunwind-ptrace.so, libunwind-setjmp.so, and libunwind-x86_64.so (libunwind-x86.so on i686)]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/libexec/libunwind]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](libunistring.md "libunistring-1.4.2"){accesskey="p"}

    libunistring-1.4.2

-   [Next](liburcu.md "liburcu-0.15.6"){accesskey="n"}

    liburcu-0.15.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
