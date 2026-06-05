::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){accesskey="p"}

    gsettings-desktop-schemas-50.1

-   [Next](librest.md "librest-0.10.2"){accesskey="n"}

    librest-0.10.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libsecret}libsecret-0.21.7 {#libsecret-0.21.7 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libsecret {#introduction-to-libsecret .sect2}

The [libsecret]{.application} package contains a GObject based library for accessing the Secret Service API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libsecret/0.21/libsecret-0.21.7.tar.xz](https://download.gnome.org/sources/libsecret/0.21/libsecret-0.21.7.tar.xz){.ulink}

-   Download MD5 sum: 7a938a802a3c17df441fbd0358866e99

-   Download size: 204 KB

-   Estimated disk space required: 11 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::

### libsecret Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended)

#### Recommended

[libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref} (or [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, for cryptography), and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and [docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} (to build manual pages), [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (can be used in tests), and [tpm2-tss](https://github.com/tpm2-software/tpm2-tss){.ulink} (for TPM support)

#### Optional (Required for the test suite)

[D-Bus Python-1.4.0](../general/python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref}, [Gjs-1.88.0](gjs.md "Gjs-1.88.0"){.xref}, and [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}

#### Required Runtime Dependency

[gnome-keyring-50.0](gnome-keyring.md "gnome-keyring-50.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Any package requiring [libsecret]{.application} expects [GNOME Keyring]{.application} to be present at runtime.
:::
::::::

::: {.installation lang="en"}
## Installation of libsecret {#installation-of-libsecret .sect2}

Install [libsecret]{.application} by running the following commands:

``` userinput
mkdir bld &&
cd    bld &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            ..                  &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "s/api_version_major/'0.21.7'/"            \
    -i ../docs/reference/libsecret/meson.build &&
meson configure -D gtk_doc=true                &&
ninja
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To test the results, issue: [**dbus-run-session ninja test**]{.command}.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gtk_doc=false`*: Allow building this package without [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed. If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to rebuild and install the API documentation, a [**meson configure**]{.command} command will reset this option.

`-D manpage=false`{.option}: Use this switch if you have not installed [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} and DocBook packages.

`-D crypto=gnutls`{.option}: Use this switch if you want to use [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref} for cryptography instead of [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}.

`-D crypto=disabled`{.option}: Use this switch if you don't have [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref} or [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref} installed. Note that disabling transport encryption support by doing this is not recommended.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [secret-tool]{.segbody}
:::

::: seg
**Installed Library:** [libsecret-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libsecret-1 and /usr/share/doc/libsecret-0.21.7]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------
  []{#secret-tool}[[**secret-tool**]{.command}]{.term}   is a command line tool that can be used to store and retrieve passwords
  []{#libsecret-1}[`libsecret-1.so`{.filename}]{.term}   contains the [libsecret]{.application} API functions
  ------------------------------------------------------ -------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){accesskey="p"}

    gsettings-desktop-schemas-50.1

-   [Next](librest.md "librest-0.10.2"){accesskey="n"}

    librest-0.10.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
