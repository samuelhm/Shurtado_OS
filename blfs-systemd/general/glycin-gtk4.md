::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](glycin.md "glycin-2.1.1"){accesskey="p"}

    glycin-2.1.1

-   [Next](graphite2.md "Graphite2-1.3.14"){accesskey="n"}

    Graphite2-1.3.14

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glycin-gtk4}libglycin-gtk4 from glycin-2.1.1 {#libglycin-gtk4-from-glycin-2.1.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libglycin-gtk4 {#introduction-to-libglycin-gtk4 .sect2}

The `libglycin-gtk4`{.systemitem} library provides GTK-4 integration for [glycin-2.1.1](glycin.md "glycin-2.1.1"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/glycin/2.1/glycin-2.1.1.tar.xz](https://download.gnome.org/sources/glycin/2.1/glycin-2.1.1.tar.xz){.ulink}

-   Download MD5 sum: 411550c5da777a952bb6c811fd882156

-   Download size: 6.8 MB

-   Estimated disk space required: 670 MB (with documentation)

-   Estimated build time: 2.0 SBU (with documentation)
:::

### glycin Dependencies

#### Required

[glycin-2.1.1](glycin.md "glycin-2.1.1"){.xref} and [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}

#### Recommended

[Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::
::::::

::: {.installation lang="en"}
## Installation of libglycin-gtk4 {#installation-of-libglycin-gtk4 .sect2}

Install `libglycin-gtk4`{.systemitem} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr               \
            --buildtype=release         \
            -D libglycin=false          \
            -D libglycin-gtk4=true      \
            -D glycin-loaders=false     \
            -D glycin-thumbnailer=false &&
ninja
```

If you have installed [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, you can build the documentation by issuing:

``` userinput
sed "/install_dir:.*doc/s|,$| / 'glycin-' + meson.project_version()&|" \
    -i ../libglycin/meson.build &&

meson configure -D capi_docs=true &&
ninja
```

This package does not come with a test suite.

Now as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D *=false`*: These parameters disable the components already installed as a part of [glycin-2.1.1](glycin.md "glycin-2.1.1"){.xref}.

`-D vapi=false`{.option}: This option allows building this package without [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref} installed.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed Library:** [libglycin-gtk4-2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/glycin-gtk4-2 and /usr/share/doc/glycin-2.1.1/libglycin-gtk-2]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------------------------------------
  []{#libglycin-gtk4-2}[`libglycin-gtk4-2.so`{.filename}]{.term}   provides API functions to convert glycin frames to GDK 4 textures
  ---------------------------------------------------------------- -------------------------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](glycin.md "glycin-2.1.1"){accesskey="p"}

    glycin-2.1.1

-   [Next](graphite2.md "Graphite2-1.3.14"){accesskey="n"}

    Graphite2-1.3.14

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
