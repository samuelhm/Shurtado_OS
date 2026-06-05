::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](xfburn.md "Xfburn-0.8.0"){accesskey="p"}

    Xfburn-0.8.0

-   [Next](xfce4-notifyd.md "xfce4-notifyd-0.9.7"){accesskey="n"}

    xfce4-notifyd-0.9.7

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ristretto}ristretto-0.14.0 {#ristretto-0.14.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Ristretto {#introduction-to-ristretto .sect2}

[Ristretto]{.application} is a fast and lightweight image viewer for the [Xfce]{.application} desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/apps/ristretto/0.14/ristretto-0.14.0.tar.xz](https://archive.xfce.org/src/apps/ristretto/0.14/ristretto-0.14.0.tar.xz){.ulink}

-   Download MD5 sum: 63b94c3e3fab28c4533697f36ee6caa2

-   Download size: 280 KB

-   Estimated disk space required: 5.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### Ristretto Dependencies

#### Required

[libexif-0.6.26](../general/libexif.md "libexif-0.6.26"){.xref} and [libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref}

#### Optional

[tumbler-4.20.1](tumbler.md "tumbler-4.20.1"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of Ristretto {#installation-of-ristretto .sect2}

Install [ristretto]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [ristretto]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ----------------------------------------
  []{#ristretto-prog}[[**ristretto**]{.command}]{.term}   is a fast and lightweight image viewer
  ------------------------------------------------------- ----------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xfburn.md "Xfburn-0.8.0"){accesskey="p"}

    Xfburn-0.8.0

-   [Next](xfce4-notifyd.md "xfce4-notifyd-0.9.7"){accesskey="n"}

    xfce4-notifyd-0.9.7

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
