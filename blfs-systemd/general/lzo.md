::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](log4cplus.md "log4cplus-2.1.2"){accesskey="p"}

    log4cplus-2.1.2

-   [Next](mtdev.md "mtdev-1.1.7"){accesskey="n"}

    mtdev-1.1.7

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lzo}LZO-2.10 {#lzo-2.10 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to LZO {#introduction-to-lzo .sect2}

[LZO]{.application} is a data compression library which is suitable for data decompression and compression in real-time. This means it favors speed over compression ratio.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz](https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz){.ulink}

-   Download MD5 sum: 39d3f3f9c55c87b1e5d6888e1420f4b5

-   Download size: 588 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.3 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of LZO {#installation-of-lzo .sect2}

Install [LZO]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --docdir=/usr/share/doc/lzo-2.10 &&
make
```

To test the results, issue: [**make check**]{.command}. All the checks should pass. Now issue [**make test**]{.command} to run the full suite of tests.

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
**Installed Libraries:** [liblzo2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/lzo and /usr/share/doc/lzo]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- -------------------------------------------------
  []{#liblzo2}[`liblzo2.so`{.filename}]{.term}   is a data compression and decompression library
  ---------------------------------------------- -------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](log4cplus.md "log4cplus-2.1.2"){accesskey="p"}

    log4cplus-2.1.2

-   [Next](mtdev.md "mtdev-1.1.7"){accesskey="n"}

    mtdev-1.1.7

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
