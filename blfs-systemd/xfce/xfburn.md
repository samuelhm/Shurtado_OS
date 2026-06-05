::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](xfce4-terminal.md "xfce4-terminal-1.2.0"){accesskey="p"}

    xfce4-terminal-1.2.0

-   [Next](ristretto.md "ristretto-0.14.0"){accesskey="n"}

    ristretto-0.14.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfburn}Xfburn-0.8.0 {#xfburn-0.8.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfburn {#introduction-to-xfburn .sect2}

[Xfburn]{.application} is a [GTK+ 3]{.application} GUI frontend for [Libisoburn]{.application}. This is useful for creating CDs and DVDs from files on your computer or ISO images downloaded from elsewhere.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/apps/xfburn/0.8/xfburn-0.8.0.tar.bz2](https://archive.xfce.org/src/apps/xfburn/0.8/xfburn-0.8.0.tar.bz2){.ulink}

-   Download MD5 sum: 0ae5e3e94c71857b7cd8555f9f18625f

-   Download size: 1.2 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
:::

### Xfburn Dependencies

#### Required

[libburn-1.5.8](../multimedia/libburn.md "libburn-1.5.8"){.xref}, [libisofs-1.5.8.pl02](../multimedia/libisofs.md "libisofs-1.5.8.pl02"){.xref}, and [libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref}

#### Optional

[gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref} and [Cdrdao-1.2.6](../multimedia/cdrdao.md "Cdrdao-1.2.6"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of Xfburn {#installation-of-xfburn .sect2}

Install [Xfburn]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

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
**Installed Program:** [xfburn]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/xfburn]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------- -------------------------------------------------------------------
  []{#xfburn-prog}[[**xfburn**]{.command}]{.term}   is a [GTK+ 3]{.application} application for creating CDs and DVDs
  ------------------------------------------------- -------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](xfce4-terminal.md "xfce4-terminal-1.2.0"){accesskey="p"}

    xfce4-terminal-1.2.0

-   [Next](ristretto.md "ristretto-0.14.0"){accesskey="n"}

    ristretto-0.14.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
