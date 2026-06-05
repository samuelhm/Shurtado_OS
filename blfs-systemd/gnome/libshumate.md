::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libpeas.md "libpeas-1.38.1"){accesskey="p"}

    libpeas-1.38.1

-   [Next](evolution-data-server.md "evolution-data-server-3.60.2"){accesskey="n"}

    evolution-data-server-3.60.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libshumate}libshumate-1.6.1 {#libshumate-1.6.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libshumate {#introduction-to-libshumate .sect2}

The [libshumate]{.application} package contains a GTK-4 widget to display maps.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libshumate/1.6/libshumate-1.6.1.tar.xz](https://download.gnome.org/sources/libshumate/1.6/libshumate-1.6.1.tar.xz){.ulink}

-   Download MD5 sum: 358252b2ff6de445515b1d6175121526

-   Download size: 5.6 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.2 SBU
:::

### libshumate Dependencies

#### Required

[GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}, and [Protobuf-c-1.5.2](../general/protobuf-c.md "Protobuf-c-1.5.2"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) (required for gnome-maps)

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, and [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libshumate {#installation-of-libshumate .sect2}

Install [libshumate]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nodownload \
            -D gtk_doc=false       \
            ..                     &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed -e 's/lib_version/version/' \
    -i ../docs/meson.build      &&
meson configure -D gtk_doc=true &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nodownload`*: This switch prevents [**meson**]{.command} from downloading any optional dependency which is not installed on the system.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libshumate-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/shumate-1.0 and /usr/share/doc/libshumate-1.6.1 (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ----------------------------------------------------------------
  []{#libshumate-1.0}[`libshumate-1.0.so`{.filename}]{.term}   contains functions that provide a GTK-4 widget to display maps
  ------------------------------------------------------------ ----------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libpeas.md "libpeas-1.38.1"){accesskey="p"}

    libpeas-1.38.1

-   [Next](evolution-data-server.md "evolution-data-server-3.60.2"){accesskey="n"}

    evolution-data-server-3.60.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
