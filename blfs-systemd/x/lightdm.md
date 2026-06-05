::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 26. Display Managers

-   [Prev](gdm.md "GDM-50.1"){accesskey="p"}

    GDM-50.1

-   [Next](sddm.md "sddm-0.21.0"){accesskey="n"}

    sddm-0.21.0

-   [Up](dm.md "Chapter 26. Display Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lightdm}lightdm-1.32.0 {#lightdm-1.32.0 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Lightdm {#introduction-to-lightdm .sect2}

The [lightdm]{.application} package contains a lightweight display manager based upon GTK.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Lightdm Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/CanonicalLtd/lightdm/releases/download/1.32.0/lightdm-1.32.0.tar.xz](https://github.com/CanonicalLtd/lightdm/releases/download/1.32.0/lightdm-1.32.0.tar.xz){.ulink}

-   Download MD5 sum: e62a5da6c35f612e4d9575eda5c8d467

-   Download size: 508 KB

-   Estimated disk space required: 20 MB

-   Estimated build time: 0.2 SBU
:::

### Additional download

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The greeter is a program to present a graphical login screen. There are several alternative greeters, but the gtk+ package is the reference implementation. For a list of other greeters, see [https://en.wikipedia.org/wiki/LightDM](https://en.wikipedia.org/wiki/LightDM){.ulink}.
:::

::: itemizedlist
-   Download (HTTP): [https://github.com/Xubuntu/lightdm-gtk-greeter/releases/download/lightdm-gtk-greeter-2.0.9/lightdm-gtk-greeter-2.0.9.tar.gz](https://github.com/Xubuntu/lightdm-gtk-greeter/releases/download/lightdm-gtk-greeter-2.0.9/lightdm-gtk-greeter-2.0.9.tar.gz){.ulink}

-   Download MD5 sum: 35752d730f39293c2bbe884ef6963830

-   Download size: 592 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### Lightdm Dependencies

#### Required

[Exo-4.20.0](../xfce/exo.md "Exo-4.20.0"){.xref} (for the greeter), [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, and [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref} (Runtime)

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [libxklavier-5.4](libxklavier.md "libxklavier-5.4"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[AccountsService-23.13.9](../general/accountsservice.md "AccountsService-23.13.9"){.xref} (run time), [at-spi2-core-2.60.4](at-spi2-core.md "at-spi2-core-2.60.4"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libido](https://launchpad.net/ido){.ulink}, and [libindicator](https://launchpad.net/libindicator){.ulink}
:::::::

:::: {.installation lang="en"}
## Installation of Lightdm {#installation-of-lightdm .sect2}

First, create a dedicated user and group to take control of the [**lightdm**]{.command} daemon after it is started. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -g 65 lightdm       &&
useradd  -c "Lightdm Daemon" \
         -d /var/lib/lightdm \
         -u 65 -g lightdm    \
         -s /bin/false lightdm
```

Install [lightdm]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                 \
            --libexecdir=/usr/lib/lightdm \
            --localstatedir=/var          \
            --sbindir=/usr/bin            \
            --sysconfdir=/etc             \
            --disable-static              \
            --disable-tests               \
            --with-greeter-user=lightdm   \
            --with-greeter-session=lightdm-gtk-greeter \
            --docdir=/usr/share/doc/lightdm-1.32.0 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install                                                  &&
cp tests/src/lightdm-session /usr/bin                         &&
sed -i '1 s/sh/bash --login/' /usr/bin/lightdm-session        &&
rm -rf /etc/init                                              &&
install -v -dm755 -o lightdm -g lightdm /var/lib/lightdm      &&
install -v -dm755 -o lightdm -g lightdm /var/lib/lightdm-data &&
install -v -dm755 -o lightdm -g lightdm /var/cache/lightdm    &&
install -v -dm770 -o lightdm -g lightdm /var/log/lightdm
```

Now build the greeter:

``` userinput
tar -xf ../lightdm-gtk-greeter-2.0.9.tar.gz &&
cd lightdm-gtk-greeter-2.0.9 &&

./configure --prefix=/usr                 \
            --libexecdir=/usr/lib/lightdm \
            --sbindir=/usr/bin            \
            --sysconfdir=/etc             \
            --with-libxklavier            \
            --enable-kill-on-sigterm      \
            --disable-libido              \
            --disable-libindicator        \
            --disable-static              \
            --disable-maintainer-mode     \
            --docdir=/usr/share/doc/lightdm-gtk-greeter-2.0.9 &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you installed Xorg in /opt, you will need to create a symbolic link so lightdm can find the Xorg server. As the `root`{.systemitem} user:

``` userinput
ln -sf /opt/xorg/bin/Xorg /usr/bin/X
```
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... /usr/bin/lightdm-session**]{.command}: This command ensures that the initial login via the greeter sources /etc/profile and \~/.bash_profile. Without this, commands that depend on different environment variables may not work as expected.
:::

:::::: {.configuration lang="en"}
## Configuring lightdm {#configuring-lightdm .sect2}

::: {.sect3 lang="en"}
### []{#lightdm-config}Config Files {#config-files .sect3}

/etc/lightdm/{lightdm,users,keys,lightdm-gtk-greeter}.conf

The configuration files offer many options. If, for instance, you have a multiple monitor setup but prefer the login window to be displayed on only one monitor, set 'active-monitor=\<monitor-name\>' in `lightdm-gtk-greeter.conf`{.filename}. For example you could use `active-monitor=HDMI-1`{.option}. You can determine the monitor-names with [**xrandr --listmonitors**]{.command}. Note that the monitor names may change if you change the graphics driver and you may have to adjust the configuration accordingly.
:::

::: {.sect3 lang="en"}
### []{#lightdm-bootscript} Systemd Unit {#systemd-unit .sect3}

Install the `lightdm.service`{.filename} unit included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-lightdm
```
:::

::: {.sect3 lang="en"}
### []{#lightdm-sessions}Available Sessions {#available-sessions .sect3}

The greeter offers a list of available sessions, depending on the Window Managers and Desktop Environments installed. The list includes sessions which have a corresponding `.desktop`{.filename} file installed under `/usr/share/xsessions`{.filename}. Most of the Window Managers and Desktop Environments automatically provide those files, but if necessary, you may include a custom one.
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dm-tool, lightdm, and lightdm-gtk-greeter]{.segbody}
:::

::: seg
**Installed Libraries:** [liblightdm-gobject-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/lightdm, /etc/apparmor.d, /usr/lib/lightdm, /usr/include/lightdm-gobject-1, /usr/share/help/C/lightdm /usr/share/gtk-doc/html/lightdm-gobject-1, /usr/share/doc/lightdm-gtk-greeter-2.0.9, /var/lib/lightdm, /var/lib/lightdm-data, /var/cache/lightdm, and /var/log/lightdm]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#lightdm-prog}[[**lightdm**]{.command}]{.term}                      is a display and login manager
  []{#lightdm-gtk-greeter}[[**lightdm-gtk-greeter**]{.command}]{.term}   is an auxiliary process that displays the greeter, a graphical user interface that performs user authentication and initiates the selected window manager or display environment
  ---------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](gdm.md "GDM-50.1"){accesskey="p"}

    GDM-50.1

-   [Next](sddm.md "sddm-0.21.0"){accesskey="n"}

    sddm-0.21.0

-   [Up](dm.md "Chapter 26. Display Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
