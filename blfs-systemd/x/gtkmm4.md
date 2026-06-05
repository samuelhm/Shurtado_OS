::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtkmm3.md "Gtkmm-3.24.10"){accesskey="p"}

    Gtkmm-3.24.10

-   [Next](gtk-vnc.md "gtk-vnc-1.5.0"){accesskey="n"}

    gtk-vnc-1.5.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtkmm4}Gtkmm-4.22.0 {#gtkmm-4.22.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gtkmm {#introduction-to-gtkmm .sect2}

The [Gtkmm]{.application} package provides a C++ interface to [GTK-4]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gtkmm/4.22/gtkmm-4.22.0.tar.xz](https://download.gnome.org/sources/gtkmm/4.22/gtkmm-4.22.0.tar.xz){.ulink}

-   Download MD5 sum: a1c76be0b7cd6156b269832e6a0bc660

-   Download size: 17 MB

-   Estimated disk space required: 217 MB (with tests)

-   Estimated build time: 0.8 SBU (With tests; both using parallelism=4)
:::

### Gtkmm Dependencies

#### Required

[GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref} and [Pangomm-2.56.1](pangomm2.md "Pangomm-2.56.1"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [Vulkan-Loader-1.4.350.0](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Gtkmm {#installation-of-gtkmm .sect2}

Install [Gtkmm]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. Note that you must be in a graphical environment, as the tests try to open some windows.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If you have built the documentation (see Command Explanations below) it was installed to `/usr/share/doc/gtkmm-4.0`{.filename}. For consistency, move it to a versioned directory as the `root`{.systemitem} user:

``` userinput
mv -v /usr/share/doc/gtkmm-4.0 /usr/share/doc/gtkmm-4.22.0
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D build-documentation=true`{.option}: If you have installed [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} this define will build and install the documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgdkmm-4.0.so and libgtkmm-4.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gdkmm-4.0, /usr/include/gtkmm-4.0, /usr/lib/gdkmm-4.0, /usr/lib/gtkmm-4.0, and optionally /usr/share/{devhelp/books/gtkmm-4.0,doc/gtkmm-4.22.0}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------
  []{#libgdkmm-4}[`libgdkmm-4.0.so`{.filename}]{.term}   contains the GDK API classes
  []{#libgtkmm-4}[`libgtkmm-4.0.so`{.filename}]{.term}   contains the [GTK 4]{.application} API classes
  ------------------------------------------------------ ------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gtkmm3.md "Gtkmm-3.24.10"){accesskey="p"}

    Gtkmm-3.24.10

-   [Next](gtk-vnc.md "gtk-vnc-1.5.0"){accesskey="n"}

    gtk-vnc-1.5.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
