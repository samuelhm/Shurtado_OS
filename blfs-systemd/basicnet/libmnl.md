::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libevent.md "libevent-2.1.12"){accesskey="p"}

    libevent-2.1.12

-   [Next](libndp.md "libndp-1.9"){accesskey="n"}

    libndp-1.9

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libmnl}libmnl-1.0.5 {#libmnl-1.0.5 .sect1}

:::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libmnl {#introduction-to-libmnl .sect2}

The [libmnl]{.application} library provides a minimalistic userspace library oriented to Netlink developers. There are a lot of common tasks in the parsing, validating, and constructing of both the Netlink header and TLVs that are repetitive and easy to get wrong. This library aims to provide simple helpers that allow you to re-use code and to avoid re-inventing the wheel.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://netfilter.org/projects/libmnl/files/libmnl-1.0.5.tar.bz2](https://netfilter.org/projects/libmnl/files/libmnl-1.0.5.tar.bz2){.ulink}

-   Download MD5 sum: 0bbb70573119ec5d49435114583e7a49

-   Download size: 308 KB

-   Estimated disk space required: 2.9 MB

-   Estimated build time: less than 0.1 SBU
:::

### libnma Dependencies

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libmnl {#installation-of-libmnl .sect2}

Install [libmnl]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Library:** [libmnl.so]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------------------------------
  []{#libmnl-lib}[`libmnl.so`{.filename}]{.term}   provides functions for parsing, validating, constructing of both the Netlink header and TLVs
  ------------------------------------------------ ----------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::

::: navfooter
-   [Prev](libevent.md "libevent-2.1.12"){accesskey="p"}

    libevent-2.1.12

-   [Next](libndp.md "libndp-1.9"){accesskey="n"}

    libndp-1.9

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
