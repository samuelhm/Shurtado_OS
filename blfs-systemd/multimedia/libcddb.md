::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libcanberra.md "libcanberra-0.30"){accesskey="p"}

    libcanberra-0.30

-   [Next](libcdio.md "libcdio-2.1.0"){accesskey="n"}

    libcdio-2.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libcddb}libcddb-1.3.2 {#libcddb-1.3.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libcddb {#introduction-to-libcddb .sect2}

The [libcddb]{.application} is a library that implements the different protocols (CDDBP, HTTP, SMTP) to access data on a CDDB server.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/libcddb/libcddb-1.3.2.tar.bz2](https://downloads.sourceforge.net/libcddb/libcddb-1.3.2.tar.bz2){.ulink}

-   Download MD5 sum: 8bb4a6f542197e8e9648ae597cd6bc8a

-   Download size: 384 KB

-   Estimated disk space required: 3.9 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### libcddb Dependencies

#### Optional

[libcdio-2.1.0](libcdio.md "libcdio-2.1.0"){.xref} (for [**cddb_query**]{.command} to read CDs)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of libcddb {#installation-of-libcddb .sect2}

By default this package accesses `freedb.org`{.systemitem}, which is already closed. Modify the default to use `gnudb.gnudb.org`{.systemitem} instead, and fix two stale test data files:

``` userinput
sed -e '/DEFAULT_SERVER/s/freedb.org/gnudb.gnudb.org/' \
    -e '/DEFAULT_PORT/s/888/&0/'                       \
    -i include/cddb/cddb_ni.h                          &&
sed '/^Genre:/s/Trip-Hop/Electronic/' -i tests/testdata/920ef00b.txt &&
sed '/DISCID/i# Revision: 42'         -i tests/testcache/misc/12340000
```

Fix a problem building with gcc-14 and later:

``` userinput
sed -i 's/size_t l;/socklen_t l;/' lib/cddb_net.c
```

Install [libcddb]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check -k**]{.command}. The test suite needs an Internet connection. The test named [“[Check non-existing disc server read]{.quote}”]{.quote} fails because the test incorrectly assumes no discs have the ID `0x11111111`{.literal}. Another test fails due to an attempt to use the closed `freedb2.org`{.uri} server.

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
**Installed Programs:** [cddb_query]{.segbody}
:::

::: seg
**Installed Library:** [libcddb.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/cddb]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------
  []{#cddb_query}[[**cddb_query**]{.command}]{.term}   provides a user interface to a CDDB server
  ---------------------------------------------------- --------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libcanberra.md "libcanberra-0.30"){accesskey="p"}

    libcanberra-0.30

-   [Next](libcdio.md "libcdio-2.1.0"){accesskey="n"}

    libcdio-2.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
