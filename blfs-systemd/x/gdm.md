::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 26. Display Managers

-   [Prev](dm.md "Display Managers"){accesskey="p"}

    Display Managers

-   [Next](lightdm.md "lightdm-1.32.0"){accesskey="n"}

    lightdm-1.32.0

-   [Up](dm.md "Chapter 26. Display Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gdm}GDM-50.1 {#gdm-50.1 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GDM {#introduction-to-gdm .sect2}

[GDM]{.application} is a system service that is responsible for providing graphical logins and managing local and remote displays.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gdm/50/gdm-50.1.tar.xz](https://download.gnome.org/sources/gdm/50/gdm-50.1.tar.xz){.ulink}

-   Download MD5 sum: aed5adf1f054c76b5a4da739887f30c1

-   Download size: 984 KB

-   Estimated disk space required: 28 MB

-   Estimated build time: 0.2 SBU
:::

### GDM Dependencies

#### Required

[AccountsService-23.13.9](../general/accountsservice.md "AccountsService-23.13.9"){.xref}, [DConf-0.49.0](../gnome/dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref} (built after [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}), and [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}

#### Optional

[keyutils-1.6.3](../general/keyutils.md "keyutils-1.6.3"){.xref} and [check](https://libcheck.github.io/check/){.ulink} (for testing)

#### Runtime Dependencies

[gnome-session-50.1](../gnome/gnome-session.md "gnome-session-50.1"){.xref}, [gnome-shell-50.2](../gnome/gnome-shell.md "gnome-shell-50.2"){.xref}, and [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref}]{.phrase}
:::::

::: {.installation lang="en"}
## Installation of GDM {#installation-of-gdm .sect2}

GDM needs to start as `root`{.systemitem}, but quickly drops privileges to dynamic users created with userdb. We only need to create a dedicated group for those users. Issue the following command as the `root`{.systemitem} user:

``` root
groupadd -g 21 gdm
```

Install [GDM]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D gdm-xsession=true \
      -D run-dir=/run/gdm  &&
ninja
```

The test suite requires [Check]{.application} that is not available.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D default-pam-config=lfs`{.option}: Use this switch if you did not create the `/etc/lfs-release`{.filename} file or distribution auto detection will fail and you will be unable to use [GDM]{.application}.

*`-D gdm-xsession=true`*: This enables the installation of the [GDM]{.application} Xsession file.
:::

::::::: {.configuration lang="en"}
## Configuring GDM {#configuring-gdm .sect2}

::: {.sect3 lang="en"}
### []{#gdm-config}Config Files {#config-files .sect3}

`/etc/gdm/custom.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The GDM daemon is configured using the `/etc/gdm/custom.conf`{.filename} file. Default values are stored in GSettings in the `gdm.schemas`{.filename} file. It is recommended that end-users modify the `/etc/gdm/custom.conf`{.filename} file because the schemas file may be overwritten when the user updates their system to have a newer version of [GDM]{.application}.

On some systems with NVIDIA GPUs or virtual GPUs (such as provided by qemu), GDM will hide Wayland sessions by default. This is often done to prevent users from encountering problems with buggy drivers, which can result in system lockups, application crashes, power management problems, and graphics slowdowns. If your system is a virtual machine or you have an NVIDIA GPU and still want to try running Wayland sessions anyway, execute the following command as the `root`{.systemitem} user:

``` userinput
ln -s /dev/null /etc/udev/rules.d/61-gdm.rules
```
:::

::: {.sect3 lang="en"}
### []{#gdm-init} Systemd Unit {#systemd-unit .sect3}

To start the [**gdm**]{.command} daemon at boot, enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable gdm
```
:::

::: {.sect3 lang="en"}
### []{#gdm-auto-suspend}Configuring GDM Auto-Suspend {#configuring-gdm-auto-suspend .sect3}

GDM will suspend the system when the greeter screen has been running for a while without any interactive input. If you want to disable auto-suspending for any reason (for example if the system is hosting some services besides functioning as a desktop system), as the `root`{.systemitem} user, issue:

``` userinput
su gdm -s /bin/bash                                                \
       -c "dbus-run-session                                        \
             gsettings set org.gnome.settings-daemon.plugins.power \
                           sleep-inactive-ac-type                  \
                           nothing"
```
:::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gdm and gdm-config]{.segbody}
:::

::: seg
**Installed Libraries:** [libgdm.so and pam_gdm.so (PAM Module)]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/gdm, /usr/include/gdm, /usr/share/gdm, and /usr/share/help/\*/gdm]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------------------
  []{#gdm-prog}[[**gdm**]{.command}]{.term}                 is a login prompt for [GNOME]{.application}
  []{#gdm-config-prog}[[**gdm-config**]{.command}]{.term}   configures a variety of authentication options for GDM
  --------------------------------------------------------- --------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](dm.md "Display Managers"){accesskey="p"}

    Display Managers

-   [Next](lightdm.md "lightdm-1.32.0"){accesskey="n"}

    lightdm-1.32.0

-   [Up](dm.md "Chapter 26. Display Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
