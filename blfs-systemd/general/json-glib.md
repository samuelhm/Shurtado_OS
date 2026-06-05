::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](json-c.md "JSON-C-0.18"){accesskey="p"}

    JSON-C-0.18

-   [Next](keyutils.md "keyutils-1.6.3"){accesskey="n"}

    keyutils-1.6.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#json-glib}JSON-GLib-1.10.8 {#json-glib-1.10.8 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to JSON GLib {#introduction-to-json-glib .sect2}

The [JSON GLib]{.application} package is a library providing serialization and deserialization support for the JavaScript Object Notation (JSON) format described by RFC 4627.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/json-glib/1.10/json-glib-1.10.8.tar.xz](https://download.gnome.org/sources/json-glib/1.10/json-glib-1.10.8.tar.xz){.ulink}

-   Download MD5 sum: 95c3d5dd56d4ada808480739889b75bc

-   Download size: 1.2 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### JSON-GLib Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection required if building GNOME)

#### Optional

[docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref} and [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of JSON GLib {#installation-of-json-glib .sect2}

Install [JSON GLib]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

If [docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref} is installed, build the man pages:

``` userinput
meson configure -D man=true &&
ninja
```

If [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} is installed, build the API documentation:

``` userinput
sed "/json_docdir =/s|$| / 'json-glib-1.10.8'|" -i ../doc/meson.build &&
meson configure -D documentation=enabled &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. One test, node, is known to fail.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D gtk_doc=disabled`{.option}: Add this option if you have [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} installed and do not wish to generate the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [json-glib-format and json-glib-validate]{.segbody}
:::

::: seg
**Installed Library:** [libjson-glib-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,libexec,share{,/installed-tests}/json-glib-1.0} and /usr/share/gtk-doc/html/json-glib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ----------------------------------------------------------
  []{#json-glib-format}[[**json-glib-format**]{.command}]{.term}       is a simple command line interface to format JSON data
  []{#json-glib-validate}[[**json-glib-validate**]{.command}]{.term}   is a simple command line interface to validate JSON data
  []{#libjson-glib-1}[`libjson-glib-1.0.so`{.filename}]{.term}         contains the [JSON GLib]{.application} API functions
  -------------------------------------------------------------------- ----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](json-c.md "JSON-C-0.18"){accesskey="p"}

    JSON-C-0.18

-   [Next](keyutils.md "keyutils-1.6.3"){accesskey="n"}

    keyutils-1.6.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
