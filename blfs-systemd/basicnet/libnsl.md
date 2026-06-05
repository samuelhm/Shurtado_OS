::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libnma.md "libnma-1.10.6"){accesskey="p"}

    libnma-1.10.6

-   [Next](libpcap.md "libpcap-1.10.6"){accesskey="n"}

    libpcap-1.10.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libnsl}libnsl-2.0.1 {#libnsl-2.0.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libnsl {#introduction-to-libnsl .sect2}

The [libnsl]{.application} package contains the public client interface for NIS(YP). It replaces the NIS library that used to be in glibc.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/thkukuk/libnsl/releases/download/v2.0.1/libnsl-2.0.1.tar.xz](https://github.com/thkukuk/libnsl/releases/download/v2.0.1/libnsl-2.0.1.tar.xz){.ulink}

-   Download MD5 sum: fb178645dfa85ebab0f1e42e219b42ae

-   Download size: 276 KB

-   Estimated disk space required: 3.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### libnsl Dependencies

#### Required

[libtirpc-1.3.7](libtirpc.md "libtirpc-1.3.7"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libnsl {#installation-of-libnsl .sect2}

Install [libnsl]{.application} by running the following commands:

``` userinput
./configure --sysconfdir=/etc --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
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
**Installed Libraries:** [libnsl.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/rpcsvc]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------
  []{#libnsl-lib}[`libnsl.so`{.filename}]{.term}   provides the NIS (YP) API functions required by other programs
  ------------------------------------------------ ----------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libnma.md "libnma-1.10.6"){accesskey="p"}

    libnma-1.10.6

-   [Next](libpcap.md "libpcap-1.10.6"){accesskey="n"}

    libpcap-1.10.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
