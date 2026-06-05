::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-bluetooth.md "gnome-bluetooth-47.2"){accesskey="p"}

    gnome-bluetooth-47.2

-   [Next](gnome-settings-daemon.md "gnome-settings-daemon-50.1"){accesskey="n"}

    gnome-settings-daemon-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-keyring}gnome-keyring-50.0 {#gnome-keyring-50.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Keyring {#introduction-to-gnome-keyring .sect2}

The [GNOME Keyring]{.application} package contains a daemon that keeps passwords and other secrets for users.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-keyring/50/gnome-keyring-50.0.tar.xz](https://download.gnome.org/sources/gnome-keyring/50/gnome-keyring-50.0.tar.xz){.ulink}

-   Download MD5 sum: 406fb764c664de580a091527af059750

-   Download size: 752 KB

-   Estimated disk space required: 38 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4; add 0.2 SBU for tests)
:::

### GNOME Keyring Dependencies

#### Required

[dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref} and [Gcr-3.41.2](gcr.md "Gcr-3.41.2"){.xref}

#### Recommended

[Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, and [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref}

#### Optional

[libcap-ng](https://people.redhat.com/sgrubb/libcap-ng/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GNOME Keyring {#installation-of-gnome-keyring .sect2}

Install [GNOME Keyring]{.application} by running the following commands:

``` userinput
sed -i 's:"/desktop:"/org:' schema/*.xml &&

mkdir build-gkr &&
cd    build-gkr &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

A session bus address is necessary to run the tests. To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... schema/\*.xml**]{.command}: This command fixes a deprecated entry in the schema template.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gnome-keyring (symlink), gnome-keyring-3, and gnome-keyring-daemon]{.segbody}
:::

::: seg
**Installed Libraries:** [gnome-keyring-pkcs11.so (PKCS#11 module) and pam_gnome_keyring.so (PAM module)]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/gnome-keyring and /usr/share/xdg-desktop-portal]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------
  []{#gnome-keyring-daemon}[[**gnome-keyring-daemon**]{.command}]{.term}   is a session daemon that keeps passwords for users
  ------------------------------------------------------------------------ ----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-bluetooth.md "gnome-bluetooth-47.2"){accesskey="p"}

    gnome-bluetooth-47.2

-   [Next](gnome-settings-daemon.md "gnome-settings-daemon-50.1"){accesskey="n"}

    gnome-settings-daemon-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
