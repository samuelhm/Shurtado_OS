::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](gsl.md "gsl-2.8"){accesskey="p"}

    gsl-2.8

-   [Next](highway.md "highway-1.4.0"){accesskey="n"}

    highway-1.4.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gspell}gspell-1.14.3 {#gspell-1.14.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gspell {#introduction-to-gspell .sect2}

The [gspell]{.application} package provides a flexible API to add spell checking to a GTK+ application.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gspell/1.14/gspell-1.14.3.tar.xz](https://download.gnome.org/sources/gspell/1.14/gspell-1.14.3.tar.xz){.ulink}

-   Download MD5 sum: f8d254f9865d23d7ab68bf94985a05e6

-   Download size: 120 KB

-   Estimated disk space required: 5.8 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### gspell Dependencies

#### Required

[enchant-2.8.16](enchant.md "enchant-2.8.16"){.xref}, [ICU-78.3](icu.md "icu-78.3"){.xref}, and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}

#### Optional

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}, [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, and [Hunspell](https://hunspell.github.io/){.ulink} (for tests)
:::::

::: {.installation lang="en"}
## Installation of gspell {#installation-of-gspell .sect2}

Install [gspell]{.application} by running the following commands:

``` userinput
mkdir gspell-build &&
cd    gspell-build &&

meson setup --prefix=/usr --buildtype=release -D gtk_doc=false .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests must be run in an X session. One test, test-checker, is known to fail if the external package [Hunspell](https://hunspell.github.io/){.ulink} is not installed.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D gtk_doc=false`*: Prevents building the documentation. Remove this if you have [GTK-Doc]{.application} installed and wish to build the documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gspell-app1]{.segbody}
:::

::: seg
**Installed Libraries:** [libgspell-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gspell-1 and /usr/share/gtk-doc/html/gspell-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------
  []{#gspell-app1}[[**gspell-app1**]{.command}]{.term}   checks the spelling of a text entered in a window
  []{#libgspell}[`libgspell-1.so`{.filename}]{.term}     is the [gspell]{.application} API library
  ------------------------------------------------------ ---------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gsl.md "gsl-2.8"){accesskey="p"}

    gsl-2.8

-   [Next](highway.md "highway-1.4.0"){accesskey="n"}

    highway-1.4.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
