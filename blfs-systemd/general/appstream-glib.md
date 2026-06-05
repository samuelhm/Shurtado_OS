::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](appstream.md "AppStream-1.1.2"){accesskey="p"}

    AppStream-1.1.2

-   [Next](apr.md "Apr-1.7.6"){accesskey="n"}

    Apr-1.7.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#appstream-glib}appstream-glib-0.8.3 {#appstream-glib-0.8.3 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to appstream-glib {#introduction-to-appstream-glib .sect2}

The [appstream-glib]{.application} provides GObjects and helper methods to make it easy to read and write AppStream metadata. It also provides a simple DOM (Document Object Model) implementation that makes it easy to edit nodes and convert to and from the standardized XML representation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://people.freedesktop.org/\~hughsient/appstream-glib/releases/appstream-glib-0.8.3.tar.xz](http://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.8.3.tar.xz){.ulink}

-   Download MD5 sum: 2ffd46eff1c16f31e435849b706c2287

-   Download size: 2.2 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### appstream-glib Dependencies

#### Required

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [JSON-GLib-1.10.8](json-glib.md "JSON-GLib-1.10.8"){.xref}, [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref}, and [libyaml-0.2.5](libyaml.md "libyaml-0.2.5"){.xref}

#### Optional

[docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}
:::::

::: {.installation lang="en"}
## Installation of appstream-glib {#installation-of-appstream-glib .sect2}

Install [appstream-glib]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D rpm=false        &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [appstream-builder, appstream-compose, and appstream-util]{.segbody}
:::

::: seg
**Installed Libraries:** [libappstream-glib.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libappstream-glib, /usr/lib/asb-plugins-5, and /usr/share/installed-tests/appstream-glib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ --------------------------------------------
  []{#appstream-builder}[[**appstream-builder**]{.command}]{.term}   builds AppStream metadata
  []{#appdata-compose}[[**appdata-compose**]{.command}]{.term}       generates AppStream metadata
  []{#appstream-util}[[**appstream-util**]{.command}]{.term}         Is a management tool for appstream-builder
  []{#libappstream-glib}[`libappstream-glib.so`{.filename}]{.term}   contains the API functions
  ------------------------------------------------------------------ --------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](appstream.md "AppStream-1.1.2"){accesskey="p"}

    AppStream-1.1.2

-   [Next](apr.md "Apr-1.7.6"){accesskey="n"}

    Apr-1.7.6

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
