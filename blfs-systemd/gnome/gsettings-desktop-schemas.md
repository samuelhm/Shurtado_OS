::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gcr4.md "Gcr-4.4.0.1"){accesskey="p"}

    Gcr-4.4.0.1

-   [Next](libsecret.md "libsecret-0.21.7"){accesskey="n"}

    libsecret-0.21.7

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gsettings-desktop-schemas}gsettings-desktop-schemas-50.1 {#gsettings-desktop-schemas-50.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GSettings Desktop Schemas {#introduction-to-gsettings-desktop-schemas .sect2}

The [GSettings Desktop Schemas]{.application} package contains a collection of GSettings schemas for settings shared by various components of a [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gsettings-desktop-schemas/50/gsettings-desktop-schemas-50.1.tar.xz](https://download.gnome.org/sources/gsettings-desktop-schemas/50/gsettings-desktop-schemas-50.1.tar.xz){.ulink}

-   Download MD5 sum: b3851a1d2dd684f7ea1a1d032e2a7dfb

-   Download size: 876 KB

-   Estimated disk space required: 17 MB

-   Estimated build time: less than 0.1 SBU
:::

### GSettings Desktop Schemas Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)
:::::

:::: {.installation lang="en"}
## Installation of GSettings Desktop Schemas {#installation-of-gsettings-desktop-schemas .sect2}

Install [GSettings Desktop Schemas]{.application} by running the following commands:

``` userinput
sed -i -r 's:"(/system):"/org/gnome\1:g' schemas/*.in &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

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
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... schemas/\*.in**]{.command}: This command fixes some deprecated entries in the schema templates.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/gsettings-desktop-schemas and /usr/share/GConf/gsettings]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](gcr4.md "Gcr-4.4.0.1"){accesskey="p"}

    Gcr-4.4.0.1

-   [Next](libsecret.md "libsecret-0.21.7"){accesskey="n"}

    libsecret-0.21.7

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
