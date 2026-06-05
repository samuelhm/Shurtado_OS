::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-shell.md "gnome-shell-50.2"){accesskey="p"}

    gnome-shell-50.2

-   [Next](gnome-session.md "gnome-session-50.1"){accesskey="n"}

    gnome-session-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-shell-extensions}gnome-shell-extensions-50.2 {#gnome-shell-extensions-50.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Shell Extensions {#introduction-to-gnome-shell-extensions .sect2}

The [GNOME Shell Extensions]{.application} package contains a collection of extensions providing additional and optional functionality to the [GNOME Shell]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-shell-extensions/50/gnome-shell-extensions-50.2.tar.xz](https://download.gnome.org/sources/gnome-shell-extensions/50/gnome-shell-extensions-50.2.tar.xz){.ulink}

-   Download MD5 sum: 3a9305d5925c0ed257b92ccbced01999

-   Download size: 240 KB

-   Estimated disk space required: 6.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Shell Extensions Dependencies

#### Required

[libgtop-2.41.3](libgtop.md "libgtop-2.41.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Shell Extensions {#installation-of-gnome-shell-extensions .sect2}

Install [GNOME Shell Extensions]{.application} by running the following commands:

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

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D x11=true`{.option}: Enables X11 session support. This is deprecated and X11 support for GNOME will be removed in GNOME 50.
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
**Installed Directories:** [/usr/share/gnome-shell/extensions]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-shell.md "gnome-shell-50.2"){accesskey="p"}

    gnome-shell-50.2

-   [Next](gnome-session.md "gnome-session-50.1"){accesskey="n"}

    gnome-session-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
