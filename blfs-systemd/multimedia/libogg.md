::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libmusicbrainz5.md "libmusicbrainz-5.1.0"){accesskey="p"}

    libmusicbrainz-5.1.0

-   [Next](libplacebo.md "libplacebo-7.360.1"){accesskey="n"}

    libplacebo-7.360.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libogg}libogg-1.3.6 {#libogg-1.3.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libogg {#introduction-to-libogg .sect2}

The [libogg]{.application} package contains the Ogg file structure. This is useful for creating (encoding) or playing (decoding) a single physical bit stream.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.xiph.org/releases/ogg/libogg-1.3.6.tar.xz](https://downloads.xiph.org/releases/ogg/libogg-1.3.6.tar.xz){.ulink}

-   Download MD5 sum: 529275432dff072f63d4ed0f1f961384

-   Download size: 432 KB

-   Estimated disk space required: 3.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of libogg {#installation-of-libogg .sect2}

Install [libogg]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libogg-1.3.6 &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Library:** [libogg.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/ogg and /usr/share/doc/libogg-1.3.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -----------------------------------------------------------------------------------------
  []{#libogg-lib}[`libogg.so`{.filename}]{.term}   provides the functions required for programs to read or write Ogg formatted bit streams
  ------------------------------------------------ -----------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libmusicbrainz5.md "libmusicbrainz-5.1.0"){accesskey="p"}

    libmusicbrainz-5.1.0

-   [Next](libplacebo.md "libplacebo-7.360.1"){accesskey="n"}

    libplacebo-7.360.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
