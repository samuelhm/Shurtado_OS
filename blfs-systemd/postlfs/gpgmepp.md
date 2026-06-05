::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](gpgme.md "gpgme-2.1.0"){accesskey="p"}

    gpgme-2.1.0

-   [Next](iptables.md "iptables-1.8.13"){accesskey="n"}

    iptables-1.8.13

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gpgmepp}gpgmepp-2.1.0 {#gpgmepp-2.1.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gpgmepp {#introduction-to-gpgmepp .sect2}

The [gpgmepp]{.application} package provides a C++ wrapper to [gpgme-2.1.0](gpgme.md "gpgme-2.1.0"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.gnupg.org/ftp/gcrypt/gpgmepp/gpgmepp-2.1.0.tar.xz](https://www.gnupg.org/ftp/gcrypt/gpgmepp/gpgmepp-2.1.0.tar.xz){.ulink}

-   Download MD5 sum: f3252524ba34c6a42455f30e226de1f5

-   Download size: 124 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.1 SBU
:::

### gpgmepp Dependencies

#### Required

[gpgme-2.1.0](gpgme.md "gpgme-2.1.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of gpgmepp {#installation-of-gpgmepp .sect2}

Install [gpgmepp]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr .. &&
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
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgpgmepp.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/cmake/Gpgmepp and /usr/include/gpgme++]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------
  []{#libgpgmepp}[`libgpgmepp.so`{.filename}]{.term}   contains the C++ [gpgme]{.application} API functions
  ---------------------------------------------------- ------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gpgme.md "gpgme-2.1.0"){accesskey="p"}

    gpgme-2.1.0

-   [Next](iptables.md "iptables-1.8.13"){accesskey="n"}

    iptables-1.8.13

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
