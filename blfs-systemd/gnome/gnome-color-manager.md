::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-calculator.md "gnome-calculator-50.0"){accesskey="p"}

    gnome-calculator-50.0

-   [Next](gnome-connections.md "gnome-connections-50.0"){accesskey="n"}

    gnome-connections-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-color-manager}gnome-color-manager-3.36.2 {#gnome-color-manager-3.36.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Color Manager {#introduction-to-gnome-color-manager .sect2}

[GNOME Color Manager]{.application} is a session framework for the [GNOME]{.application} desktop environment that makes it easy to manage, install and generate color profiles.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-color-manager/3.36/gnome-color-manager-3.36.2.tar.xz](https://download.gnome.org/sources/gnome-color-manager/3.36/gnome-color-manager-3.36.2.tar.xz){.ulink}

-   Download MD5 sum: b23a411d3ab754da6ebc967716a971dc

-   Download size: 2.1 MB

-   Estimated disk space required: 17 MB

-   Estimated build time: 0.1 SBU
:::

### GNOME Color Manager Dependencies

#### Required

[colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, and [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}

#### Recommended

[desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}

#### Optional

[DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref} (currently causes build to fail)
:::::

::: {.installation lang="en"}
## Installation of GNOME Color Manager {#installation-of-gnome-color-manager .sect2}

If [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref} is installed, disable installation of the man pages to avoid a build failure:

``` userinput
sed /subdir\(\'man/d -i meson.build
```

Install [GNOME Color Manager]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests must be run from an X session.

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
**Installed Programs:** [gcm-import, gcm-inspect, gcm-picker, and gcm-viewer]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/gnome-color-manager and /usr/share/help/\*/gnome-color-manager]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------
  []{#gcm-import}[[**gcm-import**]{.command}]{.term}     allows you to import ICC profiles supplied by vendors
  []{#gcm-inspect}[[**gcm-inspect**]{.command}]{.term}   allows you to inspect your session color-management settings
  []{#gcm-picker}[[**gcm-picker**]{.command}]{.term}     allows you to pick spot colors for use by an attached colorimeter
  []{#gcm-viewer}[[**gcm-viewer**]{.command}]{.term}     allows you to view properties of ICC profiles
  ------------------------------------------------------ -------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-calculator.md "gnome-calculator-50.0"){accesskey="p"}

    gnome-calculator-50.0

-   [Next](gnome-connections.md "gnome-connections-50.0"){accesskey="n"}

    gnome-connections-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
