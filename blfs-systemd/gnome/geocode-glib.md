::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](yelp-xsl.md "yelp-xsl-49.0"){accesskey="p"}

    yelp-xsl-49.0

-   [Next](gjs.md "Gjs-1.88.0"){accesskey="n"}

    Gjs-1.88.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#geocode-glib}geocode-glib-3.26.4 {#geocode-glib-3.26.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Geocode GLib {#introduction-to-geocode-glib .sect2}

The [Geocode GLib]{.application} is a convenience library for the Yahoo! Place Finder APIs. The Place Finder web service allows you to do geocoding (finding longitude and latitude from an address), as well as reverse geocoding (finding an address from coordinates).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/geocode-glib/3.26/geocode-glib-3.26.4.tar.xz](https://download.gnome.org/sources/geocode-glib/3.26/geocode-glib-3.26.4.tar.xz){.ulink}

-   Download MD5 sum: 4c0dcdb7ee1222435b20acd3d7b68cd1

-   Download size: 76 KB

-   Estimated disk space required: 4.6 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### Geocode GLib Dependencies

#### Required

[JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref} and [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Geocode GLib {#installation-of-geocode-glib .sect2}

Install [Geocode GLib]{.application} by running the following commands:

``` userinput
mkdir build                   &&
cd    build                   &&

meson setup --prefix=/usr           \
            --buildtype=release     \
            -D enable-gtk-doc=false \
            -D soup2=false          \
            ..                      &&
ninja
```

To test the results, issue: [**LANG=C ninja test**]{.command}. One test fails because it needs the `sv_SE.utf8`{.literal} locale, which is not installed by default in LFS.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D enable-gtk-doc=false`*: Allow this package to be built without [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}. Remove this parameter if [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} is installed and you wish to rebuild and install the API documentation.

*`-D soup2=false`*: This switch forces this package to use libsoup-3 for HTTP requests instead of libsoup-2. The packages in BLFS that use geocode-glib now expect libsoup-3 to be used.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgeocode-glib-2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/geocode-glib-2.0, /usr/libexec/installed-tests/geocode-glib, /usr/share/icons/gnome/scalable/places, and /usr/share/gtk-doc/html/geocode-glib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------
  []{#libgeocode-glib-2}[`libgeocode-glib-2.so`{.filename}]{.term}   contains the [Geocode GLib]{.application} API functions
  ------------------------------------------------------------------ ---------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](yelp-xsl.md "yelp-xsl-49.0"){accesskey="p"}

    yelp-xsl-49.0

-   [Next](gjs.md "Gjs-1.88.0"){accesskey="n"}

    Gjs-1.88.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
