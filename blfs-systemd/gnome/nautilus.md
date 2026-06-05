::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gexiv2.md "gexiv2-0.16.0"){accesskey="p"}

    gexiv2-0.16.0

-   [Next](gnome-bluetooth.md "gnome-bluetooth-47.2"){accesskey="n"}

    gnome-bluetooth-47.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nautilus}Nautilus-50.2.2 {#nautilus-50.2.2 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Nautilus {#introduction-to-nautilus .sect2}

The [Nautilus]{.application} package contains the [GNOME]{.application} file manager.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/nautilus/50/nautilus-50.2.2.tar.xz](https://download.gnome.org/sources/nautilus/50/nautilus-50.2.2.tar.xz){.ulink}

-   Download MD5 sum: b8a2330c5ac165178b4775e70435a473

-   Download size: 3.2 MB

-   Estimated disk space required: 96 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests, both using parallelism=4)
:::

### Nautilus Dependencies

#### Required

[blueprint-compiler-0.20.4](../general/python-modules.md#blueprint-compiler "blueprint-compiler-0.20.4"){.xref}, [gexiv2-0.16.0](gexiv2.md "gexiv2-0.16.0"){.xref}, [libglycin-gtk4 from glycin-2.1.1](../general/glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1"){.xref}, [gnome-autoar-0.4.5](gnome-autoar.md "gnome-autoar-0.4.5"){.xref}, [gnome-desktop-44.5](gnome-desktop.md "gnome-desktop-44.5"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libportal-0.9.1](../general/libportal.md "libportal-0.9.1"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, and [tinysparql-3.11.1](tinysparql.md "tinysparql-3.11.1"){.xref}

#### Recommended

[desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [libcloudproviders-0.3.6](../general/libcloudproviders.md "libcloudproviders-0.3.6"){.xref}, and [localsearch-3.11.1](localsearch.md "localsearch-3.11.1"){.xref} (required at runtime)

#### Optional (for generating documentation)

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}

#### Recommended (Runtime)

[adwaita-icon-theme-50.0](../x/adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref} and [Gvfs-1.60.0](gvfs.md "Gvfs-1.60.0"){.xref} (For hotplugging and device mounting to work)
:::::

::::: {.installation lang="en"}
## Installation of Nautilus {#installation-of-nautilus .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are upgrading from a previous version of this package, remove a conflicting file by running the following command as the `root`{.systemitem} user:

``` root
rm -fv /usr/lib/libnautilus-extension.so.4
```
:::

Install [Nautilus]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D selinux=disabled \
            ..                  &&

ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to generate and install the API documentation, issue the following commands:

``` userinput
sed "/docdir =/s@\$@ / 'nautilus-50.2.2'@" -i ../meson.build &&
meson configure -D docs=true &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests need to be run in a graphical environment. One test is known to fail if [localsearch-3.11.1](localsearch.md "localsearch-3.11.1"){.xref} is not installed. One test is also known to timeout if the user running the tests has a large home directory.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a [“[DESTDIR]{.quote}”]{.quote} method, `/usr/share/glib-2.0/schemas/gschemas.compiled`{.filename} was not updated/created. Create (or update) the file using the following command as the `root`{.systemitem} user:

``` root
glib-compile-schemas /usr/share/glib-2.0/schemas
```
:::
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D cloudproviders=false`{.option}: Use this switch if you do not have [libcloudproviders-0.3.6](../general/libcloudproviders.md "libcloudproviders-0.3.6"){.xref} installed.

`-D tests=none`{.option}: Use this switch if you do not have [localsearch-3.11.1](localsearch.md "localsearch-3.11.1"){.xref} installed. But note that it would disable most tests in the test suite, and Nautilus would fail to start until you install [localsearch-3.11.1](localsearch.md "localsearch-3.11.1"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [nautilus and nautilus-autorun-software]{.segbody}
:::

::: seg
**Installed Library:** [libnautilus-extension.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib,share}/nautilus and /usr/share/doc/nautilus-50.2.2 (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- --------------------------------------------------------------
  []{#nautilus-prog}[[**nautilus**]{.command}]{.term}                        is the [GNOME]{.application} file manager
  []{#libnautilus-extension}[`libnautilus-extension.so`{.filename}]{.term}   supplies the functions needed by the file manager extensions
  -------------------------------------------------------------------------- --------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](gexiv2.md "gexiv2-0.16.0"){accesskey="p"}

    gexiv2-0.16.0

-   [Next](gnome-bluetooth.md "gnome-bluetooth-47.2"){accesskey="n"}

    gnome-bluetooth-47.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
