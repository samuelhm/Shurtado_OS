::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](feh.md "feh-3.12.2"){accesskey="p"}

    feh-3.12.2

-   [Next](freerdp.md "FreeRDP-3.26.0"){accesskey="n"}

    FreeRDP-3.26.0

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fontforge}FontForge-20251009 {#fontforge-20251009 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to FontForge {#introduction-to-fontforge .sect2}

The [FontForge]{.application} package contains an outline font editor that lets you create your own postscript, truetype, opentype, cid-keyed, multi-master, cff, svg and bitmap (bdf, FON, NFNT) fonts, or edit existing ones.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/fontforge/fontforge/releases/download/20251009/fontforge-20251009.tar.xz](https://github.com/fontforge/fontforge/releases/download/20251009/fontforge-20251009.tar.xz){.ulink}

-   Download MD5 sum: 9407db5126f937618f1f5f1f9ee8aab2

-   Download size: 13 MB

-   Estimated disk space required: 170 MB (add 51 MB for the tests)

-   Estimated build time: 0.4 SBU (with parallelism=4, add 0.1 SBU for the tests)
:::

### FontForge Dependencies

#### Required

[Gtkmm-3.24.10](../x/gtkmm3.md "Gtkmm-3.24.10"){.xref}, [libspiro-20220722](../general/libspiro.md "Libspiro-20220722"){.xref}, and [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[giflib-6.1.3](../general/giflib.md "giflib-6.1.3"){.xref}, [git-2.54.0](../general/git.md "Git-2.54.0"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (to build html documentation), and [WOFF2-1.0.2](../general/woff2.md "woff2-1.0.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of FontForge {#installation-of-fontforge .sect2}

Install [FontForge]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -W no-dev .. &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have installed [**sphinx-build**]{.command}, HTML documentation was built and installed in `/usr/share/doc/fontforge`{.filename}. To be able to access it as a versioned directory, create a symlink as the `root`{.systemitem} user:

``` root
ln -sv fontforge /usr/share/doc/fontforge-20251009
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to create an optimized release without debug information.

*`-W no-dev`*: This switch is used to suppress warnings intended for the package's developers.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fontforge, fontimage, fontlint and sfddiff]{.segbody}
:::

::: seg
**Installed Library:** [libfontforge.so and /usr/lib/python3.14.5/site-packages/{fontforge,psMat}.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/fontforge and optionally /usr/share/doc/fontforge{,-20251009}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------------------------------------------
  []{#fontforge-prog}[[**fontforge**]{.command}]{.term}   is a program that allows you to create and modify font files
  []{#fontimage}[[**fontimage**]{.command}]{.term}        is a program that produces an image showing representative glyphs of the font
  []{#fontlint}[[**fontlint**]{.command}]{.term}          is a program that checks the font for certain common errors
  []{#sfddiff}[[**sfddiff**]{.command}]{.term}            is a program that compares two font files
  ------------------------------------------------------- -------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](feh.md "feh-3.12.2"){accesskey="p"}

    feh-3.12.2

-   [Next](freerdp.md "FreeRDP-3.26.0"){accesskey="n"}

    FreeRDP-3.26.0

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
