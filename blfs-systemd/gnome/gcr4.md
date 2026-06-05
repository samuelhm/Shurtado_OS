::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gcr.md "Gcr-3.41.2"){accesskey="p"}

    Gcr-3.41.2

-   [Next](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){accesskey="n"}

    gsettings-desktop-schemas-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gcr4}Gcr-4.4.0.1 {#gcr-4.4.0.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gcr {#introduction-to-gcr .sect2}

The [Gcr]{.application} package contains libraries used for displaying certificates and accessing key stores. It also provides the viewer for crypto files on the [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gcr/4.4/gcr-4.4.0.1.tar.xz](https://download.gnome.org/sources/gcr/4.4/gcr-4.4.0.1.tar.xz){.ulink}

-   Download MD5 sum: 01da4445b5b16801c6dcc7d8945b4cc4

-   Download size: 728 KB

-   Estimated disk space required: 26 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests; both using parallelism=4)
:::

### Gcr Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended), [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [p11-kit-0.26.2](../postlfs/p11-kit.md "p11-kit-0.26.2"){.xref}

#### Recommended

[GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [libsecret-0.21.7](libsecret.md "libsecret-0.21.7"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref}, and [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of Gcr {#installation-of-gcr .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Both gcr-3 and gcr-4 are coinstallable. This version of the package is used to support GTK-4 applications, such as [gnome-shell-50.2](gnome-shell.md "gnome-shell-50.2"){.xref} and [Epiphany-50.4](../xsoft/epiphany.md "Epiphany-50.4"){.xref}.
:::

Install [Gcr]{.application} by running the following commands:

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
sed -e "/install_dir/s@,\$@ / 'gcr-4.4.0.1'&@" \
    -i ../docs/*/meson.build                 &&
meson configure -D gtk_doc=true              &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests must be run from an X Terminal or similar.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D gtk4=false`{.option}: Use this switch if you haven't installed [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}. Note that [gcr-viewer-gtk4]{.application} will not be installed if this is passed to meson.

*`-D gtk_doc=false`*: Allow building this package without [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed. If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to rebuild and install the API documentation, a [**meson configure**]{.command} command will reset this option.

`-D crypto=gnutls`{.option}: Use this switch if you have [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref} installed and wish to use it instead of [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gcr-viewer-gtk4]{.segbody}
:::

::: seg
**Installed Libraries:** [libgck-2.so, libgcr-4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gck-2, /usr/include/gcr-4, and /usr/share/gtk-doc/html/{gcr,gck}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------------------------
  []{#gcr-viewer-gtk4}[[**gcr-viewer-gtk4**]{.command}]{.term}   is used to view certificates and key files
  []{#libgck-2}[`libgck-2.so`{.filename}]{.term}                 contains GObject bindings for PKCS#11
  []{#libgcr-4}[`libgcr-4.so`{.filename}]{.term}                 contains functions for accessing key stores and displaying certificates
  -------------------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gcr.md "Gcr-3.41.2"){accesskey="p"}

    Gcr-3.41.2

-   [Next](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){accesskey="n"}

    gsettings-desktop-schemas-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
