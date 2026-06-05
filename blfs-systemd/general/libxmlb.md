::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libxml2.md "libxml2-2.15.3"){accesskey="p"}

    libxml2-2.15.3

-   [Next](libxslt.md "libxslt-1.1.45"){accesskey="n"}

    libxslt-1.1.45

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxmlb}libxmlb-0.3.27 {#libxmlb-0.3.27 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libxmlb {#introduction-to-libxmlb .sect2}

The [libxmlb]{.application} package contains a library and a tool which help create and query binary XML blobs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/hughsie/libxmlb/releases/download/0.3.27/libxmlb-0.3.27.tar.xz](https://github.com/hughsie/libxmlb/releases/download/0.3.27/libxmlb-0.3.27.tar.xz){.ulink}

-   Download MD5 sum: b0c73036693fed07383022a67264b5eb

-   Download size: 108 KB

-   Estimated disk space required: 5.5 MB (with tests)

-   Estimated build time: 0.1 SBU (With tests)
:::

### libxmlb Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended)

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [libstemmer](https://github.com/zvelo/libstemmer){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libxmlb {#installation-of-libxmlb .sect2}

Install [libxmlb]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D gtkdoc=false .. &&
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

*`-D gtkdoc=false`*: This switch disables building the API documentation. Remove it if you have [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} installed and wish to build the API documentation.

`-D introspection=false`{.option}: Use this switch if you have not built [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} with GObject Introspection.

`-D stemmer=true`{.option}: Use this switch if you have [libstemmer](https://github.com/zvelo/libstemmer){.ulink} installed and wish to build stemmer support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xb-tool]{.segbody}
:::

::: seg
**Installed Libraries:** [libxmlb.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libxmlb-2, /usr/libexec/installed-tests/libxmlb, and /usr/share/gtk-doc/html/libxmlb (if gtk-doc was enabled)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------
  []{#xb-tool}[[**xb-tool**]{.command}]{.term}       is a tool used to create, dump, or query a binary XML blob
  []{#libxmlb-lib}[`libxmlb.so`{.filename}]{.term}   contains functions that allow for creating and querying binary XML blobs
  -------------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libxml2.md "libxml2-2.15.3"){accesskey="p"}

    libxml2-2.15.3

-   [Next](libxslt.md "libxslt-1.1.45"){accesskey="n"}

    libxslt-1.1.45

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
