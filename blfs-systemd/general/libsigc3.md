::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libsigc.md "libsigc++-2.12.1"){accesskey="p"}

    libsigc++-2.12.1

-   [Next](libsigsegv.md "libsigsegv-2.15"){accesskey="n"}

    libsigsegv-2.15

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libsigc3}libsigc++-3.6.0 {#libsigc-3.6.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libsigc++ {#introduction-to-libsigc .sect2}

The [libsigc++]{.application} package implements a typesafe callback system for standard C++. This version is part of a new API for supporting gtkmm-4.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libsigc++/3.6/libsigc++-3.6.0.tar.xz](https://download.gnome.org/sources/libsigc++/3.6/libsigc++-3.6.0.tar.xz){.ulink}

-   Download MD5 sum: b7205d5465ac15fbc0c781d39b4011be

-   Download size: 972 KB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

### libsigc++ Dependencies

#### Recommended

[Boost-1.91.0-1](boost.md "boost-1.91.0-1"){.xref} and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}

#### Optional

[DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref}, [docbook-xml-5.0](../pst/docbook5.md "docbook-xml-5.0"){.xref}, [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [fop-2.11](../pst/fop.md "fop-2.11"){.xref}, and [mm-common](https://download.gnome.org/sources/mm-common){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libsigc++ {#installation-of-libsigc .sect2}

First, fix detecting Boost when configuring this package:

``` userinput
sed -i "s/'system',//" meson.build
```

Install [libsigc++]{.application} by running the following commands:

``` userinput
mkdir bld &&
cd    bld &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D build-documentation=true`{.option}: Use this switch if [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} is installed and you wish to build and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libsigc-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib}/sigc++-3.0 and /usr/share/{devhelp/books,doc}/libsigc++-3.0 (if the documentation is enabled)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------
  []{#libsigc-3}[`libsigc-3.0.so`{.filename}]{.term}   provides a typesafe callback system for standard C++
  ---------------------------------------------------- ------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libsigc.md "libsigc++-2.12.1"){accesskey="p"}

    libsigc++-2.12.1

-   [Next](libsigsegv.md "libsigsegv-2.15"){accesskey="n"}

    libsigsegv-2.15

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
