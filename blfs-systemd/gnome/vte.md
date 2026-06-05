::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](totem-pl-parser.md "totem-pl-parser-3.26.7"){accesskey="p"}

    totem-pl-parser-3.26.7

-   [Next](yelp-xsl.md "yelp-xsl-49.0"){accesskey="n"}

    yelp-xsl-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#vte}VTE-0.84.0 {#vte-0.84.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to VTE {#introduction-to-vte .sect2}

The [VTE]{.application} package contains a virtual terminal widget for GTK applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.gnome.org/GNOME/vte/-/archive/0.84.0/vte-0.84.0.tar.gz](https://gitlab.gnome.org/GNOME/vte/-/archive/0.84.0/vte-0.84.0.tar.gz){.ulink}

-   Download MD5 sum: 08b2325001d5ad09f8dd63201abfee7c

-   Download size: 856 KB

-   Estimated disk space required: 31 MB (with tests)

-   Estimated build time: 0.7 SBU (using parallelism=4; with tests)
:::

### VTE Dependencies

#### Required

[libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}

#### Recommended

[Fast_float-8.2.6](../general/fast_float.md "fast_float-8.2.6"){.xref}, [fmt-12.1.0](../general/fmt.md "fmt-12.1.0"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} (at least one GTK version is required), [simdutf-9.0.0](../general/simdutf.md "simdutf-9.0.0"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, both [git-2.54.0](../general/git.md "Git-2.54.0"){.xref} and [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} (for downloading copies of fast_float, fmt, and simdutf if these recommended dependencies are not installed)
:::::

::: {.installation lang="en"}
## Installation of VTE {#installation-of-vte .sect2}

Install [VTE]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed -e "/docdir =/s@\$@/ 'vte-0.84.0'@" \
    -i ../doc/reference/meson.build     &&
meson configure -D docs=true            &&
ninja
```

To test the results, issue [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
rm -v /etc/profile.d/vte.*
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

[**rm -v /etc/profile.d/vte.\***]{.command}: This command removes two files installed in /etc/profile.d that have no use on a LFS system.

`-D gnutls=false`{.option}: Add this switch if you do not want to enable GnuTLS support.

`-D vapi=false`{.option}: Add this switch if you do not want to enable vala bindings.

`-D gtk3=false`{.option}: Add this switch if you do not want to build the GTK-3 version of VTE.

`-D gtk4=false`{.option}: Add this switch if you do not want to build the GTK-4 version of VTE.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [vte-2.91 and vte-2.91-gtk4]{.segbody}
:::

::: seg
**Installed Library:** [libvte-2.91.so and libvte-2.91-gtk4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/vte-2.91, /usr/include/vte-2.91-gtk4, and (optional) /usr/share/doc/vte-0.84.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------------------------------------
  []{#vte291}[[**vte-2.91**]{.command}]{.term}                   is a test application for the [VTE]{.application} libraries
  []{#vte291-gtk4}[[**vte-2.91-gtk4**]{.command}]{.term}         is a test application for the GTK-4 version of the [VTE]{.application} libraries
  []{#libvte291}[`libvte-2.91.so`{.filename}]{.term}             is a library which implements a terminal emulator widget for [GTK+ 3]{.application}
  []{#libvte291-gtk4}[`libvte-2.91-gtk4.so`{.filename}]{.term}   is a library which implements a terminal emulator widget for [GTK-4]{.application}
  -------------------------------------------------------------- -------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](totem-pl-parser.md "totem-pl-parser-3.26.7"){accesskey="p"}

    totem-pl-parser-3.26.7

-   [Next](yelp-xsl.md "yelp-xsl-49.0"){accesskey="n"}

    yelp-xsl-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
