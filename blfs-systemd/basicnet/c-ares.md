::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](netlibs.md "Networking Libraries"){accesskey="p"}

    Networking Libraries

-   [Next](curl.md "cURL-8.20.0"){accesskey="n"}

    cURL-8.20.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#c-ares}c-ares-1.34.6 {#c-ares-1.34.6 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to c-ares {#introduction-to-c-ares .sect2}

[c-ares]{.application} is a C library for asynchronous DNS requests.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/c-ares/c-ares/releases/download/v1.34.6/c-ares-1.34.6.tar.gz](https://github.com/c-ares/c-ares/releases/download/v1.34.6/c-ares-1.34.6.tar.gz){.ulink}

-   Download MD5 sum: 85fda96ad3859edb262f68284d11b971

-   Download size: 996 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.1 SBU
:::

### c-ares Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of c-ares {#installation-of-c-ares .sect2}

Install [c-ares]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake  -D CMAKE_INSTALL_PREFIX=/usr .. &&
make
```

This package does not include a test suite.

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
**Installed Programs:** [adig and ahost]{.segbody}
:::

::: seg
**Installed Libraries:** [libcares.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------
  []{#adig}[[**adig**]{.command}]{.term}             queries information from DNS servers
  []{#ahost}[[**ahost**]{.command}]{.term}           prints the A or AAAA record associated with a hostname or IP address
  []{#c-ares-lib}[`libcares.so`{.filename}]{.term}   is a C library for asynchronous DNS requests
  -------------------------------------------------- ----------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](netlibs.md "Networking Libraries"){accesskey="p"}

    Networking Libraries

-   [Next](curl.md "cURL-8.20.0"){accesskey="n"}

    cURL-8.20.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
