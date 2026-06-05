::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](fontconfig.md "Fontconfig-2.18.1"){accesskey="p"}

    Fontconfig-2.18.1

-   [Next](gegl.md "gegl-0.4.70"){accesskey="n"}

    gegl-0.4.70

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fribidi}FriBidi-1.0.16 {#fribidi-1.0.16 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to FriBidi {#introduction-to-fribidi .sect2}

The [FriBidi]{.application} package is an implementation of the [Unicode Bidirectional Algorithm (BIDI)](https://www.unicode.org/reports/tr9/){.ulink}. This is useful for supporting Arabic and Hebrew alphabets in other packages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/fribidi/fribidi/releases/download/v1.0.16/fribidi-1.0.16.tar.xz](https://github.com/fribidi/fribidi/releases/download/v1.0.16/fribidi-1.0.16.tar.xz){.ulink}

-   Download MD5 sum: 333ad150991097a627755b752b87f9ff

-   Download size: 1.1 MB

-   Estimated disk space required: 22 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### FriBidi Dependencies

#### Optional

[c2man (to build man pages)](https://www.ciselant.de/c2man/c2man.md){.ulink}
:::::

::: {.installation lang="en"}
## Installation of FriBidi {#installation-of-fribidi .sect2}

Install [FriBidi]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
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
**Installed Program:** [fribidi]{.segbody}
:::

::: seg
**Installed Library:** [libfribidi.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/fribidi]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  []{#fribidi-prog}[[**fribidi**]{.command}]{.term}    is a command-line interface to the `libfribidi`{.filename} library and can be used to convert a logical string to visual output
  []{#libfribidi}[`libfribidi.so`{.filename}]{.term}   contains functions used to implement the [Unicode Bidirectional Algorithm](https://www.unicode.org/reports/tr9/){.ulink}
  ---------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](fontconfig.md "Fontconfig-2.18.1"){accesskey="p"}

    Fontconfig-2.18.1

-   [Next](gegl.md "gegl-0.4.70"){accesskey="n"}

    gegl-0.4.70

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
