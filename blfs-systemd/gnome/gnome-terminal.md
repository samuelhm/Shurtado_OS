::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-system-monitor.md "gnome-system-monitor-50.0"){accesskey="p"}

    gnome-system-monitor-50.0

-   [Next](gnome-weather.md "gnome-weather-48.0"){accesskey="n"}

    gnome-weather-48.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-terminal}gnome-terminal-3.60.0 {#gnome-terminal-3.60.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Terminal {#introduction-to-gnome-terminal .sect2}

The [GNOME Terminal]{.application} package contains the terminal emulator for [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.gnome.org/GNOME/gnome-terminal/-/archive/3.60.0/gnome-terminal-3.60.0.tar.gz](https://gitlab.gnome.org/GNOME/gnome-terminal/-/archive/3.60.0/gnome-terminal-3.60.0.tar.gz){.ulink}

-   Download MD5 sum: fed6d01626aa09f320e806d4347d4fe6

-   Download size: 2.9 MB

-   Estimated disk space required: 33 MB

-   Estimated build time: 0.2 SBU (With tests)
:::

### GNOME Terminal Dependencies

#### Required

[DConf-0.49.0](dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){.xref}, [[gnome-shell-50.2](gnome-shell.md "gnome-shell-50.2"){.xref},]{.phrase} [gsettings-desktop-schemas-50.1](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libhandy-1.8.3](../x/libhandy1.md "libhandy-1.8.3"){.xref}, and [VTE-0.84.0](vte.md "VTE-0.84.0"){.xref}

#### Recommended

[Nautilus-50.2.2](nautilus.md "Nautilus-50.2.2"){.xref}

#### Optional

[appstream-glib-0.8.3](../general/appstream-glib.md "appstream-glib-0.8.3"){.xref} and [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of GNOME Terminal {#installation-of-gnome-terminal .sect2}

First, fix some deprecated schema entries:

``` userinput
sed -i -r 's:"(/system):"/org/gnome\1:g' src/external.gschema.xml
```

Install [GNOME Terminal]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

To run [GNOME Terminal]{.application}, the environment variable `LANG`{.envar} must be set to a UTF-8 locale [*prior*]{.emphasis} to starting the graphical environment.
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D search_provider=false`{.option}: This switch disables the [“[search [gnome-shell]{.application}]{.quote}”]{.quote} provider. Use this option if you do not have gnome-shell installed.

`-D nautilus_extension=false`{.option}: This switch disables a dependency on the [nautilus]{.application} file manager. Use this option if you do not have Nautilus installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gnome-terminal]{.segbody}
:::

::: seg
**Installed Libraries:** [/usr/lib/nautilus/extensions-4/libterminal-nautilus.so (Nautilus Extension)]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{lib,share/help/\*}/gnome-terminal and /usr/share/xdg-terminals]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- ------------------------------------------------
  []{#gnome-terminal-prog}[[**gnome-terminal**]{.command}]{.term}   is the [GNOME]{.application} Terminal Emulator
  ----------------------------------------------------------------- ------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gnome-system-monitor.md "gnome-system-monitor-50.0"){accesskey="p"}

    gnome-system-monitor-50.0

-   [Next](gnome-weather.md "gnome-weather-48.0"){accesskey="n"}

    gnome-weather-48.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
