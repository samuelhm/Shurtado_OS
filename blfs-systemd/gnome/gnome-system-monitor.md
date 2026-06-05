::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-power-manager.md "gnome-power-manager-50.0"){accesskey="p"}

    gnome-power-manager-50.0

-   [Next](gnome-terminal.md "gnome-terminal-3.60.0"){accesskey="n"}

    gnome-terminal-3.60.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-system-monitor}gnome-system-monitor-50.0 {#gnome-system-monitor-50.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME System Monitor {#introduction-to-gnome-system-monitor .sect2}

The [GNOME System Monitor]{.application} package contains [GNOME]{.application}'s replacement for [**gtop**]{.command}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-system-monitor/50/gnome-system-monitor-50.0.tar.xz](https://download.gnome.org/sources/gnome-system-monitor/50/gnome-system-monitor-50.0.tar.xz){.ulink}

-   Download MD5 sum: 24c73cd65f22e53bc82bef32a79a3ce3

-   Download size: 1.1 MB

-   Estimated disk space required: 24 MB

-   Estimated build time: 0.1 SBU (with parallelism=4)
:::

### GNOME System Monitor Dependencies

#### Required

[adwaita-icon-theme-50.0](../x/adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref}, [Gtkmm-4.22.0](../x/gtkmm4.md "Gtkmm-4.22.0"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libgtop-2.41.3](libgtop.md "libgtop-2.41.3"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, and [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}

#### Optional

[appstream-glib-0.8.3](../general/appstream-glib.md "appstream-glib-0.8.3"){.xref}, [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [Catch2](https://github.com/catchorg/Catch2){.ulink}, and [uncrustify](https://github.com/uncrustify/uncrustify){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GNOME System Monitor {#installation-of-gnome-system-monitor .sect2}

First, remove a hard dependency on Catch2, which is only used if you are running the unit tests:

``` userinput
find . -name meson.build | xargs sed -i -e '/catch2/d' &&
sed -i '141,151d' src/meson.build
```

Install [GNOME System Monitor]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package comes with a test suite, but it requires the external Catch2 dependency. If you have Catch2 installed, you can omit the seds above and then run the tests with [**ninja test**]{.command}.

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
**Installed Program:** [gnome-system-monitor]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{libexec,share,share/help/\*}/gnome-system-monitor]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------------- ---------------------------------------------------------
  []{#gnome-system-monitor-prog}[[**gnome-system-monitor**]{.command}]{.term}   is used to display the process tree and hardware meters
  ----------------------------------------------------------------------------- ---------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-power-manager.md "gnome-power-manager-50.0"){accesskey="p"}

    gnome-power-manager-50.0

-   [Next](gnome-terminal.md "gnome-terminal-3.60.0"){accesskey="n"}

    gnome-terminal-3.60.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
