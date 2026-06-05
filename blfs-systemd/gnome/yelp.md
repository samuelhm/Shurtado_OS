::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-user-docs.md "gnome-user-docs-50.2"){accesskey="p"}

    gnome-user-docs-50.2

-   [Next](applications.md "GNOME Applications"){accesskey="n"}

    GNOME Applications

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#yelp}Yelp-49.0 {#yelp-49.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Yelp {#introduction-to-yelp .sect2}

The [Yelp]{.application} package contains a help browser used for viewing help files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/yelp/49/yelp-49.0.tar.xz](https://download.gnome.org/sources/yelp/49/yelp-49.0.tar.xz){.ulink}

-   Download MD5 sum: 516ac3f2a7f66b38bda27fd2f33a63f6

-   Download size: 1.2 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
:::

### Yelp Dependencies

#### Required

[gsettings-desktop-schemas-50.1](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [WebKitGTK-2.52.0](../x/webkitgtk.md "WebKitGTK-2.52.0"){.xref}, and [yelp-xsl-49.0](yelp-xsl.md "yelp-xsl-49.0"){.xref}

#### Recommended

[desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [Yelp]{.application} package is not required for a functional [GNOME]{.application} Desktop. Note, however, that without [Yelp]{.application} you will not be able to view the built-in Help provided by core [GNOME]{.application} and many of the support applications.
:::
::::::

::: {.installation lang="en"}
## Installation of Yelp {#installation-of-yelp .sect2}

Install [Yelp]{.application} by running the following commands:

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

Still as the `root`{.systemitem} user, ensure that `/usr/share/applications/mimeinfo.cache`{.filename} will be updated and therefore the [**help**]{.command} in gnome applications will work.

``` root
update-desktop-database
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gnome-help (symlink) and yelp]{.segbody}
:::

::: seg
**Installed Library:** [libyelp-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libyelp-1, /usr/share/gtk-doc/html/libyelp (optional), and /usr/{lib,share}/yelp-1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------
  []{#yelp-prog}[[**yelp**]{.command}]{.term}      is the [GNOME]{.application} Help Browser
  []{#libyelp}[`libyelp-1.so`{.filename}]{.term}   contains the [Yelp]{.application} API functions
  ------------------------------------------------ -------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-user-docs.md "gnome-user-docs-50.2"){accesskey="p"}

    gnome-user-docs-50.2

-   [Next](applications.md "GNOME Applications"){accesskey="n"}

    GNOME Applications

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
