::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libsecret.md "libsecret-0.21.7"){accesskey="p"}

    libsecret-0.21.7

-   [Next](totem-pl-parser.md "totem-pl-parser-3.26.7"){accesskey="n"}

    totem-pl-parser-3.26.7

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#librest}librest-0.10.2 {#librest-0.10.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to librest {#introduction-to-librest .sect2}

The [librest]{.application} package contains a library that is designed to make it easier to access web services that claim to be "RESTful". It includes convenience wrappers for libsoup and libxml to make remote usage of the RESTful API easier.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/librest/0.10/librest-0.10.2.tar.xz](https://download.gnome.org/sources/librest/0.10/librest-0.10.2.tar.xz){.ulink}

-   Download MD5 sum: 32b0ecf86932cd45b4e7078690c8306f

-   Download size: 72 KB

-   Estimated disk space required: 4.0 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### librest Dependencies

#### Required

[JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}, [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}, and [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref} and [gtksourceview5-5.20.0](../x/gtksourceview5.md "gtksourceview5-5.20.0"){.xref} (to build the demo), and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of librest {#installation-of-librest .sect2}

Install [librest]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D examples=false   \
            -D gtk_doc=false    \
            ..                  &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "/output/s/librest-1.0/librest-0.10.2/" -i ../docs/meson.build &&
meson configure -D gtk_doc=true                                    &&
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

*`-D gtk_doc=false`*: Allow building this package without [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed. If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to rebuild and install the API documentation, a [**meson configure**]{.command} command will reset this option.

*`-D examples=false`*: Remove this option if [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref} and [gtksourceview5-5.20.0](../x/gtksourceview5.md "gtksourceview5-5.20.0"){.xref} are installed and you wish to build the demonstration application provided by this package.

`-D vapi=true`{.option}: Use this switch if [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref} is installed and you wish to build the Vala bindings provided by this package.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [librest-demo (optional)]{.segbody}
:::

::: seg
**Installed Libraries:** [librest-1.0.so and librest-extras-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/rest-1.0 and /usr/share/gtk-doc/html/librest-0.10.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- -----------------------------------------------------------------------
  []{#librest-demo}[[**librest-demo**]{.command}]{.term}               provides an example of how to use the RESTful Web API Query functions
  []{#librest-1.0}[`librest-1.0.so`{.filename}]{.term}                 contains the RESTful Web API Query functions
  []{#librest-extras-1.0}[`librest-extras-1.0.so`{.filename}]{.term}   contains extra RESTful Web API Query functions
  -------------------------------------------------------------------- -----------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libsecret.md "libsecret-0.21.7"){accesskey="p"}

    libsecret-0.21.7

-   [Next](totem-pl-parser.md "totem-pl-parser-3.26.7"){accesskey="n"}

    totem-pl-parser-3.26.7

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
