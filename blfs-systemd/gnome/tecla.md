::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-settings-daemon.md "gnome-settings-daemon-50.1"){accesskey="p"}

    gnome-settings-daemon-50.1

-   [Next](gnome-control-center.md "gnome-control-center-50.2"){accesskey="n"}

    gnome-control-center-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tecla}Tecla-50.0 {#tecla-50.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Tecla {#introduction-to-tecla .sect2}

The [Tecla]{.application} package contains a keyboard layout viewer.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/tecla/50/tecla-50.0.tar.xz](https://download.gnome.org/sources/tecla/50/tecla-50.0.tar.xz){.ulink}

-   Download MD5 sum: cc5ae49bae10abcb02040a20e63ef26b

-   Download size: 84 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### Tecla Dependencies

#### Required

[libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref} and [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Tecla {#installation-of-tecla .sect2}

Install [Tecla]{.application} by running the following commands:

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
**Installed Programs:** [tecla]{.segbody}
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

  ----------------------------------------------- -----------------------------
  []{#tecla-prog}[[**tecla**]{.command}]{.term}   is a keyboard layout viewer
  ----------------------------------------------- -----------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-settings-daemon.md "gnome-settings-daemon-50.1"){accesskey="p"}

    gnome-settings-daemon-50.1

-   [Next](gnome-control-center.md "gnome-control-center-50.2"){accesskey="n"}

    gnome-control-center-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
