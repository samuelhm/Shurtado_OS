::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](loupe.md "Loupe-49.2"){accesskey="p"}

    Loupe-49.2

-   [Next](showtime.md "Showtime-49.1"){accesskey="n"}

    Showtime-49.1

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#seahorse}Seahorse-47.0.1 {#seahorse-47.0.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Seahorse {#introduction-to-seahorse .sect2}

[Seahorse]{.application} is a graphical interface for managing and using encryption keys. Currently it supports PGP keys (using GPG/GPGME) and SSH keys.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/seahorse/47/seahorse-47.0.1.tar.xz](https://download.gnome.org/sources/seahorse/47/seahorse-47.0.1.tar.xz){.ulink}

-   Download MD5 sum: 18cd36abd8d2e25c236934be64c8b916

-   Download size: 1.3 MB

-   Estimated disk space required: 44 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
:::

### Seahorse Dependencies

#### Required

[Gcr-3.41.2](gcr.md "Gcr-3.41.2"){.xref}, [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref}, [gpgme-2.1.0](../postlfs/gpgme.md "gpgme-2.1.0"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libhandy-1.8.3](../x/libhandy1.md "libhandy-1.8.3"){.xref}, [libpwquality-1.4.5](../postlfs/libpwquality.md "libpwquality-1.4.5"){.xref}, [libsecret-0.21.7](libsecret.md "libsecret-0.21.7"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Recommended

[libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref} and [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref} (for managing SSH keys)

#### Optional

[Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}

#### Runtime Dependency

[gnome-keyring-50.0](gnome-keyring.md "gnome-keyring-50.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Seahorse {#installation-of-seahorse .sect2}

First, fix a build failure that occurs with gpgme-2.x:

``` userinput
sed -i "/GPGME_EVENT_NEXT_TRUSTITEM/d" pgp/seahorse-gpgme.c
```

Install [Seahorse]{.application} by running the following commands:

``` userinput
sed -i -r 's:"(/apps):"/org/gnome\1:' data/*.xml &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
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

[**sed ... data/\*.xml**]{.command}: This command fixes some deprecated entries in the schema templates.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [seahorse]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{libexec,share,share/help/\*}/seahorse]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- -------------------------------------------------------------------
  []{#seahorse-prog}[[**seahorse**]{.command}]{.term}   is the graphical interface for managing and using encryption keys
  ----------------------------------------------------- -------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](loupe.md "Loupe-49.2"){accesskey="p"}

    Loupe-49.2

-   [Next](showtime.md "Showtime-49.1"){accesskey="n"}

    Showtime-49.1

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
