::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](librest.md "librest-0.10.2"){accesskey="p"}

    librest-0.10.2

-   [Next](vte.md "VTE-0.84.0"){accesskey="n"}

    VTE-0.84.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#totem-pl-parser}totem-pl-parser-3.26.7 {#totem-pl-parser-3.26.7 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Totem PL Parser {#introduction-to-totem-pl-parser .sect2}

The [Totem PL Parser]{.application} package contains a simple GObject-based library used to parse multiple playlist formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/totem-pl-parser/3.26/totem-pl-parser-3.26.7.tar.xz](https://download.gnome.org/sources/totem-pl-parser/3.26/totem-pl-parser-3.26.7.tar.xz){.ulink}

-   Download MD5 sum: 5ec24e9d41984c50f84453a5fc92bafe

-   Download size: 1.5 MB

-   Estimated disk space required: 14 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### Totem PL Parser Dependencies

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, and [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}

#### Optional

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [Gvfs-1.60.0](gvfs.md "Gvfs-1.60.0"){.xref} (for some tests), [LCOV](https://github.com/linux-test-project/lcov){.ulink}, and [libquvi \>= 0.9.1 and libquvi-scripts](https://sourceforge.net/projects/quvi){.ulink} - if they are installed, then [lua-socket (git)](https://github.com/diegonehab/luasocket){.ulink} is necessary for the tests

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of Totem PL Parser {#installation-of-totem-pl-parser .sect2}

Install [Totem PL Parser]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The test named `parser`{.filename} is known to fail.

Now, as the `root`{.systemitem} user:

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
**Installed Libraries:** [libtotem-plparser-mini.so and libtotem-plparser.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/totem-pl-parser and /usr/share/gtk-doc/html/totem-pl-parser]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ----------------------------------------------------------------------------
  []{#libtotem-plparser}[`libtotem-plparser.so`{.filename}]{.term}             is the [Totem]{.application} Playlist Parser library
  []{#libtotem-plparser-mini}[`libtotem-plparser-mini.so`{.filename}]{.term}   is a limited version of the [Totem]{.application} Playlist Parser library,
  ---------------------------------------------------------------------------- ----------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](librest.md "librest-0.10.2"){accesskey="p"}

    librest-0.10.2

-   [Next](vte.md "VTE-0.84.0"){accesskey="n"}

    VTE-0.84.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
