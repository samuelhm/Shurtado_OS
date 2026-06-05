::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](kate.md "kate-26.04.1"){accesskey="p"}

    kate-26.04.1

-   [Next](nano.md "Nano-9.0"){accesskey="n"}

    Nano-9.0

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mousepad}mousepad-0.7.0 {#mousepad-0.7.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Mousepad {#introduction-to-mousepad .sect2}

[Mousepad]{.application} is a simple GTK text editor for the [Xfce]{.application} desktop environment.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/apps/mousepad/0.7/mousepad-0.7.0.tar.xz](https://archive.xfce.org/src/apps/mousepad/0.7/mousepad-0.7.0.tar.xz){.ulink}

-   Download MD5 sum: 96c09736fd02da599ffedf215313328f

-   Download size: 456 KB

-   Estimated disk space required: 9.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### Mousepad Dependencies

#### Required

[gtksourceview4-4.8.4](../x/gtksourceview4.md "gtksourceview4-4.8.4"){.xref} and [libxfce4ui-4.20.2](../xfce/libxfce4ui.md "libxfce4ui-4.20.2"){.xref}

#### Recommended

[gspell-1.14.3](../general/gspell.md "gspell-1.14.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Mousepad {#installation-of-mousepad .sect2}

Install [Mousepad]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&

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

`-D gspell-plugin=no`{.option}: Use this option to disable building the [gspell-1.14.3](../general/gspell.md "gspell-1.14.3"){.xref} plugin if you have not installed [gspell]{.application}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [mousepad]{.segbody}
:::

::: seg
**Installed Libraries:** [libmousepad.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- -----------------------------
  []{#mousepad-prog}[[**mousepad**]{.command}]{.term}   is a simple GTK text editor
  ----------------------------------------------------- -----------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](kate.md "kate-26.04.1"){accesskey="p"}

    kate-26.04.1

-   [Next](nano.md "Nano-9.0"){accesskey="n"}

    Nano-9.0

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
