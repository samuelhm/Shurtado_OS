::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libbytesize.md "libbytesize-2.12"){accesskey="p"}

    libbytesize-2.12

-   [Next](libcloudproviders.md "libcloudproviders-0.3.6"){accesskey="n"}

    libcloudproviders-0.3.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libclc}libclc-22.1.0 {#libclc-22.1.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libclc {#introduction-to-libclc .sect2}

The [libclc]{.application} package contains an implementation of the library requirements of the OpenCL C programming language, as specified by the OpenCL 1.1 Specification.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/llvm-project-22.1.0.src.tar.xz](https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/llvm-project-22.1.0.src.tar.xz){.ulink}

-   Download MD5 sum: eebd30f81349347d789f04b5ddd41112

-   Download size: 160 MB

-   Estimated disk space required: 431 MB

-   Estimated build time: 0.6 SBU (with parallelism=8)
:::

### libclc Dependencies

#### Required

[LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref}

#### Recommended

[SPIRV-LLVM-Translator-22.1.2](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2"){.xref} (required for the iris gallium driver in [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref})
:::::

::: {.installation lang="en"}
## Installation of libclc {#installation-of-libclc .sect2}

Install [libclc]{.application} by running the following commands:

``` userinput
mkdir libclc/build &&
cd    libclc/build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -G Ninja ..                  &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/clc and /usr/share/clc]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](libbytesize.md "libbytesize-2.12"){accesskey="p"}

    libbytesize-2.12

-   [Next](libcloudproviders.md "libcloudproviders-0.3.6"){accesskey="n"}

    libcloudproviders-0.3.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
