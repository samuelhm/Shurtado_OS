::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](mlt.md "MLT-7.38.0"){accesskey="p"}

    MLT-7.38.0

-   [Next](pipewire.md "Pipewire-1.6.6"){accesskey="n"}

    Pipewire-1.6.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#opus}Opus-1.6.1 {#opus-1.6.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Opus {#introduction-to-opus .sect2}

[Opus]{.application} is a lossy audio compression format developed by the Internet Engineering Task Force (IETF) that is particularly suitable for interactive speech and audio transmission over the Internet. This package provides the Opus development library and headers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.xiph.org/releases/opus/opus-1.6.1.tar.gz](https://downloads.xiph.org/releases/opus/opus-1.6.1.tar.gz){.ulink}

-   Download MD5 sum: 67cafc438c430aa74eeb605eef670886

-   Download size: 10 MB

-   Estimated disk space required: 41 MB (with tests)

-   Estimated build time: 0.5 SBU (with tests)
:::

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref})
:::::

::: {.installation lang="en"}
## Installation of Opus {#installation-of-opus .sect2}

Install [Opus]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr        \
            --buildtype=release  \
            -D docdir=/usr/share/doc/opus-1.6.1 &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libopus.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/opus and /usr/share/doc/opus-1.6.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- -----------------------------------------------------------
  []{#libopus}[`libopus.so`{.filename}]{.term}   provides the functions used to read and write Opus format
  ---------------------------------------------- -----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](mlt.md "MLT-7.38.0"){accesskey="p"}

    MLT-7.38.0

-   [Next](pipewire.md "Pipewire-1.6.6"){accesskey="n"}

    Pipewire-1.6.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
