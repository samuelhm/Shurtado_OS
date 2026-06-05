::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 47. Scanning

-   [Prev](sane.md "SANE-1.4.0"){accesskey="p"}

    SANE-1.4.0

-   [Next](sgml.md "Standard Generalized Markup Language (SGML)"){accesskey="n"}

    Standard Generalized Markup Language (SGML)

-   [Up](scanning.md "Chapter 47. Scanning"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#simple-scan}Simple-scan-50.0 {#simple-scan-50.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Simple-scan {#introduction-to-simple-scan .sect2}

The [Simple-scan]{.application} package contains a modern document scanning application. It captures images using SANE, and supports the latest color management and graphics standards.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/simple-scan/50/simple-scan-50.0.tar.xz](https://download.gnome.org/sources/simple-scan/50/simple-scan-50.0.tar.xz){.ulink}

-   Download MD5 sum: fa447328d9e91e5624be2511f626ce06

-   Download size: 1.2 MB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.1 SBU
:::

### Simple-scan Dependencies

#### Required

[colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref}, [itstool-2.0.7](itstool.md "itstool-2.0.7"){.xref}, [libgusb-0.4.9](../general/libgusb.md "libgusb-0.4.9"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, and [SANE-1.4.0](sane.md "SANE-1.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Simple-scan {#installation-of-simple-scan .sect2}

Install [Simple-scan]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [simple-scan]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/help/\*/simple-scan]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- -------------------------------------------
  []{#simple-scan-prog}[[**simple-scan**]{.command}]{.term}   is a modern document scanning application
  ----------------------------------------------------------- -------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](sane.md "SANE-1.4.0"){accesskey="p"}

    SANE-1.4.0

-   [Next](sgml.md "Standard Generalized Markup Language (SGML)"){accesskey="n"}

    Standard Generalized Markup Language (SGML)

-   [Up](scanning.md "Chapter 47. Scanning"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
