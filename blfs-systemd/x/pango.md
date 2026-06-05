::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libxklavier.md "libxklavier-5.4"){accesskey="p"}

    libxklavier-5.4

-   [Next](pangomm.md "Pangomm-2.46.4"){accesskey="n"}

    Pangomm-2.46.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pango}Pango-1.57.1 {#pango-1.57.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Pango {#introduction-to-pango .sect2}

[Pango]{.application} is a library for laying out and rendering text, with an emphasis on internationalization. It can be used anywhere that text layout is needed, though most of the work on [Pango]{.application} so far has been done in the context of the [GTK+]{.application} widget toolkit.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/pango/1.57/pango-1.57.1.tar.xz](https://download.gnome.org/sources/pango/1.57/pango-1.57.1.tar.xz){.ulink}

-   Download MD5 sum: dce053460f7f648018a7afbf36720421

-   Download size: 2.5 MB

-   Estimated disk space required: 64 MB (with tests)

-   Estimated build time: less than 0.1 SBU (Using parallelism=4; with tests)
:::

### Pango Dependencies

#### Required

[Fontconfig-2.18.1](../general/fontconfig.md "Fontconfig-2.18.1"){.xref} (must be built with [FreeType-2.14.3](../general/freetype2.md "FreeType-2.14.3"){.xref} using [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}), [FriBidi-1.0.16](../general/fribidi.md "FriBidi-1.0.16"){.xref}, and [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection required for GNOME)

#### Recommended

[Cairo-1.18.4](cairo.md "Cairo-1.18.4"){.xref} (built after [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}) and [Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Optional

[docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref} (to generate manual pages), [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} (to generate documentation), [help2man](https://ftpmirror.gnu.org/gnu/help2man){.ulink}, [libthai](https://linux.thai.net/projects/libthai){.ulink}, and [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Pango {#installation-of-pango .sect2}

Install [Pango]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr            \
            --buildtype=release      \
            --wrap-mode=nofallback   \
            -D introspection=enabled \
            ..                       &&
ninja
```

If you have [docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref} installed and wish to build the manual pages for the installed programs, issue:

``` userinput
meson configure -D man-pages=true &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "/docs_dir =/s@\$@ / 'pango-1.57.1'@" -i ../docs/meson.build &&
meson configure -D documentation=true                            &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. Three tests, test-font-data, test-font, and test-layout are known to fail due to missing font data.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D introspection=disabled`{.option}: Use this switch if you do not want to use GObject Introspection.

*`--wrap-mode=nofallback`*: This switch prevents [**meson**]{.command} from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.
:::

:::: {.configuration lang="en"}
## Configuring Pango {#configuring-pango .sect2}

::: {.sect3 lang="en"}
### []{#pango-config}Config Files {#config-files .sect3}

`/etc/pango/pangorc`{.filename}, `~/.pangorc`{.filename} and the file specified in the environment variable `PANGO_RC_FILE`{.envar}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pango-list, pango-segmentation, and pango-view]{.segbody}
:::

::: seg
**Installed Libraries:** [libpango-1.0.so, libpangocairo-1.0.so, libpangoft2-1.0.so, and libpangoxft-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/pango-1.0 and /usr/share/doc/pango-1.57.1 (if gi-docgen is available)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#pango-list}[[**pango-list**]{.command}]{.term}                   displays a list of fonts that [Pango]{.application} can use that are currently installed on the system
  []{#pango-segmentation}[[**pango-segmentation**]{.command}]{.term}   shows text segmentation as determined by Pango.
  []{#pango-view}[[**pango-view**]{.command}]{.term}                   renders a given text file through [Pango]{.application} for viewing purposes
  []{#libpango-1}[`libpango-1.0.so`{.filename}]{.term}                 contains low level layout rendering routines, a high level driver for laying out entire blocks of text, and routines to assist in editing internationalized text
  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](libxklavier.md "libxklavier-5.4"){accesskey="p"}

    libxklavier-5.4

-   [Next](pangomm.md "Pangomm-2.46.4"){accesskey="n"}

    Pangomm-2.46.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
