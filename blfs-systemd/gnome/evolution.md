::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](evince.md "Evince-48.4"){accesskey="p"}

    Evince-48.4

-   [Next](file-roller.md "File-Roller-44.6"){accesskey="n"}

    File-Roller-44.6

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#evolution}Evolution-3.60.2 {#evolution-3.60.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Evolution {#introduction-to-evolution .sect2}

The [Evolution]{.application} package contains an integrated mail, calendar and address book suite designed for the [GNOME]{.application} environment.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/evolution/3.60/evolution-3.60.2.tar.xz](https://download.gnome.org/sources/evolution/3.60/evolution-3.60.2.tar.xz){.ulink}

-   Download MD5 sum: 4ec00dcb2c280798f61642746fcbdf49

-   Download size: 13 MB

-   Estimated disk space required: 297 MB

-   Estimated build time: 0.7 SBU (Using parallelism=4)
:::

### Evolution Dependencies

#### Required

[adwaita-icon-theme-50.0](../x/adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref}, [evolution-data-server-3.60.2](evolution-data-server.md "evolution-data-server-3.60.2"){.xref}, [Gcr-4.4.0.1](gcr4.md "Gcr-4.4.0.1"){.xref}, [gnome-autoar-0.4.5](gnome-autoar.md "gnome-autoar-0.4.5"){.xref}, [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}, [shared-mime-info-2.4](../general/shared-mime-info.md "shared-mime-info-2.4"){.xref}, and [WebKitGTK-2.52.0](../x/webkitgtk.md "WebKitGTK-2.52.0"){.xref}

#### Recommended

[Bogofilter-1.2.5](../general/bogofilter.md "Bogofilter-1.2.5"){.xref} (runtime), [enchant-2.8.16](../general/enchant.md "enchant-2.8.16"){.xref}, [gnome-desktop-44.5](gnome-desktop.md "gnome-desktop-44.5"){.xref}, [gspell-1.14.3](../general/gspell.md "gspell-1.14.3"){.xref}, [Highlight-4.20](../general/highlight.md "Highlight-4.20"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [libgweather-4.6.0](libgweather.md "libgweather-4.6.0"){.xref}, [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, and [Seahorse-47.0.1](seahorse.md "Seahorse-47.0.1"){.xref}

#### Optional

[geocode-glib-3.26.4](geocode-glib.md "geocode-glib-3.26.4"){.xref}, and [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [clutter-gtk](https://gitlab.gnome.org/Archive/clutter-gtk){.ulink} (Contact Maps plugin), [cmark](https://github.com/commonmark/cmark){.ulink}, [Glade](https://glade.gnome.org/){.ulink}, [libchamplain](https://gitlab.gnome.org/GNOME/libchamplain/){.ulink} (Contact Maps plugin), [libpst](https://www.five-ten-sg.com/libpst/){.ulink}, [libunity](https://launchpad.net/libunity/){.ulink}, [libytnef](https://github.com/Yeraze/ytnef){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Evolution {#installation-of-evolution .sect2}

Install [Evolution]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D SYSCONF_INSTALL_DIR=/etc  \
      -D ENABLE_INSTALLED_TESTS=ON \
      -D ENABLE_PST_IMPORT=OFF     \
      -D ENABLE_YTNEF=OFF          \
      -D ENABLE_CONTACT_MAPS=OFF   \
      -D ENABLE_MARKDOWN=OFF       \
      -D ENABLE_WEATHER=ON         \
      -G Ninja .. &&
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

*`-D ENABLE_YTNEF=OFF`*: This switch is used to disable the yTNEF library usage because [libytnef]{.application} is not part of BLFS.

*`-D ENABLE_PST_IMPORT=OFF`*: This switch is used to disable the pst-import plugin because [libpst]{.application} is not part of BLFS.

*`-D ENABLE_CONTACT_MAPS=OFF`*: This switch disables building the Contact Maps plugin. Remove this switch if you have installed the necessary dependencies and wish to build the Contact Maps plugin.

*`-D ENABLE_MARKDOWN=OFF`*: This switch allows building without [cmark](https://github.com/commonmark/cmark){.ulink}. Remove this switch if you need markdown support and you have installed the necessary dependency.

*`-D ENABLE_WEATHER=ON`*: This switch allows building against [libgweather-4.6.0](libgweather.md "libgweather-4.6.0"){.xref}.

`-D WITH_HELP=OFF`{.option}: This switch disables building the manual of this package. Use this switch if you have not installed [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}.

`-D WITH_OPENLDAP=OFF`{.option}: Use this switch if you have not installed [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [evolution]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/evolution, /usr/lib/evolution, /usr/libexec/evolution, /usr/share/evolution, /usr/share/installed-tests/evolution, /usr/share/help/\*/evolution, and optionally /usr/share/gtk-doc/html/{evolution-mail-composer,evolution-mail-engine}, /usr/share/gtk-doc/html/{evolution-mail-formatter,evolution-shell}, and /usr/share/gtk-doc/html/evolution-util]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ------------------------------------------------------------------------------------
  []{#evolution-prog}[[**evolution**]{.command}]{.term}   is an email, calendar and address book suite for the [GNOME]{.application} Desktop
  ------------------------------------------------------- ------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](evince.md "Evince-48.4"){accesskey="p"}

    Evince-48.4

-   [Next](file-roller.md "File-Roller-44.6"){accesskey="n"}

    File-Roller-44.6

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
