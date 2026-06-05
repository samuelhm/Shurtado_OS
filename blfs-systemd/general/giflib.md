::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](gegl.md "gegl-0.4.70"){accesskey="p"}

    gegl-0.4.70

-   [Next](glad.md "Glad-2.0.8"){accesskey="n"}

    Glad-2.0.8

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#giflib}giflib-6.1.3 {#giflib-6.1.3 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to giflib {#introduction-to-giflib .sect2}

The [giflib]{.application} package contains libraries for reading and writing GIFs as well as programs for converting and working with GIF files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://sourceforge.net/projects/giflib/files/giflib-6.1.3.tar.gz](https://sourceforge.net/projects/giflib/files/giflib-6.1.3.tar.gz){.ulink}

-   Download MD5 sum: a70e90ff780e9ebee9cb84b82bbd46a7

-   Download size: 460 KB

-   Estimated disk space required: 4.2 MB (with documentation)

-   Estimated build time: less than 0.1 SBU (with documentation)
:::

### giflib Dependencies

#### Optional

[xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} (required if you run [**make**]{.command} after [**make clean**]{.command}) [^\[1\]^](#ftn.idm140011183394576){#idm140011183394576 .footnote}
:::::

::: {.installation lang="en"}
## Installation of giflib {#installation-of-giflib .sect2}

Install [giflib]{.application} by running the following commands:

``` userinput
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make PREFIX=/usr \
     DOCDIR=/usr/share/doc/giflib-6.1.3 install &&

rm -fv /usr/lib/libgif.a
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**rm -fv /usr/lib/libgif.a**]{.command}: This command removes a static library which is not used by any BLFS package.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gifbuild, gifclrmp, giffix, giftext, and giftool]{.segbody}
:::

::: seg
**Installed Library:** [libgif.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/giflib-6.1.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gifbuild}[[**gifbuild**]{.command}]{.term}   dumps GIF data in a textual format, or undumps it to a GIF
  []{#gifclrmp}[[**gifclrmp**]{.command}]{.term}   modifies GIF image colormaps
  []{#giffix}[[**giffix**]{.command}]{.term}       clumsily attempts to fix truncated GIF images
  []{#giftext}[[**giftext**]{.command}]{.term}     prints (text only) general information about a GIF file
  []{#giftool}[[**giftool**]{.command}]{.term}     is a GIF transformation tool
  []{#libgif}[`libgif.so`{.filename}]{.term}       contains API functions required by the [giflib]{.application} programs and any other programs needing library functionality to read, write and manipulate GIF images
  ------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::

:::: footnotes
\

------------------------------------------------------------------------

::: {#ftn.idm140011183394576 .footnote}
[^\[1\]^](#idm140011183394576){.para} Pre-built documentation is present in this tarball. [**make**]{.command} will detect that documentation already exists in the distribution if [**make clean**]{.command} was not run, and will not require the [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} dependency. However, running [**make clean**]{.command} will result in the pre-built documentation being deleted, thus requiring [**xmlto**]{.command} to build the documentation if [**make**]{.command} is run afterwards.
:::
::::
:::::::::::::::::

::: navfooter
-   [Prev](gegl.md "gegl-0.4.70"){accesskey="p"}

    gegl-0.4.70

-   [Next](glad.md "Glad-2.0.8"){accesskey="n"}

    Glad-2.0.8

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
