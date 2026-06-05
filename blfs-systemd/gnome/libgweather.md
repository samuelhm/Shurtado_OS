::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gweather-locations.md "gweather-locations-2026.2"){accesskey="p"}

    gweather-locations-2026.2

-   [Next](libpeas.md "libpeas-1.38.1"){accesskey="n"}

    libpeas-1.38.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgweather}libgweather-4.6.0 {#libgweather-4.6.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libgweather {#introduction-to-libgweather .sect2}

The [libgweather]{.application} package is a library used to access weather information from online services for numerous locations.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libgweather/4.6/libgweather-4.6.0.tar.xz](https://download.gnome.org/sources/libgweather/4.6/libgweather-4.6.0.tar.xz){.ulink}

-   Download MD5 sum: c52f40f2e6d6708763f15eb17ce45b97

-   Download size: 340 KB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### libgweather Dependencies

#### Required

[geocode-glib-3.26.4](geocode-glib.md "geocode-glib-3.26.4"){.xref}, [gweather-locations-2026.2](gweather-locations.md "gweather-locations-2026.2"){.xref}, [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}, and [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} (gi-docgen is also provided as a meson subproject, which will be used if `-D gtk_doc=false`{.option} is not passed to [**meson**]{.command}), [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} (for clang-format), and [pylint](https://pypi.org/project/pylint/){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of libgweather {#installation-of-libgweather .sect2}

Install [libgweather]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            ..                  &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "s/libgweather_full_version/'libgweather-4.6.0'/" \
    -i ../doc/meson.build                             &&
meson configure -D gtk_doc=true                       &&
ninja
```

One test needs that the locale files be installed on the system, so it is better to run the tests after installing the package.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To test the results, issue: [**LC_ALL=C ninja test**]{.command}. One test, `metar`{.filename}, is known to fail due to some airport weather information being temporarily unavailable.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gtk_doc=false`*: Allow building this package without [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed. If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to rebuild and install the API documentation, a [**meson configure**]{.command} command will reset this option.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgweather-4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/libgweather-4, /usr/include/libgweather-4.0, /usr/share/gtk-doc/html/libgweather-4.0 (optional), and /usr/share/libgweather-4]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------
  []{#libgweather-4}[`libgweather-4.so`{.filename}]{.term}   contains functions that allow for the retrieval of weather information
  ---------------------------------------------------------- ------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gweather-locations.md "gweather-locations-2026.2"){accesskey="p"}

    gweather-locations-2026.2

-   [Next](libpeas.md "libpeas-1.38.1"){accesskey="n"}

    libpeas-1.38.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
