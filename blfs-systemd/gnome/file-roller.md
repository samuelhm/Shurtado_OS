::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](evolution.md "Evolution-3.60.2"){accesskey="p"}

    Evolution-3.60.2

-   [Next](gnome-calculator.md "gnome-calculator-50.0"){accesskey="n"}

    gnome-calculator-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#file-roller}File-Roller-44.6 {#file-roller-44.6 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to File Roller {#introduction-to-file-roller .sect2}

[File Roller]{.application} is an archive manager for [GNOME]{.application} with support for tar, bzip2, bzip3, gzip, zip, jar, compress, lzop, zstd, dmg, and many other archive formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[File Roller]{.application} is only a graphical interface to archiving utilities such as [tar]{.application} and [zip]{.application}.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/file-roller/44/file-roller-44.6.tar.xz](https://download.gnome.org/sources/file-roller/44/file-roller-44.6.tar.xz){.ulink}

-   Download MD5 sum: 74cec9801d26a64a856d2d82b19d9d7c

-   Download size: 1.0 MB

-   Estimated disk space required: 21 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
:::

### File Roller Dependencies

#### Required

[GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} and [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}

#### Recommended

[cpio-2.15](../general/cpio.md "cpio-2.15"){.xref}, [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}, [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libportal-0.9.1](../general/libportal.md "libportal-0.9.1"){.xref}, and [Nautilus-50.2.2](nautilus.md "Nautilus-50.2.2"){.xref}

#### Optional (for the API documentation)

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}

#### Optional (Runtime)

[UnRar-7.2.4](../general/unrar.md "UnRar-7.2.4"){.xref}, [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [Zip-3.0](../general/zip.md "Zip-3.0"){.xref}, and [unarchiver](https://github.com/MacPaw/XADMaster){.ulink}
::::::

::::: {.installation lang="en"}
## Installation of File Roller {#installation-of-file-roller .sect2}

Install [File Roller]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D packagekit=false \
            ..                  &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
chmod -v 0755 /usr/libexec/file-roller/isoinfo.sh
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a [“[DESTDIR]{.quote}”]{.quote} method, `/usr/share/glib-2.0/schemas/gschemas.compiled`{.filename} was not updated/created. Create (or update) the file using the following command as the `root`{.systemitem} user:

``` root
glib-compile-schemas /usr/share/glib-2.0/schemas
```
:::

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

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D packagekit=false`*: This switch disables the use of PackageKit which isn't suitable for BLFS.

`-D api_docs=enabled`{.option}: Use this switch if you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to generate the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [file-roller]{.segbody}
:::

::: seg
**Installed Libraries:** [libnautilus-fileroller.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{libexec,share{,/help/\*}}/file-roller]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- -------------------------------------------------
  []{#file-roller-prog}[[**file-roller**]{.command}]{.term}   is an archive manager for [GNOME]{.application}
  ----------------------------------------------------------- -------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](evolution.md "Evolution-3.60.2"){accesskey="p"}

    Evolution-3.60.2

-   [Next](gnome-calculator.md "gnome-calculator-50.0"){accesskey="n"}

    gnome-calculator-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
