::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](npth.md "npth-1.8"){accesskey="p"}

    npth-1.8

-   [Next](opentimelineio.md "OpenTimelineIO-0.18.1"){accesskey="n"}

    OpenTimelineIO-0.18.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nspr}NSPR-4.39 {#nspr-4.39 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to NSPR {#introduction-to-nspr .sect2}

[Netscape Portable Runtime]{.application} (NSPR) provides a platform-neutral API for system level and libc like functions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.mozilla.org/pub/nspr/releases/v4.39/src/nspr-4.39.tar.gz](https://archive.mozilla.org/pub/nspr/releases/v4.39/src/nspr-4.39.tar.gz){.ulink}

-   Download MD5 sum: a1062dbc7d0fa524f0db6f254b747e45

-   Download size: 992 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of NSPR {#installation-of-nspr .sect2}

Install [NSPR]{.application} by running the following commands:

``` userinput
cd nspr &&

sed -i '/^RELEASE/s|^|#|' pr/src/misc/Makefile.in &&
sed -i 's|$(LIBRARY) ||'  config/rules.mk         &&

./configure --prefix=/usr   \
            --with-mozilla  \
            --with-pthreads \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&
make
```

The test suite is designed for testing changes to nss or nspr and is not particularly useful for checking a released version (e.g. it needs to be run on a non-optimized build with both nss and nspr directories existing alongside each other). For further details, see the Editor Notes for nss at [https://wiki.linuxfromscratch.org/blfs/wiki/nss](https://wiki.linuxfromscratch.org/blfs/wiki/nss){.ulink}

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -ri '/\^RELEASE/s/\^/#/' pr/src/misc/Makefile.in**]{.command}: This sed disables installing two unneeded scripts.

[**sed -i 's#\$(LIBRARY) ##' config/rules.mk**]{.command}: This sed disables installing the static libraries.

*`--with-mozilla`*: This parameter adds Mozilla support to the libraries (required if you want to build any other Mozilla products and link them to these libraries).

*`--with-pthreads`*: This parameter forces use of the system pthread library.

*`--enable-64bit`*: The --enable-64bit parameter is [*required*]{.emphasis} on an x86_64 system to prevent [**configure**]{.command} failing with a claim that this is a system without pthread support. The \[ \$(uname -m) = x86_64 \] test ensures it has no effect on a 32 bit system.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [nspr-config]{.segbody}
:::

::: seg
**Installed Libraries:** [libnspr4.so, libplc4.so, and libplds4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/nspr]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#nspr-config}[[**nspr-config**]{.command}]{.term}   provides compiler and linker options to other packages that use [NSPR]{.application}
  []{#libnspr4}[`libnspr4.so`{.filename}]{.term}         contains functions that provide platform independence for non-GUI operating system facilities such as threads, thread synchronization, normal file and network I/O, interval timing and calendar time, basic memory management and shared library linking
  []{#libplc4}[`libplc4.so`{.filename}]{.term}           contains functions that implement many of the features offered by libnspr4
  []{#libplds4}[`libplds4.so`{.filename}]{.term}         contains functions that provide data structures
  ------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](npth.md "npth-1.8"){accesskey="p"}

    npth-1.8

-   [Next](opentimelineio.md "OpenTimelineIO-0.18.1"){accesskey="n"}

    OpenTimelineIO-0.18.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
