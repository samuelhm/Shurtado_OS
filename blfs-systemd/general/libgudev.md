::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgsf.md "libgsf-1.14.58"){accesskey="p"}

    libgsf-1.14.58

-   [Next](libgusb.md "libgusb-0.4.9"){accesskey="n"}

    libgusb-0.4.9

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgudev}libgudev-238 {#libgudev-238 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libgudev {#introduction-to-libgudev .sect2}

The [libgudev]{.application} package contains GObject bindings for libudev.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libgudev/238/libgudev-238.tar.xz](https://download.gnome.org/sources/libgudev/238/libgudev-238.tar.xz){.ulink}

-   Download MD5 sum: 46da30a1c69101c3a13fa660d9ab7b73

-   Download size: 32 KB

-   Estimated disk space required: 2.0 MB

-   Estimated build time: less than 0.1 SBU
:::

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection required for GNOME)

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [umockdev-0.19.7](umockdev.md "Umockdev-0.19.7"){.xref} (for testing)
:::::

::: {.installation lang="en"}
## Installation of libgudev {#installation-of-libgudev .sect2}

Install [libgudev]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. One test, `libgudev:test-gudevdevice`{.filename}, is known to fail with systemd-259.4 and later.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D gtk_doc=true`{.option}: Use this option if GTK-Doc is installed and you wish to build and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgudev-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gudev-1.0 and /usr/share/gtk-doc/html/gudev]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------
  []{#libgudev-1.0}[`libgudev-1.0.so`{.filename}]{.term}   is a GObject-based wrapper library for libudev
  -------------------------------------------------------- ------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libgsf.md "libgsf-1.14.58"){accesskey="p"}

    libgsf-1.14.58

-   [Next](libgusb.md "libgusb-0.4.9"){accesskey="n"}

    libgusb-0.4.9

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
