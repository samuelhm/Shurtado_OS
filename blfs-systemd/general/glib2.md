::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](fmt.md "fmt-12.1.0"){accesskey="p"}

    fmt-12.1.0

-   [Next](glibmm.md "GLibmm-2.66.8"){accesskey="n"}

    GLibmm-2.66.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glib2}GLib-2.88.1 {#glib-2.88.1 .sect1}

::::::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to GLib {#introduction-to-glib .sect2}

The [GLib]{.application} package contains low-level libraries useful for providing data structure handling for C, portability wrappers and interfaces for runtime functionality such as an event loop, threads, dynamic loading and an object system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/glib/2.88/glib-2.88.1.tar.xz](https://download.gnome.org/sources/glib/2.88/glib-2.88.1.tar.xz){.ulink}

-   Download MD5 sum: 384ea5551fc04334d113cb8b52ec9bac

-   Download size: 5.6 MB

-   Estimated disk space required: 430 MB (with tests and documentation)

-   Estimated build time: 0.7 SBU (add 0.5 SBU for tests; both using parallelism=4)
:::

### Additional Downloads

[**GObject Introspection (Recommended)**]{.strong}

::: itemizedlist
-   Download: [https://download.gnome.org/sources/gobject-introspection/1.86/gobject-introspection-1.86.0.tar.xz](https://download.gnome.org/sources/gobject-introspection/1.86/gobject-introspection-1.86.0.tar.xz){.ulink}

-   Download MD5 sum: fa0f2ae76868bf35ff725f940d75ec16

-   Download size: 1.1 MB
:::

[**Patch for Log Level Selection (Optional)**]{.strong}

::: itemizedlist
-   Optional patch: [https://www.linuxfromscratch.org/patches/blfs/svn/glib-skip_warnings-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/glib-skip_warnings-1.patch){.ulink}
:::

### GLib Dependencies

#### Recommended

[docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref}, and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}

#### Optional

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref} (for some GObject Introspection tests), [dbus-1.16.2](dbus.md "dbus-1.16.2"){.xref} (for some tests), [Fuse-3.18.2](../postlfs/fuse.md "Fuse-3.18.2"){.xref} and [bindfs](https://bindfs.org/){.ulink} (both needed for one test), [GDB-17.2](gdb.md "GDB-17.2"){.xref} (for bindings), [Gjs-1.88.0](../gnome/gjs.md "Gjs-1.88.0"){.xref} (for some GObject Introspection tests), [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} (for GObject Introspection documentation), [docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} (to build API documentation), [glib-networking-2.80.1](../basicnet/glib-networking.md "glib-networking-2.80.1"){.xref} (for some tests, but this is a circular dependency), [Mako-1.3.12](python-modules.md#Mako "Mako-1.3.12"){.xref} and [Markdown-3.10.2](python-dependencies.md#markdown "Markdown-3.10.2"){.xref} (both for [**g-ir-doc-tool**]{.command}), and [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}

#### Additional Runtime Dependencies

Quoted directly from the `INSTALL`{.filename} file: [“[Some of the mimetype-related functionality in GIO requires the [**update-mime-database**]{.command} and [**update-desktop-database**]{.command} utilities,]{.quote}”]{.quote} which are part of [shared-mime-info-2.4](shared-mime-info.md "shared-mime-info-2.4"){.xref} and [desktop-file-utils-0.28](desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, respectively. These two utilities are also needed for some tests.
:::::::

:::::: {.installation lang="en"}
## Installation of GLib {#installation-of-glib .sect2}

If desired, apply the optional patch. In many cases, applications that use this library, either directly or indirectly via other libraries such as [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, output numerous warnings when run from the command line. This patch enables the use of an environment variable, `GLIB_LOG_LEVEL`{.envar}, that suppresses unwanted messages. The value of the variable is a digit that corresponds to:

  ------------
  1 Alert
  2 Critical
  3 Error
  4 Warning
  5 Notice
  ------------

For instance **`export GLIB_LOG_LEVEL=4`** will skip output of Warning and Notice messages (and Info/Debug messages if they are turned on). If `GLIB_LOG_LEVEL`{.envar} is not defined, normal message output will not be affected.

``` userinput
patch -Np1 -i ../glib-skip_warnings-1.patch
```

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If a previous version of glib is installed, move the headers out of the way so that later packages do not encounter conflicts:

``` root
if [ -e /usr/include/glib-2.0 ]; then
    rm -rf /usr/include/glib-2.0.old &&
    mv -vf /usr/include/glib-2.0{,.old}
fi
```
:::

Install [GLib]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D introspection=disabled \
      -D glib_debug=disabled    \
      -D man-pages=enabled      \
      -D sysprof=disabled       &&
ninja
```

The [GLib]{.application} test suite requires [desktop-file-utils]{.application} for some tests. However, [desktop-file-utils]{.application} requires [GLib]{.application} in order to compile; therefore, you must first install [GLib]{.application} and then run the test suite.

As the `root`{.systemitem} user, install this package for the first time to allow building GObject Introspection:

``` root
ninja install
```

Build GObject Introspection:

``` userinput
tar xf ../../gobject-introspection-1.86.0.tar.xz &&

meson setup gobject-introspection-1.86.0 gi-build \
            --prefix=/usr --buildtype=release     &&
ninja -C gi-build
```

To test the results of GObject Introspection, issue: [**ninja -C gi-build test**]{.command}.

As the `root`{.systemitem} user, install GObject Introspection for generating the introspection data of GLib libraries (required by various packages using Glib, especially some GNOME packages):

``` root
ninja -C gi-build install
```

Now generate the introspection data:

``` userinput
meson configure -D introspection=enabled &&
ninja
```

If you have [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "/docs_dir =/s|$| / 'glib-' + meson.project_version()|" \
    -i ../docs/reference/meson.build                        &&
meson configure -D documentation=true                       &&
ninja
```

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Do not run the test suite as `root`{.systemitem} or some tests will fail unexpectedly and leave some non-FHS-compliant directories in the `/usr`{.filename} hierarchy.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If the GLIB_LOG_LEVEL environment variable is set, unset it before running the tests. Also one file that was created in the first install instruction above needs to be writable. As the `root`{.systemitem} user, run **`chmod a+rw .ninja_log`**.
:::

To test the results, issue: [**LC_ALL=C ninja test**]{.command} as a non-`root`{.systemitem} user.

As the `root`{.systemitem} user, install this package again for the introspection data (and optionally, the documentation):

``` root
ninja install
```
::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D man-pages=enabled`*: This switch causes the build to create and install the package man pages.

*`-D glib_debug=disabled`*: This switch causes the build to not include some expensive checks for debugging in the built programs and libraries.

*`-D sysprof=disabled`*: This switch disables the tracing support for sysprof. Remove this option if you want the tracing support. Note that if sysprof is not installed, removing this option will cause the build system to download a copy of sysprof from the Internet.
:::

:::::::::::::: {.content lang="en"}
## Contents {#contents .sect2}

### GLib Contents

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gapplication, gdbus, gdbus-codegen, gi-compile-repository, gi-decompile-typelib, gi-inspect-typelib gio, gio-querymodules, glib-compile-resources, glib-compile-schemas, glib-genmarshal, glib-gettextize, glib-mkenums, gobject-query, gresource, gsettings, gtester, and gtester-report]{.segbody}
:::

::: seg
**Installed Libraries:** [libgio-2.0.so, libgirepository-2.0.so, libglib-2.0.so, libgmodule-2.0.so, libgobject-2.0.so, and libgthread-2.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gio-unix-2.0, /usr/include/glib-2.0, /usr/lib/gio, /usr/lib/glib-2.0, /usr/share/glib-2.0, and /usr/share/doc/glib-2.88.1 (optional)]{.segbody}
:::
::::::
:::::::

### GObject Introspection Contents

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [g-ir-annotation-tool, g-ir-compiler, g-ir-doc-tool (optional), g-ir-generate, g-ir-inspect, and g-ir-scanner]{.segbody}
:::

::: seg
**Installed Libraries:** [libgirepository-1.0.so and \_giscanner.cpython-314-\<arch\>-linux-gnu.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gobject-introspection-1.0, /usr/lib/girepository-1.0, /usr/lib/gobject-introspection, /usr/share/gir-1.0, and /usr/share/gobject-introspection-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gapplication}[[**gapplication**]{.command}]{.term}                       can be used to start applications and to send messages to already-running instances of other applications
  []{#gdbus}[[**gdbus**]{.command}]{.term}                                     is a simple tool used for working with [D-Bus]{.application} objects
  []{#gdbus-codegen}[[**gdbus-codegen**]{.command}]{.term}                     is used to generate code and/or documentation for one or more [D-Bus]{.application} interfaces
  []{#gi-compile-repository}[[**gi-compile-repository**]{.command}]{.term}     converts one or more GIR files into one or more typelib files
  []{#gi-decompile-typelib}[[**gi-decompile-typelib**]{.command}]{.term}       is a GIR decompiler that uses the repository API
  []{#gi-inspect-typelib}[[**gi-inspect-typelib**]{.command}]{.term}           is a utility that gives information about a GI typelib
  []{#gio}[[**gio**]{.command}]{.term}                                         is a utility that makes many [GIO]{.application} features available from the command line
  []{#gio-querymodules}[[**gio-querymodules**]{.command}]{.term}               is used to create a `giomodule.cache`{.filename} file in the listed directories. This file lists the implemented extension points for each module that has been found
  []{#glib-compile-resources}[[**glib-compile-resources**]{.command}]{.term}   is used to read the resource description from a file and the files that it references to create a binary resource bundle that is suitable for use with the GResource API
  []{#glib-compile-schemas}[[**glib-compile-schemas**]{.command}]{.term}       is used to compile all the GSettings XML schema files in a directory into a binary file with the name `gschemas.compiled`{.filename} that can be used by GSettings
  []{#glib-genmarshal}[[**glib-genmarshal**]{.command}]{.term}                 is a C code marshaller generation utility for GLib closures
  []{#glib-gettextize}[[**glib-gettextize**]{.command}]{.term}                 is a variant of the [gettext]{.application} internationalization utility
  []{#glib-mkenums}[[**glib-mkenums**]{.command}]{.term}                       is a C language enum description generation utility
  []{#gobject-query}[[**gobject-query**]{.command}]{.term}                     is a small utility that draws a tree of types
  []{#gresource}[[**gresource**]{.command}]{.term}                             offers a simple command line interface to GResource
  []{#gsettings}[[**gsettings**]{.command}]{.term}                             offers a simple command line interface to GSettings
  []{#gtester}[[**gtester**]{.command}]{.term}                                 is a test running utility
  []{#gtester-report}[[**gtester-report**]{.command}]{.term}                   is a test report formatting utility
  []{#libgio}[`libgio-2.0.so`{.filename}]{.term}                               is a library providing useful classes for general purpose I/O, networking, IPC, settings, and other high level application functionality
  []{#libgirepository}[`libgirepository-2.0.so`{.filename}]{.term}             is a library providing access to typelibs and introspection data which describes C APIs
  []{#libglib}[`libglib-2.0.so`{.filename}]{.term}                             is a general-purpose, portable utility library, which provides many useful data types, macros, type conversions, string utilities, file utilities, a mainloop abstraction, and so on
  []{#libgmodule}[`libgmodule-2.0.so`{.filename}]{.term}                       provides portable API for dynamically loading modules
  []{#libgobject}[`libgobject-2.0.so`{.filename}]{.term}                       provides the GLib base type system and object class
  []{#libgthread}[`libgthread-2.0.so`{.filename}]{.term}                       is a skeleton library for backwards compatibility; it used to be the GLib thread library but the functionalities has been merged info `libglib-2.0`{.systemitem}
  []{#g-ir-annotation-tool}[[**g-ir-annotation-tool**]{.command}]{.term}       creates or extracts annotation data from GI typelibs
  []{#g-ir-compiler}[[**g-ir-compiler**]{.command}]{.term}                     is a counterpart of [**gi-compile-repository**]{.command} for the old `libgirepository-1.0`{.systemitem} API
  []{#g-ir-doc-tool}[[**g-ir-doc-tool**]{.command}]{.term}                     generates Mallard files that can be viewed with [**yelp**]{.command} or rendered to HTML with [**yelp-build**]{.command} from [yelp-tools](https://download.gnome.org/sources/yelp-tools){.ulink}
  []{#g-ir-inspect}[[**g-ir-inspect**]{.command}]{.term}                       is a counterpart of [**gi-inspect-typelib**]{.command} for the old `libgirepository-1.0`{.systemitem} API
  []{#g-ir-generate}[[**g-ir-generate**]{.command}]{.term}                     is a counterpart of [**gi-decompile-typelib**]{.command} for the old `libgirepository-1.0`{.systemitem} API
  []{#g-ir-scanner}[[**g-ir-scanner**]{.command}]{.term}                       is a tool which generates GIR XML files by parsing headers and introspecting GObject based libraries
  []{#libgirepository-1.0}[`libgirepository-1.0.so`{.filename}]{.term}         is a counterpart of `libgirepository-2.0`{.systemitem} with the old 1.0 API
  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::::::::
:::::::::::::::::::::::::

::: navfooter
-   [Prev](fmt.md "fmt-12.1.0"){accesskey="p"}

    fmt-12.1.0

-   [Next](glibmm.md "GLibmm-2.66.8"){accesskey="n"}

    GLibmm-2.66.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
