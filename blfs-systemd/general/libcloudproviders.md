::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libclc.md "libclc-22.1.0"){accesskey="p"}

    libclc-22.1.0

-   [Next](libdaemon.md "libdaemon-0.14"){accesskey="n"}

    libdaemon-0.14

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libcloudproviders}libcloudproviders-0.3.6 {#libcloudproviders-0.3.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libcloudproviders {#introduction-to-libcloudproviders .sect2}

The [libcloudproviders]{.application} package contains a library which provides a DBus API that allows cloud storage sync clients to expose their services.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libcloudproviders/0.3/libcloudproviders-0.3.6.tar.xz](https://download.gnome.org/sources/libcloudproviders/0.3/libcloudproviders-0.3.6.tar.xz){.ulink}

-   Download MD5 sum: f0f994bdc36fdfe9b31e3655b8071599

-   Download size: 24 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### libcloudproviders Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libcloudproviders {#installation-of-libcloudproviders .sect2}

Install [libcloudproviders]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D enable-gtk-doc`{.option}: Use this switch if you have [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} installed and wish to generate the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libcloudproviders.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/cloudproviders]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
  []{#libcloudproviders-lib}[`libcloudproviders.so`{.filename}]{.term}   contains functions that provide a DBus API to allow cloud storage sync clients to expose their services
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libclc.md "libclc-22.1.0"){accesskey="p"}

    libclc-22.1.0

-   [Next](libdaemon.md "libdaemon-0.14"){accesskey="n"}

    libdaemon-0.14

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
