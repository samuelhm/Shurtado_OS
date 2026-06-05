::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](wayland.md "Wayland-1.25.0"){accesskey="p"}

    Wayland-1.25.0

-   [Next](wv.md "wv-1.2.9"){accesskey="n"}

    wv-1.2.9

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#wayland-protocols}Wayland-Protocols-1.48 {#wayland-protocols-1.48 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Wayland-Protocols {#introduction-to-wayland-protocols .sect2}

The [Wayland-Protocols]{.application} package contains additional Wayland protocols that add functionality outside of protocols already in the Wayland core.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/1.48/downloads/wayland-protocols-1.48.tar.xz](https://gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/1.48/downloads/wayland-protocols-1.48.tar.xz){.ulink}

-   Download MD5 sum: 498bf2f7fa51bc1edfed89ca89ae6345

-   Download size: 148 KB

-   Estimated disk space required: 14 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### Wayland-protocols Dependencies

#### Required

[Wayland-1.25.0](wayland.md "Wayland-1.25.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Wayland-protocols {#installation-of-wayland-protocols .sect2}

Install [Wayland-protocols]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::::::: {.content lang="en"}
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
**Installed Directories:** [/usr/share/wayland-protocols]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](wayland.md "Wayland-1.25.0"){accesskey="p"}

    Wayland-1.25.0

-   [Next](wv.md "wv-1.2.9"){accesskey="n"}

    wv-1.2.9

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
