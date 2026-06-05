::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-session.md "gnome-session-50.1"){accesskey="p"}

    gnome-session-50.1

-   [Next](gnome-user-docs.md "gnome-user-docs-50.2"){accesskey="n"}

    gnome-user-docs-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-tweaks}gnome-tweaks-49.0 {#gnome-tweaks-49.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Tweaks {#introduction-to-gnome-tweaks .sect2}

[GNOME Tweaks]{.application} is a simple program used to tweak advanced [GNOME]{.application} settings.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-tweaks/49/gnome-tweaks-49.0.tar.xz](https://download.gnome.org/sources/gnome-tweaks/49/gnome-tweaks-49.0.tar.xz){.ulink}

-   Download MD5 sum: 6c8dbfcefcc5dbab6605cc6f0df1ba62

-   Download size: 680 KB

-   Estimated disk space required: 4.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Tweaks Dependencies

#### Required

[GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [gsettings-desktop-schemas-50.1](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libgudev-238](../general/libgudev.md "libgudev-238"){.xref}, [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}, and [sound-theme-freedesktop-0.8](../multimedia/sound-theme-freedesktop.md "sound-theme-freedesktop-0.8"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Tweaks {#installation-of-gnome-tweaks .sect2}

Install [GNOME Tweaks]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
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
**Installed Programs:** [gnome-tweaks]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/gtweak and /usr/share/gnome-tweaks]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------- ----------------------------------------------------------
  []{#gnome-tweaks-prog}[[**gnome-tweaks**]{.command}]{.term}   is used to tweak advanced [GNOME]{.application} settings
  ------------------------------------------------------------- ----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-session.md "gnome-session-50.1"){accesskey="p"}

    gnome-session-50.1

-   [Next](gnome-user-docs.md "gnome-user-docs-50.2"){accesskey="n"}

    gnome-user-docs-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
