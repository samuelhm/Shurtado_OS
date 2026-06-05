::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgudev.md "libgudev-238"){accesskey="p"}

    libgudev-238

-   [Next](libical.md "libical-4.0.2"){accesskey="n"}

    libical-4.0.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgusb}libgusb-0.4.9 {#libgusb-0.4.9 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libgusb {#introduction-to-libgusb .sect2}

The [libgusb]{.application} package contains the GObject wrappers for [libusb-1.0]{.application} that makes it easy to do asynchronous control, bulk and interrupt transfers with proper cancellation and integration into a mainloop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/hughsie/libgusb/releases/download/0.4.9/libgusb-0.4.9.tar.xz](https://github.com/hughsie/libgusb/releases/download/0.4.9/libgusb-0.4.9.tar.xz){.ulink}

-   Download MD5 sum: 354a3227334991ea4e924843c144bd82

-   Download size: 52 KB

-   Estimated disk space required: 5.0 MB (with tests and docs)

-   Estimated build time: 0.1 SBU (with tests and docs)
:::

### libgusb Dependencies

#### Required

[JSON-GLib-1.10.8](json-glib.md "JSON-GLib-1.10.8"){.xref} and [libusb-1.0.30](libusb.md "libusb-1.0.30"){.xref}

#### Recommended

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [hwdata-0.408](hwdata.md "hwdata-0.408"){.xref} (for `usb.ids`{.filename} data file, which is also required for the tests), and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and [umockdev-0.19.7](umockdev.md "Umockdev-0.19.7"){.xref} (for full test coverage)
:::::

::: {.installation lang="en"}
## Installation of libgusb {#installation-of-libgusb .sect2}

Install [libgusb]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D docs=false       &&
ninja
```

If you have [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed -E "/output|install_dir/s/('libgusb)'/\1-0.4.9'/" \
    -i ../docs/meson.build                            &&
meson configure -D docs=true                          &&
ninja
```

To test the results, run:

``` userinput
sed -e 's/pkg_resources/packaging.version/'  \
    -e 's/parse_version/parse/g'             \
    -i ../contrib/generate-version-script.py &&
ninja test
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D docs=false`*: Allow building this package without [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed. If you have [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to rebuild and install the API documentation, a [**meson configure**]{.command} command will reset this option.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gusbcmd]{.segbody}
:::

::: seg
**Installed Library:** [libgusb.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gusb-1 and /usr/share/doc/libgusb-0.4.9 (if gi-docgen is used)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------
  []{#gusbcmd}[[**gusbcmd**]{.command}]{.term}       is a debugging tool for the libgusb library
  []{#libgusb-lib}[`libgusb.so`{.filename}]{.term}   contains the [libgusb]{.application} API functions
  -------------------------------------------------- ----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libgudev.md "libgudev-238"){accesskey="p"}

    libgudev-238

-   [Next](libical.md "libical-4.0.2"){accesskey="n"}

    libical-4.0.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
