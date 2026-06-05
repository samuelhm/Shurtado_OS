::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](glad.md "Glad-2.0.8"){accesskey="p"}

    Glad-2.0.8

-   [Next](glycin.md "glycin-2.1.1"){accesskey="n"}

    glycin-2.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glm}GLM-1.0.3 {#glm-1.0.3 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GLM {#introduction-to-glm .sect2}

OpenGL Mathematics ([GLM]{.application}) is a header-only C++ mathematics library for graphics software based on the OpenGL Shading Language (GLSL) specifications. An extension system provides extended capabilities such as matrix transformations and quaternions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/g-truc/glm/archive/1.0.3/glm-1.0.3.tar.gz](https://github.com/g-truc/glm/archive/1.0.3/glm-1.0.3.tar.gz){.ulink}

-   Download MD5 sum: 2192069d8d0091ff1cca041cdcdc85fe

-   Download size: 4.4 MB

-   Estimated disk space required: 25 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

:::: {.installation lang="en"}
## Installation of GLM {#installation-of-glm .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package is unusual as it includes its functionality in header files. We just copy them into position.
:::

As the `root`{.systemitem} user:

``` root
cp -r glm /usr/include/ &&
cp -r doc /usr/share/doc/glm-1.0.3
```
::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/glm and /usr/share/doc/glm-1.0.3]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](glad.md "Glad-2.0.8"){accesskey="p"}

    Glad-2.0.8

-   [Next](glycin.md "glycin-2.1.1"){accesskey="n"}

    glycin-2.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
