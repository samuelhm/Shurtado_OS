::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gdk-pixbuf.md "gdk-pixbuf-2.44.6"){accesskey="p"}

    gdk-pixbuf-2.44.6

-   [Next](glslang.md "glslang-16.3.0"){accesskey="n"}

    glslang-16.3.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glew}GLEW-2.3.1 {#glew-2.3.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GLEW {#introduction-to-glew .sect2}

[GLEW]{.application} is the OpenGL Extension Wrangler Library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/glew/glew-2.3.1.tgz](https://downloads.sourceforge.net/glew/glew-2.3.1.tgz){.ulink}

-   Download MD5 sum: 923ac4437518cc7cd323adde8a4091ae

-   Download size: 848 KB

-   Estimated disk space required: 18 MB

-   Estimated build time: less than 0.1 SBU
:::

### glew Dependencies

#### Required

[Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GLEW {#installation-of-glew .sect2}

Install [GLEW]{.application} by running the following commands:

``` userinput
sed -i 's%lib64%lib%g' config/Makefile.linux &&
sed -e '/glew.lib.static:/d' \
    -e '/0644 .*STATIC/d'    \
    -e 's/glew.lib.static//' \
    -e 's|/local||'          \
    -i Makefile              &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install.all
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i 's%lib64%lib%g' ...**]{.command}: This ensures that the library is installed in `/usr/lib`{.filename}.

[**sed -i -e '/glew.lib.static:/d' ...**]{.command}: This suppresses the static library.

[**sed -i -e 's\|/local\|\|' ...**]{.command}: This ensures the package is installed in `/usr`{.filename}.

[**make install.all**]{.command}: This installs the programs as well as the library.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [glewinfo and visualinfo]{.segbody}
:::

::: seg
**Installed Library:** [libGLEW.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/GL]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------
  []{#glewinfo}[[**glewinfo**]{.command}]{.term}       provides information about the supported extensions
  []{#visualinfo}[[**visualinfo**]{.command}]{.term}   is an extended version of glxinfo
  []{#libGLEW.so}[`libGLEW.so`{.filename}]{.term}      provides functions to access OpenGL extensions
  ---------------------------------------------------- -----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gdk-pixbuf.md "gdk-pixbuf-2.44.6"){accesskey="p"}

    gdk-pixbuf-2.44.6

-   [Next](glslang.md "glslang-16.3.0"){accesskey="n"}

    glslang-16.3.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
