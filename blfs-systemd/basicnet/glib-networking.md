::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](geoclue2.md "GeoClue-2.8.1"){accesskey="p"}

    GeoClue-2.8.1

-   [Next](kdsoap.md "kdsoap-2.3.0"){accesskey="n"}

    kdsoap-2.3.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glib-networking}glib-networking-2.80.1 {#glib-networking-2.80.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GLib Networking {#introduction-to-glib-networking .sect2}

The [GLib Networking]{.application} package contains Network related gio modules for [GLib]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/glib-networking/2.80/glib-networking-2.80.1.tar.xz](https://download.gnome.org/sources/glib-networking/2.80/glib-networking-2.80.1.tar.xz){.ulink}

-   Download MD5 sum: 405e6c058723217a1307ba8415615f9d

-   Download size: 288 KB

-   Estimated disk space required: 5.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### GLib Networking Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} and [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}

#### Recommended

[gsettings-desktop-schemas-50.1](../gnome/gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref} (for the applications using this package to use proxy server settings in GNOME) and [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}

#### Optional

[libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GLib Networking {#installation-of-glib-networking .sect2}

Install [GLib Networking]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup             \
   --prefix=/usr        \
   --buildtype=release  \
   -D libproxy=disabled \
   .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D libproxy=disabled`*: This switch disables libproxy support. If you wish to build with libproxy to allow this package to retrieve proxy settings via it's API, remove this switch.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgiognomeproxy.so and libgiognutls.so (GIO Modules installed in `/usr/lib/gio/modules`{.filename})]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](geoclue2.md "GeoClue-2.8.1"){accesskey="p"}

    GeoClue-2.8.1

-   [Next](kdsoap.md "kdsoap-2.3.0"){accesskey="n"}

    kdsoap-2.3.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
