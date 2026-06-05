::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtk4.md "GTK-4.22.4"){accesskey="p"}

    GTK-4.22.4

-   [Next](gtkmm4.md "Gtkmm-4.22.0"){accesskey="n"}

    Gtkmm-4.22.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtkmm3}Gtkmm-3.24.10 {#gtkmm-3.24.10 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gtkmm {#introduction-to-gtkmm .sect2}

The [Gtkmm]{.application} package provides a C++ interface to [GTK+ 3]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gtkmm/3.24/gtkmm-3.24.10.tar.xz](https://download.gnome.org/sources/gtkmm/3.24/gtkmm-3.24.10.tar.xz){.ulink}

-   Download MD5 sum: 164231e1ad76b84e0b7a98f9476e244f

-   Download size: 13 MB

-   Estimated disk space required: 213 MB (with tests)

-   Estimated build time: 0.7 SBU (Using parallelism=4; with tests)
:::

### Gtkmm Dependencies

#### Required

[Atkmm-2.28.5](atkmm.md "Atkmm-2.28.5"){.xref}, [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}, and [Pangomm-2.46.4](pangomm.md "Pangomm-2.46.4"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Gtkmm {#installation-of-gtkmm .sect2}

Install [Gtkmm]{.application} by running the following commands:

``` userinput
mkdir gtkmm3-build &&
cd    gtkmm3-build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. Note that you must be in a graphical environment, as the tests try to open some windows.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If you have built the documentation (see Command Explanations below) it was installed to `/usr/share/doc/gtkmm-3.0`{.filename}. For consistency, move it to a versioned directory as the `root`{.systemitem} user:

``` userinput
mv -v /usr/share/doc/gtkmm-3.0 /usr/share/doc/gtkmm-3.24.10
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
**Installed Libraries:** [libgdkmm-3.0.so and libgtkmm-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gdkmm-3.0, /usr/include/gtkmm-3.0, /usr/lib/gdkmm-3.0, /usr/lib/gtkmm-3.0, and optionally /usr/share/{devhelp/books/gtkmm-3.0,doc/gtkmm-3.24.10}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------
  []{#libgdkmm-3}[`libgdkmm-3.0.so`{.filename}]{.term}   contains the GDK API classes
  []{#libgtkmm-3}[`libgtkmm-3.0.so`{.filename}]{.term}   contains the [GTK+ 3]{.application} API classes
  ------------------------------------------------------ -------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gtk4.md "GTK-4.22.4"){accesskey="p"}

    GTK-4.22.4

-   [Next](gtkmm4.md "Gtkmm-4.22.0"){accesskey="n"}

    Gtkmm-4.22.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
