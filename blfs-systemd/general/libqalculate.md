::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libptytty.md "libptytty-2.0"){accesskey="p"}

    libptytty-2.0

-   [Next](libqmi.md "libqmi-1.38.0"){accesskey="n"}

    libqmi-1.38.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libqalculate}libqalculate-5.11.0 {#libqalculate-5.11.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libqalculate {#introduction-to-libqalculate .sect2}

The [libqalculate]{.application} package contains a library that provides functions for a multi-purpose calculator.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/Qalculate/libqalculate/releases/download/v5.11.0/libqalculate-5.11.0.tar.gz](https://github.com/Qalculate/libqalculate/releases/download/v5.11.0/libqalculate-5.11.0.tar.gz){.ulink}

-   Download MD5 sum: 7a442ecab06ed65e2eae3a9b2abfbe0d

-   Download size: 3.5 MB

-   Estimated disk space required: 240 MB (with tests)

-   Estimated build time: 0.6 SBU (With tests; both using parallelism=8)
:::

### libqalculate Dependencies

#### Required

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [ICU-78.3](icu.md "icu-78.3"){.xref}, and [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} and [gnuplot](http://www.gnuplot.info/download.md){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libqalculate {#installation-of-libqalculate .sect2}

Install [libqalculate]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libqalculate-5.11.0 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

The libtool archive file from this package is referring to the libraries from [ICU-78.3](icu.md "icu-78.3"){.xref}. Such a reference may cause packages depending on this package to be unnecessary linked against the ICU libraries, and this can increase the burden of rebuilding packages if ICU is updated to a new major version. As we've explained in [Libtool archive (.la) files](../introduction/la-files.md "About Libtool Archive (.la) files"){.xref}, these libtool archive files are unneeded anyway. So as the `root`{.systemitem} user, remove the libtool archive file now:

``` root
rm -v /usr/lib/libqalculate.la
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
**Installed Programs:** [qalc]{.segbody}
:::

::: seg
**Installed Library:** [libqalculate.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libqalculate, /usr/share/doc/libqalculate-5.11.0, and /usr/share/qalculate]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ---------------------------------------------------------
  []{#qalc}[[**qalc**]{.command}]{.term}                      is a powerful and easy to use command line calculator
  []{#libqalculate.so}[`libqalculate.so`{.filename}]{.term}   contains the [libqalculate]{.application} API functions
  ----------------------------------------------------------- ---------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libptytty.md "libptytty-2.0"){accesskey="p"}

    libptytty-2.0

-   [Next](libqmi.md "libqmi-1.38.0"){accesskey="n"}

    libqmi-1.38.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
