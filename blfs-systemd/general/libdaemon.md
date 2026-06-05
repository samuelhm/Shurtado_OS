::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libcloudproviders.md "libcloudproviders-0.3.6"){accesskey="p"}

    libcloudproviders-0.3.6

-   [Next](libdisplay-info.md "libdisplay-info-0.3.0"){accesskey="n"}

    libdisplay-info-0.3.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdaemon}libdaemon-0.14 {#libdaemon-0.14 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libdaemon {#introduction-to-libdaemon .sect2}

The [libdaemon]{.application} package is a lightweight C library that eases the writing of UNIX daemons.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz](https://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz){.ulink}

-   Download MD5 sum: 509dc27107c21bcd9fbf2f95f5669563

-   Download size: 332 KB

-   Estimated disk space required: 3 MB

-   Estimated build time: 0.1 SBU
:::

### libdaemon Dependencies

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} and [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libdaemon {#installation-of-libdaemon .sect2}

Install [libdaemon]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

If you have [Doxygen]{.application} installed and wish to build the API documentation, issue the following command:

``` userinput
make -C doc doxygen
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make docdir=/usr/share/doc/libdaemon-0.14 install
```

If you built the API documentation, install it using the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -d /usr/share/doc/libdaemon-0.14/reference/html &&
install -v -m644 doc/reference/html/* /usr/share/doc/libdaemon-0.14/reference/html &&
install -v -m644 doc/reference/man/man3/* /usr/share/man/man3
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

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
**Installed Library:** [libdaemon.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libdaemon and /usr/share/doc/libdaemon-0.14]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------
  []{#libdaemon-lib}[`libdaemon.so`{.filename}]{.term}   contains the [libdaemon]{.application} API functions
  ------------------------------------------------------ ------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libcloudproviders.md "libcloudproviders-0.3.6"){accesskey="p"}

    libcloudproviders-0.3.6

-   [Next](libdisplay-info.md "libdisplay-info-0.3.0"){accesskey="n"}

    libdisplay-info-0.3.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
