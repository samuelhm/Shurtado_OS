::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){accesskey="p"}

    DConf-0.49.0 / DConf-Editor-49.0

-   [Next](gvfs.md "Gvfs-1.60.0"){accesskey="n"}

    Gvfs-1.60.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-backgrounds}gnome-backgrounds-50.0 {#gnome-backgrounds-50.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Backgrounds {#introduction-to-gnome-backgrounds .sect2}

The [GNOME Backgrounds]{.application} package contains a collection of graphics files which can be used as backgrounds in the [GNOME]{.application} Desktop environment. Additionally, the package creates the proper framework and directory structure so that you can add your own files to the collection.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-backgrounds/50/gnome-backgrounds-50.0.tar.xz](https://download.gnome.org/sources/gnome-backgrounds/50/gnome-backgrounds-50.0.tar.xz){.ulink}

-   Download MD5 sum: d44377b504366839bc17a70820d78413

-   Download size: 38 MB

-   Estimated disk space required: 41 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Backgrounds Dependencies

#### Required at runtime

[libjxl-0.11.2](../general/libjxl.md "libjxl-0.11.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Backgrounds {#installation-of-gnome-backgrounds .sect2}

Install [GNOME Backgrounds]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr ..
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
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
**Installed Directories:** [/usr/share/backgrounds/gnome and /usr/share/gnome-background-properties]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------- -------------------------------------------------------------
  [`GNOME Backgrounds`{.filename}]{.term}   are background images for the [GNOME]{.application} Desktop
  ----------------------------------------- -------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){accesskey="p"}

    DConf-0.49.0 / DConf-Editor-49.0

-   [Next](gvfs.md "Gvfs-1.60.0"){accesskey="n"}

    Gvfs-1.60.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
