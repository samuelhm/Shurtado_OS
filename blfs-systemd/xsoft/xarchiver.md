::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](transmission.md "Transmission-4.1.1"){accesskey="p"}

    Transmission-4.1.1

-   [Next](xdg-utils.md "xdg-utils-1.2.1"){accesskey="n"}

    xdg-utils-1.2.1

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xarchiver}xarchiver-0.5.4.26 {#xarchiver-0.5.4.26 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to xarchiver {#introduction-to-xarchiver .sect2}

[XArchiver]{.application} is a [GTK+]{.application} archive manager with support for tar, xz, bzip2, gzip, zip, 7z, rar, lzo and many other archive formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[xarchiver]{.application} is only a command line or graphical interface to archiving utilities such as [tar]{.application} and [zip]{.application}.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/ib/xarchiver/archive/0.5.4.26/xarchiver-0.5.4.26.tar.gz](https://github.com/ib/xarchiver/archive/0.5.4.26/xarchiver-0.5.4.26.tar.gz){.ulink}

-   Download MD5 sum: 47e405196a0a9d98d0d356b4dae11701

-   Download size: 1.1 MB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.1 SBU
:::

### xarchiver Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}

#### Optional (Runtime)

[7zip-26.01](../general/7zip.md "7zip-26.01"){.xref}, [cpio-2.15](../general/cpio.md "cpio-2.15"){.xref}, [LZO-2.10](../general/lzo.md "LZO-2.10"){.xref}, [UnRar-7.2.4](../general/unrar.md "UnRar-7.2.4"){.xref}, [Zip-3.0](../general/zip.md "Zip-3.0"){.xref}, and [unzip](https://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/){.ulink}
::::::

::::: {.installation lang="en"}
## Installation of xarchiver {#installation-of-xarchiver .sect2}

BLFS provides [**unzip**]{.command} as a symlink to [**bsdunzip**]{.command} from [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, but it doesn't work for xarchiver. Adapt xarchiver to use [7zip-26.01](../general/7zip.md "7zip-26.01"){.xref} for handling `.zip`{.filename} files by default instead:

``` userinput
sed '/TOGGLE.*prefer_unzip/s/TRUE/FALSE/' -i src/pref_dialog.c
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you've already installed and run this package before (maybe in another distro if your `/home`{.filename} is a partition shared with that distro), it's likely already configured to prefer [**unzip**]{.command}. Unset the [“[Prefer unzip for zip files]{.quote}”]{.quote} checkbox in the [“[Action =\> Preferences]{.quote}”]{.quote} dialog to change the configuration.
:::

Install [xarchiver]{.application} by running the following commands:

``` userinput
./configure  --prefix=/usr               \
             --libexecdir=/usr/lib/xfce4 \
             --docdir=/usr/share/doc/xarchiver-0.5.4.26 &&
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

This package installs icon files into the `/usr/share/icons/hicolor`{.filename} hierarchy and desktop files into the `/usr/share/applications`{.filename} hierarchy. You can improve system performance and memory usage by updating `/usr/share/icons/hicolor/index.theme`{.filename} and `/usr/share/applications/mimeinfo.cache`{.filename}. To perform the update you must have [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} installed (for the icon cache) and [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} (for the desktop cache) and issue the following commands as the `root`{.systemitem} user:

``` userinput
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
:::
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--libexecdir=/usr/lib/xfce4`*: This switch fixes the location for the thunar-archive-plugin, so it will work if [thunar-4.20.8](../xfce/thunar.md "thunar-4.20.8"){.xref} is installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [xarchiver]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/xfce4/thunar-archive-plugin, /usr/share/doc/xarchiver-0.5.4.26, and /usr/share/pixmaps/xarchiver]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------
  []{#xarchiver-prog}[[**xarchiver**]{.command}]{.term}   is a [GTK+]{.application} archive manager
  ------------------------------------------------------- -------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](transmission.md "Transmission-4.1.1"){accesskey="p"}

    Transmission-4.1.1

-   [Next](xdg-utils.md "xdg-utils-1.2.1"){accesskey="n"}

    xdg-utils-1.2.1

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
