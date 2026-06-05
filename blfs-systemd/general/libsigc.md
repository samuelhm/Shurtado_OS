::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libseccomp.md "libseccomp-2.6.0"){accesskey="p"}

    libseccomp-2.6.0

-   [Next](libsigc3.md "libsigc++-3.6.0"){accesskey="n"}

    libsigc++-3.6.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libsigc}libsigc++-2.12.1 {#libsigc-2.12.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libsigc++ {#introduction-to-libsigc .sect2}

The [libsigc++]{.application} package implements a typesafe callback system for standard C++.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libsigc++/2.12/libsigc++-2.12.1.tar.xz](https://download.gnome.org/sources/libsigc++/2.12/libsigc++-2.12.1.tar.xz){.ulink}

-   Download MD5 sum: 891f1b2dbaebd8007eda8c639bbe1149

-   Download size: 4.8 MB

-   Estimated disk space required: 27 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
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
**Installed Library:** [libsigc-2.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib}/sigc++-2.0 and /usr/share/{devhelp/books,doc}/libsigc++-2.0 (if the documentation is enabled)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------
  []{#libsigc-2}[`libsigc-2.0.so`{.filename}]{.term}   provides a typesafe callback system for standard C++
  ---------------------------------------------------- ------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libseccomp.md "libseccomp-2.6.0"){accesskey="p"}

    libseccomp-2.6.0

-   [Next](libsigc3.md "libsigc++-3.6.0"){accesskey="n"}

    libsigc++-3.6.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
