::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgusb.md "libgusb-0.4.9"){accesskey="p"}

    libgusb-0.4.9

-   [Next](libidn.md "libidn-1.43"){accesskey="n"}

    libidn-1.43

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libical}libical-4.0.2 {#libical-4.0.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libical {#introduction-to-libical .sect2}

The [libical]{.application} package contains an implementation of the iCalendar protocols and data formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libical/libical/releases/download/v4.0.2/libical-4.0.2.tar.gz](https://github.com/libical/libical/releases/download/v4.0.2/libical-4.0.2.tar.gz){.ulink}

-   Download MD5 sum: 9cb78c7426adbf2fc648f147da2585c4

-   Download size: 1.8 MB

-   Estimated disk space required: 154 MB (with tests and docs)

-   Estimated build time: 0.4 SBU (using parallelism=4; with tests and docs)
:::

### libical Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref} (both required for GNOME)

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (for the API documentation), [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} (for the API documentation), [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} (for the API documentation), [ICU-78.3](icu.md "icu-78.3"){.xref}, [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} (for some tests), and [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated)
:::::

:::: {.installation lang="en"}
## Installation of libical {#installation-of-libical .sect2}

Install [libical]{.application} by running the following commands:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package may occasionally fail when building with multiple processors. See [Using Multiple Processors](../introduction/notes-on-building.md#parallel-builds "Using Multiple Processors"){.xref} for more information.
:::

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr  \
      -D CMAKE_BUILD_TYPE=Release   \
      -D LIBICAL_STATIC=NO          \
      -D LIBICAL_BUILD_DOCS=false   \
      -D LIBICAL_GLIB_VAPI=true     \
      -D LIBICAL_JAVA_BINDINGS=OFF  \
      -D LIBICAL_GOBJECT_INTROSPECTION=true \
      .. &&
make -j1
```

If you have [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, and [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} installed and wish to build the API documentation, you should remove the *`-D LIBICAL_BUILD_DOCS=false`* switch and issue:

``` userinput
make docs
```

If you wish to run the tests, issue:

``` userinput
cmake .. -D LIBICAL_BUILD_TESTING=ON &&
make &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have built the API documentation, install by issuing, as `root`{.systemitem} user:

``` root
install -vdm755 /usr/share/doc/libical-4.0.2/html &&
cp -vr apidocs/html/* /usr/share/doc/libical-4.0.2/html
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of the compiler optimizations.

*`-D LIBICAL_STATIC=NO`*: This switch is used in order to only build the shared libraries.

*`-D LIBICAL_BUILD_DOCS=false`*: This switch prevents building the [GTK]{.application} documentation. Remove if you want to build the documentation.

*`-D LIBICAL_GOBJECT_INTROSPECTION=true`*: This switch is used to generate GObject metadata bindings.

*`-D LIBICAL_GLIB_VAPI=true`*: This switch is used to build bindings for [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}.

`-D LIBICAL_ENABLE_BUILTIN_TZDATA=true`{.option}: This switch is used to use the included timezone data.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libical.so, libicalss.so, libicalss_cxx.so, libicalvcal.so, libicalvcard.so (experimental), libical-glib.so, and libical_cxx.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libical, /usr/include/libical-glib, /usr/lib/cmake/LibIcal, /usr/libexec/libical, /usr/share/gtk-doc/libical-glib (when docs are built), and /usr/share/doc/libical-4.0.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ----------------------------------------------------------------------------------------
  []{#libical-lib}[`libical.so`{.filename}]{.term}           contains the [libical]{.application} API functions
  []{#libical_cxx-lib}[`libical_cxx.so`{.filename}]{.term}   contains the [libical]{.application} C++ bindings
  []{#libical-glib}[`libical-glib.so`{.filename}]{.term}     contains the [libical]{.application} glib bindings
  []{#libicalss}[`libicalss.so`{.filename}]{.term}           is a library that allows you to store iCal component data on disk in a variety of ways
  []{#libicalss_cxx}[`libicalss_cxx.so`{.filename}]{.term}   contains the [libicalss]{.application} C++ bindings
  []{#libicalvcal}[`libicalvcal.so`{.filename}]{.term}       is a vCard/vCalendar C interface
  []{#libicalvcard}[`libicalvcard.so`{.filename}]{.term}     is an experimental library for handling VCARD formatted data
  ---------------------------------------------------------- ----------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libgusb.md "libgusb-0.4.9"){accesskey="p"}

    libgusb-0.4.9

-   [Next](libidn.md "libidn-1.43"){accesskey="n"}

    libidn-1.43

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
