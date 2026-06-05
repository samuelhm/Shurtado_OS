::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](other.md "Other X-based Programs"){accesskey="p"}

    Other X-based Programs

-   [Next](feh.md "feh-3.12.2"){accesskey="n"}

    feh-3.12.2

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#balsa}Balsa-2.6.5 {#balsa-2.6.5 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Balsa {#introduction-to-balsa .sect2}

The [Balsa]{.application} package contains a lightweight [GTK+]{.application}-based mail client.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.gnome.org/GNOME/balsa/-/archive/2.6.5/balsa-2.6.5.tar.gz](https://gitlab.gnome.org/GNOME/balsa/-/archive/2.6.5/balsa-2.6.5.tar.gz){.ulink}

-   Download MD5 sum: c1039c22e8c2544c6a357626d71b6220

-   Download size: 6.0 MB

-   Estimated disk space required: 44 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
:::

### Balsa Dependencies

#### Required

[enchant-2.8.16](../general/enchant.md "enchant-2.8.16"){.xref}, [GMime-3.2.15](../general/gmime3.md "GMime-3.2.15"){.xref}, [gpgme-2.1.0](../postlfs/gpgme.md "gpgme-2.1.0"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libical-4.0.2](../general/libical.md "libical-4.0.2"){.xref}, [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, and [libsecret-0.21.7](../gnome/libsecret.md "libsecret-0.21.7"){.xref}

#### Required (Runtime)

[MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} (that provides a [**sendmail**]{.command} command)

#### Optional

[Compface-1.5.2](../general/compface.md "Compface-1.5.2"){.xref}, [gspell-1.14.3](../general/gspell.md "gspell-1.14.3"){.xref}, [gtksourceview-3.24.11](../x/gtksourceview.md "gtksourceview-3.24.11"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, [Procmail-3.24](../basicnet/procmail.md "Procmail-3.24"){.xref}, [WebKitGTK-2.52.0](../x/webkitgtk.md "WebKitGTK-2.52.0"){.xref}, [html2text](https://pypi.python.org/pypi/html2text/){.ulink}, [libxapp](https://github.com/linuxmint/xapp){.ulink}, [osmo](https://osmo-pim.sourceforge.net/){.ulink}, and [yelp-tools](https://download.gnome.org/sources/yelp-tools/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Balsa {#installation-of-balsa .sect2}

Install [Balsa]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup .. --prefix=/usr       \
               --buildtype=release \
               -D html-widget=no   &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D html-widget=no`*: This option disables building the HTML renderer. If you want the HTML renderer to be built, verify that you have [WebKitGTK-2.52.0](../x/webkitgtk.md "WebKitGTK-2.52.0"){.xref} installed, and then remove this option.

`-D canberra=true`{.option}: This switch enables support for event sounds via [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}.

`-D compface=true`{.option}: This switch enables support for using [Compface-1.5.2](../general/compface.md "Compface-1.5.2"){.xref} to compress thumbnails for contacts.

`-D gcr=true`{.option}: This switch enables support for using libgcr for handling TLS certificates. This requires that the [Gcr-3.41.2](../gnome/gcr.md "Gcr-3.41.2"){.xref} package is installed, which is part of a runtime dependency for libsecret.

`-D gss=true`{.option}: This switch enables support for Kerberos authentication. This requires that the [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} package is installed.

`-D ldap=true`{.option}: This switch enables LDAP address book support. This requires that the [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref} package is installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [balsa and balsa-ab]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/sounds/events, /usr/share/balsa, and /usr/share/sounds/balsa]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------
  []{#balsa-prog}[[**balsa**]{.command}]{.term}    is a GTK+-based mail client
  []{#balsa-ab}[[**balsa-ab**]{.command}]{.term}   is the address book application used by [**balsa**]{.command}
  ------------------------------------------------ ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](other.md "Other X-based Programs"){accesskey="p"}

    Other X-based Programs

-   [Next](feh.md "feh-3.12.2"){accesskey="n"}

    feh-3.12.2

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
