::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 40. Graphical Web Browsers

-   [Prev](graphweb.md "Graphical Web Browsers"){accesskey="p"}

    Graphical Web Browsers

-   [Next](falkon.md "falkon-26.04.1"){accesskey="n"}

    falkon-26.04.1

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#epiphany}Epiphany-50.4 {#epiphany-50.4 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Epiphany {#introduction-to-epiphany .sect2}

[Epiphany]{.application} is a simple yet powerful [GNOME]{.application} web browser targeted at non-technical users. Its principles are simplicity and standards compliance.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/epiphany/50/epiphany-50.4.tar.xz](https://download.gnome.org/sources/epiphany/50/epiphany-50.4.tar.xz){.ulink}

-   Download MD5 sum: 7c7f76f6c3ecfa6a4e09b7576d68d172

-   Download size: 4.3 MB

-   Estimated disk space required: 100 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests; both using parallelism=4)
:::

### Epiphany Dependencies

#### Required

[blueprint-compiler-0.20.4](../general/python-modules.md#blueprint-compiler "blueprint-compiler-0.20.4"){.xref}, [Gcr-4.4.0.1](../gnome/gcr4.md "Gcr-4.4.0.1"){.xref}, [gnome-desktop-44.5](../gnome/gnome-desktop.md "gnome-desktop-44.5"){.xref}, [ISO Codes-4.20.1](../general/iso-codes.md "ISO Codes-4.20.1"){.xref}, [JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libportal-0.9.1](../general/libportal.md "libportal-0.9.1"){.xref}, [Nettle-4.0](../postlfs/nettle.md "Nettle-4.0"){.xref}, and [WebKitGTK-2.52.0](../x/webkitgtk.md "WebKitGTK-2.52.0"){.xref} (built with GTK-4)

#### Optional

[AppStream-1.1.2](../general/appstream.md "AppStream-1.1.2"){.xref} and [Granite](https://github.com/elementary/granite){.ulink}

#### Runtime Dependencies

[gnome-keyring-50.0](../gnome/gnome-keyring.md "gnome-keyring-50.0"){.xref} (for storing passwords) and [Seahorse-47.0.1](../gnome/seahorse.md "Seahorse-47.0.1"){.xref} (for managing stored passwords)

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/epiphany](https://wiki.linuxfromscratch.org/blfs/wiki/epiphany){.ulink}
:::::

::::: {.installation lang="en"}
## Installation of Epiphany {#installation-of-epiphany .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are upgrading from a epiphany-46 or earlier, remove some files that will cause a crash at runtime if they are present as the `root`{.systemitem} user:

``` userinput
rm -rf /usr/lib/epiphany
```
:::

Install [Epiphany]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

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

One test would fail if this package is not installed, so it's better to run the test suite after installation. To test the results, issue [**ninja test**]{.command}. The tests must be run from a graphical session.
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [epiphany]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{lib,libexec,share,share/help/\*}/epiphany]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ----------------------------------------------------------------------------------------------
  []{#epiphany-prog}[[**epiphany**]{.command}]{.term}   is a [GNOME]{.application} web browser based on the [WebKit2]{.application} rendering engine
  ----------------------------------------------------- ----------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](graphweb.md "Graphical Web Browsers"){accesskey="p"}

    Graphical Web Browsers

-   [Next](falkon.md "falkon-26.04.1"){accesskey="n"}

    falkon-26.04.1

-   [Up](graphweb.md "Chapter 40. Graphical Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
