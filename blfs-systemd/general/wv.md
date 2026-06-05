::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](wayland-protocols.md "Wayland-Protocols-1.48"){accesskey="p"}

    Wayland-Protocols-1.48

-   [Next](xapian.md "Xapian-2.0.0"){accesskey="n"}

    Xapian-2.0.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#wv}wv-1.2.9 {#wv-1.2.9 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to wv {#introduction-to-wv .sect2}

The [wv]{.application} package contains tools for reading information from an MS Word document.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/wv/wv-1.2.9.tar.gz](https://anduin.linuxfromscratch.org/BLFS/wv/wv-1.2.9.tar.gz){.ulink}

-   Download MD5 sum: dbccf2e9f747e50c913b7e3d126b73f7

-   Download size: 608 KB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.4 SBU
:::

### wv Dependencies

#### Required

[libgsf-1.14.58](libgsf.md "libgsf-1.14.58"){.xref} and [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}

#### Optional

[libwmf](https://wvware.sourceforge.net/libwmf.md){.ulink}
:::::

::: {.installation lang="en"}
## Installation of wv {#installation-of-wv .sect2}

Install [wv]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not have a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [wvSummary and several other wv\* programs which are deprecated in favour of abiword: see [https://wvware.sourceforge.net/](https://wvware.sourceforge.net/){.ulink}]{.segbody}
:::

::: seg
**Installed Library:** [libwv-1.2.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/wv]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------
  []{#wv-prog}[[**wvSummary**]{.command}]{.term}     displays the summary information from an MS Word document
  []{#libwv-1.2}[`libwv-1.2.so`{.filename}]{.term}   provides functions to access MS Word documents
  -------------------------------------------------- -----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](wayland-protocols.md "Wayland-Protocols-1.48"){accesskey="p"}

    Wayland-Protocols-1.48

-   [Next](xapian.md "Xapian-2.0.0"){accesskey="n"}

    Xapian-2.0.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
