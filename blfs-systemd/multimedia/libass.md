::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libaom.md "libaom-3.14.1"){accesskey="p"}

    libaom-3.14.1

-   [Next](libcanberra.md "libcanberra-0.30"){accesskey="n"}

    libcanberra-0.30

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libass}libass-0.17.4 {#libass-0.17.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libass {#introduction-to-libass .sect2}

[libass]{.application} is a portable subtitle renderer for the ASS/SSA (Advanced Substation Alpha/Substation Alpha) subtitle format that allows for more advanced subtitles than the conventional SRT and similar formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libass/libass/releases/download/0.17.4/libass-0.17.4.tar.xz](https://github.com/libass/libass/releases/download/0.17.4/libass-0.17.4.tar.xz){.ulink}

-   Download MD5 sum: 10963e702850fd888cb270abcbe852c3

-   Download size: 444 KB

-   Estimated disk space required: 8.0 MB

-   Estimated build time: 0.1 SBU
:::

### libass Dependencies

#### Required

[FreeType-2.14.3](../general/freetype2.md "FreeType-2.14.3"){.xref} and [FriBidi-1.0.16](../general/fribidi.md "FriBidi-1.0.16"){.xref}

#### Recommended

[Fontconfig-2.18.1](../general/fontconfig.md "Fontconfig-2.18.1"){.xref} and [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}

#### Optional

[harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref} and [libunibreak](https://github.com/adah1972/libunibreak){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libass {#installation-of-libass .sect2}

Install [libass]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
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

`--disable-fontconfig`{.option}: Use this switch if you didn't install [Fontconfig]{.application}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libass.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/ass]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------
  []{#libass-lib}[`libass.so`{.filename}]{.term}   provides the functions used to render ASS/SSA subtitle format
  ------------------------------------------------ ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libaom.md "libaom-3.14.1"){accesskey="p"}

    libaom-3.14.1

-   [Next](libcanberra.md "libcanberra-0.30"){accesskey="n"}

    libcanberra-0.30

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
