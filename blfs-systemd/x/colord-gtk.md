::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](cairomm-1.16.md "libcairomm-1.16 (cairomm-1.18.0)"){accesskey="p"}

    libcairomm-1.16 (cairomm-1.18.0)

-   [Next](fltk.md "FLTK-1.4.5"){accesskey="n"}

    FLTK-1.4.5

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#colord-gtk}colord-gtk-0.3.1 {#colord-gtk-0.3.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Colord GTK {#introduction-to-colord-gtk .sect2}

The [Colord GTK]{.application} package contains [GTK+]{.application} bindings for [Colord]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.freedesktop.org/software/colord/releases/colord-gtk-0.3.1.tar.xz](https://www.freedesktop.org/software/colord/releases/colord-gtk-0.3.1.tar.xz){.ulink}

-   Download MD5 sum: d436740c06e42af421384f16b2a9a0a7

-   Download size: 24 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### Colord GTK Dependencies

#### Required

[colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref} and [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[docbook-xml-5.0](../pst/docbook5.md "docbook-xml-5.0"){.xref}, [docbook-xsl-ns-1.79.2](../pst/docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} (to build the man page), and [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of Colord GTK {#installation-of-colord-gtk .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If building the documentation [**ninja -j1**]{.command} must be used.
:::

Install [Colord GTK]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk4=true        \
            -D vapi=true        \
            -D docs=false       \
            -D man=false        \
            ..                  &&
ninja
```

If [docbook-xml-5.0](../pst/docbook5.md "docbook-xml-5.0"){.xref}, [docbook-xsl-ns-1.79.2](../pst/docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){.xref}, and [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} are installed, build the man page:

``` userinput
sed '/class="manual"/i \
     <refmiscinfo class="source">colord-gtk</refmiscinfo>' \
    -i ../man/*.xml &&
meson configure -D man=true &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests need to be run from an X session, and may require a color profile for your primary display.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D vapi=true`*: This switch enables building of the Vala bindings. Remove this switch if you don't have [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref} installed.

*`-D gtk4=true`*: This switch enables building the GTK-4 bindings for colord. Set this option to 'false' if you do not have [GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref} installed.

*`-D docs=false`*: This switch disables building gtk-doc based documentation. Even if gtk-doc is installed, you will need the namespaced versions of the Docbook XSL stylesheets.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cd-convert]{.segbody}
:::

::: seg
**Installed Libraries:** [libcolord-gtk.so and libcolord-gtk4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/colord-1/colord-gtk and /usr/share/gtk-doc/html/colord-gtk]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------
  []{#cd-convert}[[**cd-convert**]{.command}]{.term}           is a Color Manager Testing Tool
  []{#libcolord-gtk}[`libcolord-gtk.so`{.filename}]{.term}     contains the [Colord]{.application} [GTK+]{.application} bindings
  []{#libcolord-gtk4}[`libcolord-gtk4.so`{.filename}]{.term}   contains the [Colord]{.application} [GTK-4]{.application} bindings
  ------------------------------------------------------------ --------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](cairomm-1.16.md "libcairomm-1.16 (cairomm-1.18.0)"){accesskey="p"}

    libcairomm-1.16 (cairomm-1.18.0)

-   [Next](fltk.md "FLTK-1.4.5"){accesskey="n"}

    FLTK-1.4.5

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
