::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libmnl.md "libmnl-1.0.5"){accesskey="p"}

    libmnl-1.0.5

-   [Next](libnl.md "libnl-3.12.0"){accesskey="n"}

    libnl-3.12.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libndp}libndp-1.9 {#libndp-1.9 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libndp {#introduction-to-libndp .sect2}

The [libndp]{.application} package provides a wrapper for IPv6 Neighbor Discovery Protocol. It also provides a tool named ndptool for sending and receiving NDP messages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://libndp.org/files/libndp-1.9.tar.gz](http://libndp.org/files/libndp-1.9.tar.gz){.ulink}

-   Download MD5 sum: 9d486750569e7025e5d0afdcc509b93c

-   Download size: 368 KB

-   Estimated disk space required: 2.5 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of libndp {#installation-of-libndp .sect2}

Install [libndp]{.application} by running the following command:

``` userinput
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     &&
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
**Installed Program:** [ndptool]{.segbody}
:::

::: seg
**Installed Library:** [libndp.so]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------------------
  []{#ndptool}[[**ndptool**]{.command}]{.term}     is a tool for sending and receiving NDP messages
  []{#libndp-lib}[`libndp.so`{.filename}]{.term}   provides a wrapper for the IPv6 Neighbor Discovery Protocol
  ------------------------------------------------ -------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libmnl.md "libmnl-1.0.5"){accesskey="p"}

    libmnl-1.0.5

-   [Next](libnl.md "libnl-3.12.0"){accesskey="n"}

    libnl-3.12.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
