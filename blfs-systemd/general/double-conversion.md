::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](dbus-glib.md "dbus-glib-0.114"){accesskey="p"}

    dbus-glib-0.114

-   [Next](duktape.md "duktape-2.7.0"){accesskey="n"}

    duktape-2.7.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#double-conversion}Double-conversion-3.4.0 {#double-conversion-3.4.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Double-conversion {#introduction-to-double-conversion .sect2}

The [Double-conversion]{.application} package contains a library that facilitates binary-to-decimal and decimal-to-binary routines for IEEE doubles.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/google/double-conversion/archive/v3.4.0/double-conversion-3.4.0.tar.gz](https://github.com/google/double-conversion/archive/v3.4.0/double-conversion-3.4.0.tar.gz){.ulink}

-   Download MD5 sum: cb2e555c32614f680ba928e962dda9be

-   Download size: 6.7 MB

-   Estimated disk space required: 62 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### Double-conversion Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Double-conversion {#installation-of-double-conversion .sect2}

Install [Double-conversion]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -D BUILD_SHARED_LIBS=ON             \
      -D BUILD_TESTING=ON                 \
      ..                                  &&
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

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.

*`-D BUILD_SHARED_LIBS=ON`*: This switch forces cmake to build a shared version of the library instead of the static version.

*`-D BUILD_TESTING=ON`*: This switch builds the test programs.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libdouble-conversion.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/double-conversion]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------------------------------
  []{#libdouble-conversion}[`libdouble-conversion.so`{.filename}]{.term}   provides binary-to-decimal and decimal-to-binary routines for IEEE doubles
  ------------------------------------------------------------------------ ----------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](dbus-glib.md "dbus-glib-0.114"){accesskey="p"}

    dbus-glib-0.114

-   [Next](duktape.md "duktape-2.7.0"){accesskey="n"}

    duktape-2.7.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
