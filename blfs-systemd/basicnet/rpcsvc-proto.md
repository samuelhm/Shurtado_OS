::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](nghttp2.md "nghttp2-1.69.0"){accesskey="p"}

    nghttp2-1.69.0

-   [Next](serf.md "Serf-1.3.10"){accesskey="n"}

    Serf-1.3.10

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#rpcsvc-proto}rpcsvc-proto-1.4.4 {#rpcsvc-proto-1.4.4 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to rpcsvc-proto {#introduction-to-rpcsvc-proto .sect2}

The [rpcsvc-proto]{.application} package contains the rcpsvc protocol files and headers, formerly included with glibc, that are not included in replacement [libtirpc-1.3.7](libtirpc.md "libtirpc-1.3.7"){.xref}, along with the rpcgen program.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/thkukuk/rpcsvc-proto/releases/download/v1.4.4/rpcsvc-proto-1.4.4.tar.xz](https://github.com/thkukuk/rpcsvc-proto/releases/download/v1.4.4/rpcsvc-proto-1.4.4.tar.xz){.ulink}

-   Download MD5 sum: bf908de360308d909e9cc469402ff2ef

-   Download size: 168 KB

-   Estimated disk space required: 2.2 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of rpcsvc-proto {#installation-of-rpcsvc-proto .sect2}

Install [rpcsvc-proto]{.application} by running the following commands:

``` userinput
./configure --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [rpcgen]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/rpcsvc]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- ------------------------------------------------
  []{#rpcgen}[[**rpcgen**]{.command}]{.term}   Generates C code to implement the RPC protocol
  -------------------------------------------- ------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](nghttp2.md "nghttp2-1.69.0"){accesskey="p"}

    nghttp2-1.69.0

-   [Next](serf.md "Serf-1.3.10"){accesskey="n"}

    Serf-1.3.10

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
