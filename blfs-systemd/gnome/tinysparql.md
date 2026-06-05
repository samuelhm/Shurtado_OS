::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](evolution-data-server.md "evolution-data-server-3.60.2"){accesskey="p"}

    evolution-data-server-3.60.2

-   [Next](localsearch.md "localsearch-3.11.1"){accesskey="n"}

    localsearch-3.11.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tinysparql}tinysparql-3.11.1 {#tinysparql-3.11.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Tinysparql {#introduction-to-tinysparql .sect2}

[Tinysparql]{.application} is a low-footprint RDF triple store with a SPARQL 1.1 interface.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/tinysparql/3.11/tinysparql-3.11.1.tar.xz](https://download.gnome.org/sources/tinysparql/3.11/tinysparql-3.11.1.tar.xz){.ulink}

-   Download MD5 sum: aa793424c64c06b50248969f3e9d553d

-   Download size: 2.3 MB

-   Estimated disk space required: 61 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

### Tinysparql Dependencies

#### Required

[JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref} and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}, and [localsearch-3.11.1](localsearch.md "localsearch-3.11.1"){.xref} (runtime)

#### Optional

[asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref}, [Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [Graphviz-15.0.0](../general/graphviz.md "Graphviz-15.0.0"){.xref}, [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}, [bash-completion](https://github.com/scop/bash-completion/){.ulink}, and [libstemmer](https://snowballstem.org/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Tinysparql {#installation-of-tinysparql .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If you are upgrading this package from a version that was from when this package was known as [Tracker]{.application}, remove a file that will cause a conflict as the `root`{.systemitem} user:
:::

``` userinput
rm -fv /usr/lib/systemd/user/tracker-xdg-portal-3.service
```

Fix the location to install the documentation into:

``` userinput
sed -e "s/'generate'/&, '--no-namespace-dir'/"         \
    -e "/--output-dir/s/@OUTPUT@/&\/tinysparql-3.11.1/" \
    -i docs/reference/meson.build
```

Install [Tinysparql]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D man=false        \
            -D tests=false      \
            ..                  &&
ninja
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To test the results, ensure [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} is installed and issue: [**meson configure -D debug=true -D tests=true && LC_ALL=C.UTF-8 ninja test**]{.command}. The test suite should be run from a graphical session. One test, test_cli, is known to fail due to the manual pages not being generated, but will pass if "-D man=false" is omitted when configuring the package. One other test, resource, is also known to fail.
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D man=false`*: This switch prevents the build process from generating man pages. Omit this switch if you have [asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} installed and wish to generate and install the man pages.

[**meson configure -D debug=true**]{.command}: This command enables some debug checks necessary for the test suite. We don't want to enable them for the installed tinysparql libraries and programs, so we run the test suite after installation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [tinysparql]{.segbody}
:::

::: seg
**Installed Library:** [libtinysparql-3.0.so and libtracker-sparql-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib}/tinysparql-3.0 and /usr/share/doc/tinysparql-3.11.1 (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------- -----------------------------------------------------------
  []{#tinysparql-prog}[[**tinysparql**]{.command}]{.term}                 is a control program for TinySPARQL databases
  []{#libtinysparql}[`libtinysparql-3.0.so`{.filename}]{.term}            contains functions for administering TinySPARQL databases
  []{#libtracker3-sparql}[`libtracker-sparql-3.0.so`{.filename}]{.term}   contains resource management and database functions
  ----------------------------------------------------------------------- -----------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](evolution-data-server.md "evolution-data-server-3.60.2"){accesskey="p"}

    evolution-data-server-3.60.2

-   [Next](localsearch.md "localsearch-3.11.1"){accesskey="n"}

    localsearch-3.11.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
