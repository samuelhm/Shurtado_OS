::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gvfs.md "Gvfs-1.60.0"){accesskey="p"}

    Gvfs-1.60.0

-   [Next](nautilus.md "Nautilus-50.2.2"){accesskey="n"}

    Nautilus-50.2.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gexiv2}gexiv2-0.16.0 {#gexiv2-0.16.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gexiv2 {#introduction-to-gexiv2 .sect2}

gexiv2 is a GObject-based wrapper around the Exiv2 library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gexiv2/0.16/gexiv2-0.16.0.tar.xz](https://download.gnome.org/sources/gexiv2/0.16/gexiv2-0.16.0.tar.xz){.ulink}

-   Download MD5 sum: 0cb9fbd499f4aca2f976948395b465ee

-   Download size: 424 KB

-   Estimated disk space required: 5.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests; both with parallelism=4)
:::

### gexiv2 Dependencies

#### Required

[Exiv2-0.28.8](../general/exiv2.md "Exiv2-0.28.8"){.xref}

#### Recommended

[Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} (for documentation)
:::::

::: {.installation lang="en"}
## Installation of gexiv2 {#installation-of-gexiv2 .sect2}

Install [gexiv2]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, run:

``` userinput
meson configure -D tests=true &&
ninja test
```

As the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgexiv2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gexiv2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------
  []{#libgexiv2}[`libgexiv2.so`{.filename}]{.term}   provides a wrapper around the Exiv2 library
  -------------------------------------------------- ---------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gvfs.md "Gvfs-1.60.0"){accesskey="p"}

    Gvfs-1.60.0

-   [Next](nautilus.md "Nautilus-50.2.2"){accesskey="n"}

    Nautilus-50.2.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
