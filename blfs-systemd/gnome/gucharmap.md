::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-weather.md "gnome-weather-48.0"){accesskey="p"}

    gnome-weather-48.0

-   [Next](loupe.md "Loupe-49.2"){accesskey="n"}

    Loupe-49.2

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gucharmap}Gucharmap-17.0.2 {#gucharmap-17.0.2 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Gucharmap {#introduction-to-gucharmap .sect2}

[Gucharmap]{.application} is a Unicode character map and font viewer. It allows you to browse through all the available Unicode characters and categories for the installed fonts, and to examine their detailed properties. It is an easy way to find the character you might only know by its Unicode name or code point.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.gnome.org/GNOME/gucharmap/-/archive/17.0.2/gucharmap-17.0.2.tar.bz2](https://gitlab.gnome.org/GNOME/gucharmap/-/archive/17.0.2/gucharmap-17.0.2.tar.bz2){.ulink}

-   Download MD5 sum: eb7a254cebe0650f41281a270846afb5

-   Download size: 1.4 MB

-   Estimated disk space required: 80 MB

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Unicode Character Database: [https://www.unicode.org/Public/17.0.0/ucd/UCD.zip](https://www.unicode.org/Public/17.0.0/ucd/UCD.zip){.ulink}

-   CJK Unified Ideographs: [https://www.unicode.org/Public/17.0.0/ucd/Unihan.zip](https://www.unicode.org/Public/17.0.0/ucd/Unihan.zip){.ulink}
:::

### Gucharmap Dependencies

#### Required

[desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [gsettings-desktop-schemas-50.1](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, and [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[appstream-glib-0.8.3](../general/appstream-glib.md "appstream-glib-0.8.3"){.xref} and [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
::::::

:::: {.installation lang="en"}
## Installation of Gucharmap {#installation-of-gucharmap .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package uses two unversioned downloads. You may want to rename these to a versioned name, e.g. `UCD-17.zip`{.filename} to make upgrades easier.
:::

Install [Gucharmap]{.application} by running the following commands:

``` userinput
mkdir build                   &&
cd    build                   &&
mkdir ucd                     &&
pushd ucd                     &&
  unzip ../../../UCD.zip      &&
  cp -v ../../../Unihan.zip . &&
popd                          &&

meson setup --prefix=/usr       \
            --strip             \
            --buildtype=release \
            -D ucd_path=./ucd   \
            -D docs=false       \
            ..                  &&
ninja
```

This package does not have a test suite.

Now, as the `root`{.systemitem} user:

``` root
rm  -fv /usr/share/glib-2.0/schemas/org.gnome.Charmap.enums.xml &&
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--strip`*: Although the package defaults to a release build without debug information, without this switch there will be some debug information in the binaries.

*`-D ucd_path=./ucd`*: This points to where the extracted main Unicode data files, and the zipped Unihan archive can be found.

[**rm -fv /usr/share/glib-2.0/schemas/org.gnome.Charmap.enums.xml**]{.command}: Old versions of this package installed an obsolete file that prevents the program from running, as if the main schema has not been installed. Forcibly removing works even if the old file is not present.

*`-D docs=false`*: This allows the package to build even if [gtk-doc]{.application} has not been installed. Remove this if you have installed that and wish to build the documentation.

`-D gir=false`{.option}: Use this if you have not installed [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection).

`-D vapi=false`{.option}: Use this if you have not installed [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gucharmap]{.segbody}
:::

::: seg
**Installed Library:** [libgucharmap_2_90.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gucharmap-2.90]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------
  []{#gucharmap-prog}[[**gucharmap**]{.command}]{.term}              is a Unicode character map and font viewer
  []{#libgucharmap_2_90}[`libgucharmap_2_90.so`{.filename}]{.term}   contains the [Gucharmap]{.application} API functions
  ------------------------------------------------------------------ ------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](gnome-weather.md "gnome-weather-48.0"){accesskey="p"}

    gnome-weather-48.0

-   [Next](loupe.md "Loupe-49.2"){accesskey="n"}

    Loupe-49.2

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
