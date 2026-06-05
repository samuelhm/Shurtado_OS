::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](qcoro.md "qcoro-0.13.0"){accesskey="p"}

    qcoro-0.13.0

-   [Next](spidermonkey.md "SpiderMonkey from firefox-140.11.0"){accesskey="n"}

    SpiderMonkey from firefox-140.11.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#simdutf}simdutf-9.0.0 {#simdutf-9.0.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to simdutf {#introduction-to-simdutf .sect2}

The [simdutf]{.application} package contains a library used for processing Unicode characters with SIMD optimizations. This includes the SSE2 and AVX2 instruction sets and more.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/simdutf/simdutf/archive/v9.0.0/simdutf-9.0.0.tar.gz](https://github.com/simdutf/simdutf/archive/v9.0.0/simdutf-9.0.0.tar.gz){.ulink}

-   Download MD5 sum: a20af35e2a7c9737d97b7beae96e7146

-   Download size: 2.4 MB

-   Estimated disk space required: 44 MB

-   Estimated build time: 0.3 SBU (add 1.1 SBU for tests)
:::

### simdutf Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of simdutf {#installation-of-simdutf .sect2}

Install [simdutf]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr  \
      -D CMAKE_BUILD_TYPE=Release   \
      -D BUILD_SHARED_LIBS=ON       \
      -G Ninja ..                   &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fastbase64 and sutf]{.segbody}
:::

::: seg
**Installed Libraries:** [libsimdutf.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/simdutf and /usr/lib/cmake/simdutf]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------------
  []{#fastbase64}[[**fastbase64**]{.command}]{.term}   encodes and decodes base64 with optimizations
  []{#sutf}[[**sutf**]{.command}]{.term}               converts the encoding of an input file from one encoding to another using the simdutf library
  []{#libsimdutf}[`libsimdutf.so`{.filename}]{.term}   contains functions that process Unicode characters with SIMD optimizations
  ---------------------------------------------------- -----------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](qcoro.md "qcoro-0.13.0"){accesskey="p"}

    qcoro-0.13.0

-   [Next](spidermonkey.md "SpiderMonkey from firefox-140.11.0"){accesskey="n"}

    SpiderMonkey from firefox-140.11.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
