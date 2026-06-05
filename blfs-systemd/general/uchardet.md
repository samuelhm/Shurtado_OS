::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](talloc.md "Talloc-2.4.4"){accesskey="p"}

    Talloc-2.4.4

-   [Next](umockdev.md "Umockdev-0.19.7"){accesskey="n"}

    Umockdev-0.19.7

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#uchardet}Uchardet-0.0.8 {#uchardet-0.0.8 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Uchardet {#introduction-to-uchardet .sect2}

The [Uchardet]{.application} package contains an encoding detector library which takes a sequence of bytes in an unknown character encoding and attempts to determine the encoding of the text.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/uchardet/releases/uchardet-0.0.8.tar.xz](https://www.freedesktop.org/software/uchardet/releases/uchardet-0.0.8.tar.xz){.ulink}

-   Download MD5 sum: 9e267be7aee81417e5875086dd9d44fd

-   Download size: 217 KB

-   Estimated disk space required: 4.6 MB (with test)

-   Estimated build time: less than 0.1 SBU (with test)
:::

### Uchardet Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Uchardet {#installation-of-uchardet .sect2}

Install [Uchardet]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D BUILD_STATIC=OFF                 \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -W no-dev ..                        &&
make
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D BUILD_STATIC=OFF`*: This switch disables building the static version of the library.

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [uchardet]{.segbody}
:::

::: seg
**Installed Libraries:** [libuchardet.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/uchardet]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------
  []{#uchardet-prog}[[**uchardet**]{.command}]{.term}    detects what character set is used inside of a file
  []{#libuchardet}[`libuchardet.so`{.filename}]{.term}   provides an API for detecting the encoding of text in a file
  ------------------------------------------------------ --------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](talloc.md "Talloc-2.4.4"){accesskey="p"}

    Talloc-2.4.4

-   [Next](umockdev.md "Umockdev-0.19.7"){accesskey="n"}

    Umockdev-0.19.7

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
