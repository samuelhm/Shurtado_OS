::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](libxfce4util.md "libxfce4util-4.20.1"){accesskey="p"}

    libxfce4util-4.20.1

-   [Next](libxfce4ui.md "libxfce4ui-4.20.2"){accesskey="n"}

    libxfce4ui-4.20.2

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfconf}Xfconf-4.20.0 {#xfconf-4.20.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfconf {#introduction-to-xfconf .sect2}

[Xfconf]{.application} is the configuration storage system for [Xfce]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/xfconf/4.20/xfconf-4.20.0.tar.bz2](https://archive.xfce.org/src/xfce/xfconf/4.20/xfconf-4.20.0.tar.bz2){.ulink}

-   Download MD5 sum: ca596ff0a9be7fa655bb09cb05458644

-   Download size: 748 KB

-   Estimated disk space required: 10 MB

-   Estimated build time: less than 0.1 SBU
:::

### Xfconf Dependencies

#### Required

[libxfce4util-4.20.1](libxfce4util.md "libxfce4util-4.20.1"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Xfconf {#installation-of-xfconf .sect2}

Install [Xfconf]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [xfconf-query]{.segbody}
:::

::: seg
**Installed Library:** [libxfconf-0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/xfce4/xfconf-0, /usr/lib/xfce4/xfconf, and /usr/share/gtk-doc/html/xfconf]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------------------------
  []{#xfconf-query}[[**xfconf-query**]{.command}]{.term}   is a commandline utility to view or change any setting stored in [Xfconf]{.application}
  []{#libxfconf}[`libxfconf-0.so`{.filename}]{.term}       contains basic functions for [Xfce]{.application} configuration
  -------------------------------------------------------- -----------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libxfce4util.md "libxfce4util-4.20.1"){accesskey="p"}

    libxfce4util-4.20.1

-   [Next](libxfce4ui.md "libxfce4ui-4.20.2"){accesskey="n"}

    libxfce4ui-4.20.2

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
