::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libsoup3.md "libsoup-3.6.6"){accesskey="p"}

    libsoup-3.6.6

-   [Next](neon.md "neon-0.37.1"){accesskey="n"}

    neon-0.37.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libtirpc}libtirpc-1.3.7 {#libtirpc-1.3.7 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libtirpc {#introduction-to-libtirpc .sect2}

The [libtirpc]{.application} package contains libraries that support programs that use the Remote Procedure Call (RPC) API. It replaces the RPC, but not the NIS library entries that used to be in glibc.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/libtirpc/libtirpc-1.3.7.tar.bz2](https://downloads.sourceforge.net/libtirpc/libtirpc-1.3.7.tar.bz2){.ulink}

-   Download MD5 sum: 74f97df306b8d6149d3d9898a1d44c6e

-   Download size: 560 KB

-   Estimated disk space required: 6.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### libtirpc Dependencies

#### Optional

[MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} for GSSAPI support
:::::

:::: {.installation lang="en"}
## Installation of libtirpc {#installation-of-libtirpc .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If updating this package, you will also need to update any existing version of [rpcbind-1.2.9](rpcbind.md "rpcbind-1.2.9"){.xref}
:::

Install [libtirpc]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --disable-gssapi  &&

make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--disable-gssapi`*: This switch is needed if no GSSAPI providers are installed, such as [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}. Remove this switch if you have installed [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} and you need to use the GSSAPI support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libtirpc.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/tirpc]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------
  []{#libtirpc-lib}[`libtirpc.so`{.filename}]{.term}   provides the Remote Procedure Call (RPC) API functions required by other programs
  ---------------------------------------------------- -----------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libsoup3.md "libsoup-3.6.6"){accesskey="p"}

    libsoup-3.6.6

-   [Next](neon.md "neon-0.37.1"){accesskey="n"}

    neon-0.37.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
