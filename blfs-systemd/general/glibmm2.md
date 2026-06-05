::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](glibmm.md "GLibmm-2.66.8"){accesskey="p"}

    GLibmm-2.66.8

-   [Next](gmime3.md "GMime-3.2.15"){accesskey="n"}

    GMime-3.2.15

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glibmm2}GLibmm-2.88.0 {#glibmm-2.88.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GLibmm {#introduction-to-glibmm .sect2}

The [GLibmm]{.application} package is a set of C++ bindings for [GLib]{.application}. This version is part of a new API for supporting gtkmm-4.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/glibmm/2.88/glibmm-2.88.0.tar.xz](https://download.gnome.org/sources/glibmm/2.88/glibmm-2.88.0.tar.xz){.ulink}

-   Download MD5 sum: 1076c94afa8c4965b959289a8e225a3d

-   Download size: 9.1 MB

-   Estimated disk space required: 95 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; with tests)
:::

### GLibmm Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} and [libsigc++-3.6.0](libsigc3.md "libsigc++-3.6.0"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [glib-networking-2.80.1](../basicnet/glib-networking.md "glib-networking-2.80.1"){.xref} (for tests), [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref} (for tests), [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}, and [mm-common](https://download.gnome.org/sources/mm-common){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GLibmm {#installation-of-glibmm .sect2}

Install [GLibmm]{.application} by running the following commands:

``` userinput
mkdir bld &&
cd    bld &&

meson setup --prefix=/usr --buildtype=release .. &&
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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgiomm-2.68.so, libglibmm-2.68.so, and libglibmm_generate_extra_defs-2.68.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/g{io,lib}mm-2.68 and /usr/include/g{io,lib}mm-2.68]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------
  []{#libgiomm-2.68}[`libgiomm-2.68.so`{.filename}]{.term}     contains the GIO API classes
  []{#libglibmm-2.68}[`libglibmm-2.68.so`{.filename}]{.term}   contains the [GLib]{.application} API classes
  ------------------------------------------------------------ -----------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](glibmm.md "GLibmm-2.66.8"){accesskey="p"}

    GLibmm-2.66.8

-   [Next](gmime3.md "GMime-3.2.15"){accesskey="n"}

    GMime-3.2.15

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
