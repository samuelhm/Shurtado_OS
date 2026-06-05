::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](editors.md "Text Editors"){accesskey="p"}

    Text Editors

-   [Next](ed.md "Ed-1.22.5"){accesskey="n"}

    Ed-1.22.5

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#bluefish}Bluefish-2.4.1 {#bluefish-2.4.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Bluefish {#introduction-to-bluefish .sect2}

[Bluefish]{.application} is a [GTK+]{.application} text editor targeted towards programmers and web designers, with many options to write websites, scripts and programming code. [Bluefish]{.application} supports many programming and markup languages, and it focuses on editing dynamic and interactive websites.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.bennewitz.com/bluefish/stable/source/bluefish-2.4.1.tar.bz2](https://www.bennewitz.com/bluefish/stable/source/bluefish-2.4.1.tar.bz2){.ulink}

-   Download MD5 sum: 69375f4002750d6b551713e5bbf67a1d

-   Download size: 4.9 MB

-   Estimated disk space required: 52 MB

-   Estimated build time: 0.3 SBU
:::

### Bluefish Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} (for updating the desktop database)

#### Optional

[enchant-2.8.16](../general/enchant.md "enchant-2.8.16"){.xref} (for spell checking), [Gucharmap-17.0.2](../gnome/gucharmap.md "Gucharmap-17.0.2"){.xref}, and [Jing](https://github.com/relaxng/jing-trang){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Bluefish {#installation-of-bluefish .sect2}

Install [Bluefish]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --docdir=/usr/share/doc/bluefish-2.4.1 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the `/usr/share/icons/hicolor`{.filename} hierarchy and desktop files into the `/usr/share/applications`{.filename} hierarchy. You can improve system performance and memory usage by updating `/usr/share/icons/hicolor/icon-theme.cache`{.filename} and `/usr/share/applications/mimeinfo.cache`{.filename}. To perform the update you must have [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} (for the desktop cache) and issue the following commands as the `root`{.systemitem} user:

``` root
gtk-update-icon-cache -t -f --include-image-data /usr/share/icons/hicolor &&
update-desktop-database
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [bluefish]{.segbody}
:::

::: seg
**Installed Libraries:** [several under /usr/lib/bluefish/]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/bluefish, /usr/share/bluefish, /usr/share/doc/bluefish-2.4.1, and /usr/share/xml/bluefish]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ------------------------------------------------------------------
  []{#bluefish-prog}[[**bluefish**]{.command}]{.term}   is a [GTK+]{.application} text editor for markup and programming
  ----------------------------------------------------- ------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](editors.md "Text Editors"){accesskey="p"}

    Text Editors

-   [Next](ed.md "Ed-1.22.5"){accesskey="n"}

    Ed-1.22.5

-   [Up](editors.md "Chapter 6. Text Editors"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
