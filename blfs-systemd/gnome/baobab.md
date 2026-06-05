::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](applications.md "GNOME Applications"){accesskey="p"}

    GNOME Applications

-   [Next](brasero.md "Brasero-3.12.3"){accesskey="n"}

    Brasero-3.12.3

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#baobab}Baobab-50.0 {#baobab-50.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Baobab {#introduction-to-baobab .sect2}

The [Baobab]{.application} package contains a graphical directory tree analyzer.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/baobab/50/baobab-50.0.tar.xz](https://download.gnome.org/sources/baobab/50/baobab-50.0.tar.xz){.ulink}

-   Download MD5 sum: f6f4649a945ca419d8261236fa2c7de2

-   Download size: 604 KB

-   Estimated disk space required: 10 MB

-   Estimated build time: less than 0.1 SBU (Using parallelism=4)
:::

### Baobab Dependencies

#### Required

[adwaita-icon-theme-50.0](../x/adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Baobab {#installation-of-baobab .sect2}

Install [Baobab]{.application} by running the following commands:

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
**Installed Program:** [baobab]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/help/\*/baobab]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------- ------------------------------------------------
  []{#baobab-prog}[[**baobab**]{.command}]{.term}   is a graphical tool used to analyze disk usage
  ------------------------------------------------- ------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](applications.md "GNOME Applications"){accesskey="p"}

    GNOME Applications

-   [Next](brasero.md "Brasero-3.12.3"){accesskey="n"}

    Brasero-3.12.3

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
