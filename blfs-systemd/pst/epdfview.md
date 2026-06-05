::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](enscript.md "Enscript-1.6.6"){accesskey="p"}

    Enscript-1.6.6

-   [Next](fop.md "fop-2.11"){accesskey="n"}

    fop-2.11

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#epdfview}ePDFView-gtk3-20200814 {#epdfview-gtk3-20200814 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ePDFView-gtk3 {#introduction-to-epdfview-gtk3 .sect2}

[ePDFView-gtk3]{.application} is a fork of the old [ePDFView]{.application} program. Although the github repository [https://github.com/Flow-It/epdfview_old.git](https://github.com/Flow-It/epdfview_old.git){.ulink} names it as 'old', it is the gtk3 fork. It is a lightweight replacement for [Evince]{.application} as it does not rely upon [GNOME]{.application} libraries and is more capable than [MuPDF]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/epdfview-gtk3/epdfview-gtk3-20200814.tar.xz](https://anduin.linuxfromscratch.org/BLFS/epdfview-gtk3/epdfview-gtk3-20200814.tar.xz){.ulink}

-   Download MD5 sum: d222a3dc26c2faf6f862018bb478fb36

-   Download size: 184 KB

-   Estimated disk space required: 3.5 MB

-   Estimated build time: less than 0.1 SBU (using parallelism=4)
:::

### ePDFView Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}

#### Recommended

[Cups-2.4.19](cups.md "Cups-2.4.19"){.xref} (to access print queues), [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, and [hicolor-icon-theme-0.18](../x/hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref} (both for the icons this installs)

#### Optional

The home page of the project's repository mentions that there are optional dependencies, which are enabled by switches. These are for building the documentation and running the test suite, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [Cppunit](https://freedesktop.org/wiki/Software/cppunit/){.ulink}. Note that [doxygen]{.application} only installs a skeletal page about itself, which contains no package documentation, and the test code does not compile with recent versions of C++.
:::::

:::: {.installation lang="en"}
## Installation of ePDFView-gtk3 {#installation-of-epdfview-gtk3 .sect2}

Install [ePDFView-gtk3]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr           \
            --buildtype=release     \
            -D enable-printing=true \
            ..                      &&
ninja
```

This package does not come with a buildable test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the `/usr/share/icons/hicolor`{.filename} hierarchy and desktop files into the `/usr/share/applications`{.filename} hierarchy. You can improve system performance and memory usage by updating `/usr/share/icons/hicolor/index.theme`{.filename} and `/usr/share/applications/mimeinfo.cache`{.filename}. To perform the update you must have [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} installed (for the icon cache) and [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} (for the desktop cache) and issue the following commands as the `root`{.systemitem} user:

``` userinput
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**-D enable-printing=true**]{.command}: builds the code to link to the [cups]{.application} print queue(s). Omit this if you have not installed [cups]{.application}.
:::

:::: {.configuration lang="en"}
## Configuring ePDFView-gtk3 {#configuring-epdfview-gtk3 .sect2}

ePDFView-gtk3 has several keyboard hotkeys for optional features. Most of them are 'off' by default, including the toolbar, and if it has been closed with the menu disabled, the program can start with all options not being visible until the relevant function keys are pressed.

::: itemizedlist
-   \[F6\] - toggle toolbar

-   \[F7\] - toggle menu

-   \[F8\] - toggle invert-colors

-   \[F9\] - toggle show-index

-   \[F11\] - toggle fullscreen
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [epdfview]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/epdfview]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ---------------------------------------------------------------
  []{#epdfview-prog}[[**epdfview**]{.command}]{.term}   is a [Gtk+-3]{.application} program for viewing PDF documents
  ----------------------------------------------------- ---------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](enscript.md "Enscript-1.6.6"){accesskey="p"}

    Enscript-1.6.6

-   [Next](fop.md "fop-2.11"){accesskey="n"}

    fop-2.11

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
