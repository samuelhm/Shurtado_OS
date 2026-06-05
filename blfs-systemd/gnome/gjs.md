::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](geocode-glib.md "geocode-glib-3.26.4"){accesskey="p"}

    geocode-glib-3.26.4

-   [Next](gnome-autoar.md "gnome-autoar-0.4.5"){accesskey="n"}

    gnome-autoar-0.4.5

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gjs}Gjs-1.88.0 {#gjs-1.88.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gjs {#introduction-to-gjs .sect2}

[Gjs]{.application} is a set of Javascript bindings for [GNOME]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gjs/1.88/gjs-1.88.0.tar.xz](https://download.gnome.org/sources/gjs/1.88/gjs-1.88.0.tar.xz){.ulink}

-   Download MD5 sum: 475ce5d243713eb12d221a88fc6721de

-   Download size: 788 KB

-   Estimated disk space required: 331 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests; with parallelism=4)
:::

### Gjs Dependencies

#### Required

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), and [SpiderMonkey from Firefox-140.11.0](../general/spidermonkey.md "SpiderMonkey from firefox-140.11.0"){.xref}

#### Optional (for tests)

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, and [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}

#### Optional

[DTrace](https://dtrace.org/about/){.ulink}, [LCOV](https://github.com/linux-test-project/lcov){.ulink}, [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}, and [Systemtap](https://sourceware.org/systemtap){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Gjs {#installation-of-gjs .sect2}

Install [Gjs]{.application} by running the following commands:

``` userinput
mkdir gjs-build &&
cd    gjs-build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nofallback \
            ..                     &&
ninja
```

To test the results, ensure both [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} are installed and issue: [**ninja test**]{.command} in a graphical session.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nofallback`*: This switch prevents [**meson**]{.command} from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

`-D profiler=disabled`{.option}: This switch prevents building the profiler backend even if [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink} is installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gjs (symlink) and gjs-console]{.segbody}
:::

::: seg
**Installed Library:** [libgjs.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gjs-1.0, /usr/lib/gjs, /usr/libexec/installed-tests/gjs, /usr/share/gjs-1.0, and /usr/share/installed-tests/gjs]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------------------
  []{#gjs-console}[[**gjs-console**]{.command}]{.term}   contains a console to run [JavaScript]{.application} commands
  []{#libgjs}[`libgjs.so`{.filename}]{.term}             contains the [GNOME]{.application} JavaScript bindings
  ------------------------------------------------------ ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](geocode-glib.md "geocode-glib-3.26.4"){accesskey="p"}

    geocode-glib-3.26.4

-   [Next](gnome-autoar.md "gnome-autoar-0.4.5"){accesskey="n"}

    gnome-autoar-0.4.5

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
