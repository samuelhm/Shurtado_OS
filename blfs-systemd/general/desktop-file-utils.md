::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](compface.md "Compface-1.5.2"){accesskey="p"}

    Compface-1.5.2

-   [Next](dos2unix.md "dos2unix-7.5.6"){accesskey="n"}

    dos2unix-7.5.6

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#desktop-file-utils}desktop-file-utils-0.28 {#desktop-file-utils-0.28 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Desktop File Utils {#introduction-to-desktop-file-utils .sect2}

The [Desktop File Utils]{.application} package contains command line utilities for working with [Desktop entries](https://standards.freedesktop.org/desktop-entry-spec/latest/){.ulink}. These utilities are used by Desktop Environments and other applications to manipulate the MIME-types application databases and help adhere to the Desktop Entry Specification.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.28.tar.xz](https://www.freedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.28.tar.xz){.ulink}

-   Download MD5 sum: dec5d7265c802db1fde3980356931b7b

-   Download size: 80 KB

-   Estimated disk space required: 1.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### Desktop File Utils Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}

#### Optional

[Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of Desktop File Utils {#installation-of-desktop-file-utils .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If you are upgrading from a previous version of desktop-file-utils that used the Autotools method of installing and configuring the package, you must remove the desktop-file-edit symlink by using the following commands.
:::

``` root
rm -fv /usr/bin/desktop-file-edit
```

Install [Desktop File Utils]{.application} by running the following commands:

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
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

:::: {.configuration lang="en"}
## Configuring Desktop File Utils {#configuring-desktop-file-utils .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The [XDG Base Directory](https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.md){.ulink} specification defines the standard locations for applications to place data and configuration files. These files can be used, for instance, to define the menu structure and menu items in a desktop environment.

The default location for configuration files to be installed is `/etc/xdg`{.filename}, and the default locations for data files are `/usr/local/share`{.filename} and `/usr/share`{.filename}. These locations can be extended with the environment variables `XDG_CONFIG_DIRS`{.envar} and `XDG_DATA_DIRS`{.envar}, respectively. The [GNOME]{.application}, [KDE]{.application} and [XFCE]{.application} environments respect these settings.

When a package installs a `.desktop`{.filename} file to a location in one of the base data directories, the database that maps MIME-types to available applications can be updated. For instance, the cache file at `/usr/share/applications/mimeinfo.cache`{.filename} can be rebuilt by executing the following command as the `root`{.systemitem} user:

``` root
install -vdm755 /usr/share/applications &&
update-desktop-database /usr/share/applications
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [desktop-file-edit, desktop-file-install, desktop-file-validate and update-desktop-database]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------
  []{#desktop-file-edit}[[**desktop-file-edit**]{.command}]{.term}               is used to modify an existing desktop file entry
  []{#desktop-file-install}[[**desktop-file-install**]{.command}]{.term}         is used to install a new desktop file entry. It is also used to rebuild or modify the MIME-types application database
  []{#desktop-file-validate}[[**desktop-file-validate**]{.command}]{.term}       is used to verify the integrity of a desktop file
  []{#update-desktop-database}[[**update-desktop-database**]{.command}]{.term}   is used to update the MIME-types application database
  ------------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](compface.md "Compface-1.5.2"){accesskey="p"}

    Compface-1.5.2

-   [Next](dos2unix.md "dos2unix-7.5.6"){accesskey="n"}

    dos2unix-7.5.6

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
