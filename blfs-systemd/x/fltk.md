::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](colord-gtk.md "colord-gtk-0.3.1"){accesskey="p"}

    colord-gtk-0.3.1

-   [Next](freeglut.md "Freeglut-3.8.0"){accesskey="n"}

    Freeglut-3.8.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fltk}FLTK-1.4.5 {#fltk-1.4.5 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to FLTK {#introduction-to-fltk .sect2}

FLTK (pronounced "fulltick") is a cross-platform C++ GUI toolkit. FLTK provides modern GUI functionality and supports 3D graphics via OpenGL and its built-in GLUT emulation libraries used for creating graphical user interfaces for applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/fltk/fltk/releases/download/release-1.4.5/fltk-1.4.5-source.tar.gz](https://github.com/fltk/fltk/releases/download/release-1.4.5/fltk-1.4.5-source.tar.gz){.ulink}

-   Download MD5 sum: 8308c6bb9ebc8580807a3834be4fcf54

-   Download size: 8.9 MB

-   Estimated disk space required: 229 MB (add 104 MB for documentation)

-   Estimated build time: 0.4 SBU (Using parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   Optional Documentation: [https://github.com/fltk/fltk/releases/download/release-1.4.5/fltk-1.4.5-docs-html.tar.gz](https://github.com/fltk/fltk/releases/download/release-1.4.5/fltk-1.4.5-docs-html.tar.gz){.ulink}
:::

### FLTK Dependencies

#### Required

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Recommended

[GLU-9.0.3](glu.md "GLU-9.0.3"){.xref}, [hicolor-icon-theme-0.18](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, and [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}

#### Optional

[alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, and [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref})
::::::

:::: {.installation lang="en"}
## Installation of FLTK {#installation-of-fltk .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The tar extraction directory is fltk-1.4.5 and not fltk-1.4.5-source as indicated by the tarball name.
:::

Install [FLTK]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D FLTK_BUILD_SHARED_LIBS=ON \
      -D CMAKE_BUILD_TYPE=Release  \
      -G "Ninja" ..                &&
ninja
```

If you wish to create the API documentation, issue:

``` userinput
ninja documentation/html
```

The tests for the package are interactive. To execute the tests, run [**bin/test/unittests**]{.command}. In addition, there are about 110 other executable test programs in the `bin/test`{.filename} directory that can be run individually.

Now, install the package and remove unneeded static libraries. As the `root`{.systemitem} user:

``` root
ninja install &&
rm -vf /usr/lib/libfltk*.a
```

If you have built the documentation, install it as the `root`{.systemitem} user:

``` root
install -vdm 755          /usr/share/doc/fltk-1.4.5 &&
cp -Rv documentation/html /usr/share/doc/fltk-1.4.5
```

Otherwise, if you downloaded the optional html documentation, install it as the `root`{.systemitem} user:

``` root
install -vdm 755 /usr/share/doc/fltk-1.4.5 &&
tar -C /usr/share/doc/fltk-1.4.5 --strip-components=4 -xf ../../fltk-1.4.5-docs-html.tar.gz
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D FLTK_BUILD_SHARED_LIBS=ON`*: Build and install shared libraries in addition to static ones.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [blocks, checkers, fltk-config, fltk-options, fltk-options-shared, fluid, fluid-shared, glpuzzle, and sudoku]{.segbody}
:::

::: seg
**Installed Libraries:** [libfltk.so, libfltk_forms.so, libfltk_gl.so, and libfltk_images.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/FL, /usr/share/fltk, and /usr/share/doc/fltk-1.4.5 (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
  []{#blocks}[[**blocks**]{.command}]{.term}                             is a FLTK-based block elimination game
  []{#checkers}[[**checkers**]{.command}]{.term}                         is a FLTK-based version of the game of checkers
  []{#fltk-config}[[**fltk-config**]{.command}]{.term}                   is a utility script that can be used to get information about the current version of FLTK that is installed on the system
  []{#fltk-options}[[**fltk-options**]{.command}]{.term}                 is a graphical configuration utility for FLTK applications
  []{#fltk-options-shared}[[**fltk-options-shared**]{.command}]{.term}   is a graphical configuration utility for FLTK applications (dynamically linked to shared libfltk libraries)
  []{#fluid}[[**fluid**]{.command}]{.term}                               is an interactive GUI designer for FLTK
  []{#fluid-shared}[[**fluid-shared**]{.command}]{.term}                 is an interactive GUI designer for FLTK (dynamically linked to shared libfltk libraries)
  []{#glpuzzle}[[**glpuzzle**]{.command}]{.term}                         is an implementation of the Klotski game
  []{#sudoku}[[**sudoku**]{.command}]{.term}                             is an implementation of the popular Sudoku game
  []{#libfltk}[`libfltk.so`{.filename}]{.term}                           contains functions that provide an API to implement graphical user interfaces
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](colord-gtk.md "colord-gtk-0.3.1"){accesskey="p"}

    colord-gtk-0.3.1

-   [Next](freeglut.md "Freeglut-3.8.0"){accesskey="n"}

    Freeglut-3.8.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
