::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](gimp.md "Gimp-3.2.4"){accesskey="p"}

    Gimp-3.2.4

-   [Next](inkscape.md "Inkscape-1.4.4"){accesskey="n"}

    Inkscape-1.4.4

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gparted}Gparted-1.8.1 {#gparted-1.8.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gparted {#introduction-to-gparted .sect2}

Gparted is the Gnome Partition Editor, a Gtk 3 GUI for other command line tools that can create, reorganise or delete disk partitions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/gparted/gparted-1.8.1.tar.gz](https://downloads.sourceforge.net/gparted/gparted-1.8.1.tar.gz){.ulink}

-   Download MD5 sum: 3805a43eafd08277f12dc6c2e0de97c2

-   Download size: 5.7 MB

-   Estimated disk space required: 193 MB (with tests)

-   Estimated build time: 0.3 SBU (using parallelism=4; add 0.3 SBU for tests)
:::

### Gparted Dependencies

#### Required

[Gtkmm-3.24.10](../x/gtkmm3.md "Gtkmm-3.24.10"){.xref} and [parted-3.7](../postlfs/parted.md "parted-3.7"){.xref}

#### Optional

[btrfs-progs-7.0](../postlfs/btrfs-progs.md "btrfs-progs-7.0"){.xref} (if you are using a btrfs filesystem), [exfatprogs](https://github.com/exfatprogs/exfatprogs){.ulink}, and [udftools](https://github.com/pali/udftools){.ulink}

Additional dependencies may be required depending on the types of filesystems that you are working with. Please read the "Using Gparted" section below for more information.
:::::

::: {.installation lang="en"}
## Installation of Gparted {#installation-of-gparted .sect2}

Install [Gparted]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To run the tests, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-xhost-root`{.option}: This switch provides an interim workaround to allow GParted to run under Wayland by using xhost to grant and revoke root access to the X11 display.
:::

:::: {.using lang="en"}
## Using Gparted {#using-gparted .sect2}

To manipulate file systems, Gparted has a run time dependency on various file system tools (you only need to install the tools for file systems you actually use): [Hdparm-9.65](../general/hdparm.md "Hdparm-9.65"){.xref} (required for optionally displaying the serial number of a device), [btrfs-progs-7.0](../postlfs/btrfs-progs.md "btrfs-progs-7.0"){.xref}, [dosfstools-4.2](../postlfs/dosfstools.md "dosfstools-4.2"){.xref}, e2fsprogs (installed as part of LFS), [jfsutils-1.1.15](../postlfs/jfsutils.md "jfsutils-1.1.15"){.xref}, [ntfs-3g-2026.2.25](../postlfs/ntfs-3g.md "ntfs-3g-2026.2.25"){.xref}, [xfsprogs-7.0.1](../postlfs/xfsprogs.md "xfsprogs-7.0.1"){.xref}, [mtools](https://ftpmirror.gnu.org/mtools/){.ulink} (required to read and write FAT16/32 volume labels and UUIDs), [hfsutils](https://www.mars.org/home/rob/proj/hfs/){.ulink}, [hfsprogs](https://packages.debian.org/sid/hfsprogs){.ulink}, [nilfs-utils](https://nilfs.sourceforge.io/en/){.ulink}, [Reiser4progs](https://reiser4.wiki.kernel.org/index.php/Reiser4progs){.ulink}, and [reiserfsprogs](https://mirrors.edge.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/){.ulink}.

Root privileges are required to run Gparted. If you want to run the application from the menu, further applications and configuration might be necessary depending on your desktop environment. If you are using KDE Plasma, GNOME, or LXQt, your desktop includes an ssh-askpass implementation, or a wrapper around Polkit that provides this functionality for you. If you are not using one of these desktop environments, an easier solution is use the generic [ssh-askpass-10.3p1](../postlfs/ssh-askpass.md "ssh-askpass-10.3p1"){.xref} package.

::: {.ssh-askpass lang="en"}
### ssh-askpass {#ssh-askpass .sect3}

To use [ssh-askpass-10.3p1](../postlfs/ssh-askpass.md "ssh-askpass-10.3p1"){.xref} if it is installed on your system, run the following commands as the `root`{.systemitem} user:

``` root
cp -v /usr/share/applications/gparted.desktop /usr/share/applications/gparted.desktop.back &&
sed -i 's/Exec=/Exec=sudo -A /'               /usr/share/applications/gparted.desktop
```

Now, when you click on the menu item for Gparted, a dialog will appear asking for the administrator password.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gparted and gparted_polkit (optional)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------------------------------
  []{#gparted-prog}[[**gparted**]{.command}]{.term}            is a shell script which sets up the environment before calling [**gpartedbin**]{.command}
  []{#gparted_polkit}[[**gparted_polkit**]{.command}]{.term}   is an optional script which can be used to run gparted with polkit, from a menu
  ------------------------------------------------------------ -------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](gimp.md "Gimp-3.2.4"){accesskey="p"}

    Gimp-3.2.4

-   [Next](inkscape.md "Inkscape-1.4.4"){accesskey="n"}

    Inkscape-1.4.4

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
