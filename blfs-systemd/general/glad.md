::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](giflib.md "giflib-6.1.3"){accesskey="p"}

    giflib-6.1.3

-   [Next](glm.md "GLM-1.0.3"){accesskey="n"}

    GLM-1.0.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glad}Glad-2.0.8 {#glad-2.0.8 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Glad {#introduction-to-glad .sect2}

The [Glad]{.application} package contains a generator for loading Vulkan, OpenGL, EGL, GLES, and GLX contexts.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/Dav1dde/glad/archive/v2.0.8/glad-2.0.8.tar.gz](https://github.com/Dav1dde/glad/archive/v2.0.8/glad-2.0.8.tar.gz){.ulink}

-   Download MD5 sum: 028c39d581e6b53e53871f1dc21cf442

-   Download size: 632 KB

-   Estimated disk space required: 14 MB

-   Estimated build time: less than 0.1 SBU
:::

### Glad Dependencies

#### Optional (required to run the tests)

[pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, [rustc-1.96.0](rust.md "Rustc-1.96.0"){.xref}, [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}, [glfw](https://www.glfw.org/){.ulink}, and [WINE](http://winehq.org/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Glad {#installation-of-glad .sect2}

Install [Glad]{.application} by running the following commands:

``` userinput
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To test the results, you need the optional dependencies above. If you only install dependencies that are in the book, then 12 tests out of 100 fail. Issue:

``` userinput
PYTHON=python3 utility/test.sh
```

Now, as the `root`{.systemitem} user:

``` root
pip3 install --no-index --find-links dist --no-user glad2
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [glad]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/glad and /usr/lib/python3.14/site-packages/glad2-2.0.8.dist-info]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- -------------------------------------------------------------------
  []{#glad-prog}[[**glad**]{.command}]{.term}   generates loaders for Vulkan, OpenGL, EGL, GLES, and GLX contexts
  --------------------------------------------- -------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](giflib.md "giflib-6.1.3"){accesskey="p"}

    giflib-6.1.3

-   [Next](glm.md "GLM-1.0.3"){accesskey="n"}

    GLM-1.0.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
