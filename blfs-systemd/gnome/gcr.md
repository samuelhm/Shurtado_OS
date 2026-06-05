::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](core.md "GNOME Libraries and Desktop"){accesskey="p"}

    GNOME Libraries and Desktop

-   [Next](gcr4.md "Gcr-4.4.0.1"){accesskey="n"}

    Gcr-4.4.0.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gcr}Gcr-3.41.2 {#gcr-3.41.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
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
-   Download (HTTP): [https://download.gnome.org/sources/gcr/3.41/gcr-3.41.2.tar.xz](https://download.gnome.org/sources/gcr/3.41/gcr-3.41.2.tar.xz){.ulink}

-   Download MD5 sum: 40a754ba44d5e95e4d07656d6302900c

-   Download size: 1012 KB

-   Estimated disk space required: 33 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests; both using parallelism=4)
:::

### Gcr Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended), [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, and [p11-kit-0.26.2](../postlfs/p11-kit.md "p11-kit-0.26.2"){.xref}

#### Recommended

[GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libsecret-0.21.7](libsecret.md "libsecret-0.21.7"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Gcr {#installation-of-gcr .sect2}

First, apply a fix for building without OpenSSH installed:

``` userinput
sed '/ssh.add/d; /ssh.agent/d' -i meson.build
```

Install [Gcr]{.application} by running the following commands:

``` userinput
sed -i 's:"/desktop:"/org:' schema/*.xml &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            -D ssh_agent=false  \
            ..                  &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed -e "/install_dir/s@,\$@ / 'gcr-3.41.2'&@" \
    -i ../docs/*/meson.build                  &&
meson configure -D gtk_doc=true               &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests must be run from an X Terminal or similar.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D ssh_agent=false`*: Disable the ssh-agent implementation from this package. This implementation is incomplete and the implementation from [Gcr-4.4.0.1](gcr4.md "Gcr-4.4.0.1"){.xref} should be used instead for GNOME.

`-D gtk=false`{.option}: Use this switch if you haven't installed [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}. Note that [gcr-viewer]{.application} will not be installed if this is option is used.

`-D gtk_doc=true`{.option}: Allow building this package without [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed. If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to rebuild and install the API documentation, a [**meson configure**]{.command} command will reset this option.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gcr-viewer]{.segbody}
:::

::: seg
**Installed Libraries:** [libgck-1.so, libgcr-base-3.so and libgcr-ui-3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gck-1, /usr/include/gcr-3, and /usr/share/gtk-doc/html/{gcr,gck}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------
  []{#gcr-viewer}[[**gcr-viewer**]{.command}]{.term}   is used to view certificates and key files
  []{#libgck-1}[`libgck-1.so`{.filename}]{.term}       contains GObject bindings for PKCS#11
  ---------------------------------------------------- --------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](core.md "GNOME Libraries and Desktop"){accesskey="p"}

    GNOME Libraries and Desktop

-   [Next](gcr4.md "Gcr-4.4.0.1"){accesskey="n"}

    Gcr-4.4.0.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
