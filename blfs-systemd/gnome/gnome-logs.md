::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-disk-utility.md "gnome-disk-utility-46.1"){accesskey="p"}

    gnome-disk-utility-46.1

-   [Next](gnome-maps.md "gnome-maps-50.1"){accesskey="n"}

    gnome-maps-50.1

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-logs}gnome-logs-45.0 {#gnome-logs-45.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Logs {#introduction-to-gnome-logs .sect2}

The [GNOME Logs]{.application} package contains a log viewer for the systemd journal.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-logs/45/gnome-logs-45.0.tar.xz](https://download.gnome.org/sources/gnome-logs/45/gnome-logs-45.0.tar.xz){.ulink}

-   Download MD5 sum: 5b9396cf24528ae72eb4c48934f60df2

-   Download size: 624 KB

-   Estimated disk space required: 8.8 MB

-   Estimated build time: 0.1 SBU
:::

### GNOME Logs Dependencies

#### Required

[GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [gsettings-desktop-schemas-50.1](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, and [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}

#### Optional

[appstream-glib-0.8.3](../general/appstream-glib.md "appstream-glib-0.8.3"){.xref}, [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} (for the test suite), and [docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} (to build manual pages), and [dogtail](https://pypi.python.org/pypi/dogtail){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GNOME Logs {#installation-of-gnome-logs .sect2}

Install [GNOME Logs]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}

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
**Installed Programs:** [gnome-logs]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/gnome-logs and /usr/share/help/\*/gnome-logs]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- ---------------------------------------------------------------
  []{#gnome-logs-prog}[[**gnome-logs**]{.command}]{.term}   is a [GNOME]{.application} log viewer for the systemd journal
  --------------------------------------------------------- ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-disk-utility.md "gnome-disk-utility-46.1"){accesskey="p"}

    gnome-disk-utility-46.1

-   [Next](gnome-maps.md "gnome-maps-50.1"){accesskey="n"}

    gnome-maps-50.1

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
