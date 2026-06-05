::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libgweather.md "libgweather-4.6.0"){accesskey="p"}

    libgweather-4.6.0

-   [Next](libshumate.md "libshumate-1.6.1"){accesskey="n"}

    libshumate-1.6.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libpeas}libpeas-1.38.1 {#libpeas-1.38.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libpeas {#introduction-to-libpeas .sect2}

[libpeas]{.application} is a GObject based plugins engine, and is targeted at giving every application the chance to assume its own extensibility.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libpeas/1.38/libpeas-1.38.1.tar.xz](https://download.gnome.org/sources/libpeas/1.38/libpeas-1.38.1.tar.xz){.ulink}

-   Download MD5 sum: 5e2388cd39322cd121be67ef398297d6

-   Download size: 192 KB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### libpeas Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [Glade](https://glade.gnome.org/){.ulink}, [embed](https://pypi.org/project/embed){.ulink}, [LGI](https://github.com/pavouk/lgi){.ulink} (for LUA bindings, built with LUA-5.1), with either [luajit-20260213](../general/luajit.md "luajit-20260213"){.xref} or [LUA-5.1](https://www.lua.org/ftp/lua-5.1.5.tar.gz){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libpeas {#installation-of-libpeas .sect2}

Install [libpeas]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nofallback \
            -D python3=false       \
            ..                     &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "/docs_dir =/s@\$@/ 'libpeas-1.38.1'@" \
    -i ../docs/reference/meson.build       &&
meson configure -D gtk_doc=true            &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. An active graphical session with bus address is necessary to run the tests.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nofallback`*: This switch prevents [**meson**]{.command} from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

*`-D python3=false`*: This switch disables the Python plugin loader because it is incompatible with pygobject-3.52.x, and it will cause applications which load Python plugins to hang indefinitely.

`-D vapi=true`{.option}: Add this switch if you wish to generate vapi (vala) data.

`-D demos=false`{.option}: Add this switch if you do not wish to build the demo programs.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [peas-demo]{.segbody}
:::

::: seg
**Installed Libraries:** [libpeas-1.0.so and libpeas-gtk-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libpeas-1.0, /usr/lib/libpeas-1.0, /usr/lib/peas-demo and /usr/share/gtk-doc/html/libpeas (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------
  []{#peas-demo}[[**peas-demo**]{.command}]{.term}             is the Peas demo program
  []{#libpeas-1}[`libpeas-1.0.so`{.filename}]{.term}           contains the [libpeas]{.application} API functions
  []{#libpeas-gtk-1}[`libpeas-gtk-1.0.so`{.filename}]{.term}   contains the [libpeas]{.application} [GTK+]{.application} widgets
  ------------------------------------------------------------ -------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libgweather.md "libgweather-4.6.0"){accesskey="p"}

    libgweather-4.6.0

-   [Next](libshumate.md "libshumate-1.6.1"){accesskey="n"}

    libshumate-1.6.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
