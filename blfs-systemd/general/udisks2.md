::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](systemd.md "Systemd-260.2"){accesskey="p"}

    Systemd-260.2

-   [Next](unrar.md "UnRar-7.2.4"){accesskey="n"}

    UnRar-7.2.4

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#udisks2}UDisks-2.11.1 {#udisks-2.11.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to UDisks {#introduction-to-udisks .sect2}

The [UDisks]{.application} package provides a daemon, tools and libraries to access and manipulate disks and storage devices.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/storaged-project/udisks/releases/download/udisks-2.11.1/udisks-2.11.1.tar.bz2](https://github.com/storaged-project/udisks/releases/download/udisks-2.11.1/udisks-2.11.1.tar.bz2){.ulink}

-   Download MD5 sum: 55f9f7bbb7986244bb4905c04f8c1542

-   Download size: 1.9 MB

-   Estimated disk space required: 68 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### UDisks Dependencies

#### Required

[libatasmart-0.19](libatasmart.md "libatasmart-0.19"){.xref}, [libblockdev-3.5.0](libblockdev.md "libblockdev-3.5.0"){.xref}, [libgudev-238](libgudev.md "libgudev-238"){.xref}, and [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}

#### Recommended

[[Systemd-260.2](systemd.md "Systemd-260.2"){.xref} (runtime)]{.phrase}

#### Optional (Required if building GNOME)

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[D-Bus Python-1.4.0](python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref} (for the integration tests), [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} (for the man pages), [LVM2-2.03.41](../postlfs/lvm2.md "LVM2-2.03.41"){.xref}, [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} (for the integration tests), [exFAT](https://github.com/relan/exfat){.ulink}, and [libiscsi](https://github.com/sahlberg/libiscsi){.ulink}

#### Optional Runtime Dependencies

[btrfs-progs-7.0](../postlfs/btrfs-progs.md "btrfs-progs-7.0"){.xref}, [dosfstools-4.2](../postlfs/dosfstools.md "dosfstools-4.2"){.xref}, [gptfdisk-1.0.10](../postlfs/gptfdisk.md "gptfdisk-1.0.10"){.xref}, [mdadm-4.6](../postlfs/mdadm.md "mdadm-4.6"){.xref}, and [xfsprogs-7.0.1](../postlfs/xfsprogs.md "xfsprogs-7.0.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of UDisks {#installation-of-udisks .sect2}

Install [UDisks]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     \
            --enable-available-modules &&
make
```

To test the results, issue: [**make check**]{.command}. A more thorough test can be run with [**make ci**]{.command}. You must first create the directories `/var/run/udisks2`{.filename} and `/var/lib/udisks2`{.filename}, and the optional python modules should be present.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.

*`--enable-available-modules`*: This switch enables additional [UDisks2]{.application} functionalities if [libblockdev-3.5.0](libblockdev.md "libblockdev-3.5.0"){.xref} has been built with optional dependencies.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [udisksctl and umount.udisks2]{.segbody}
:::

::: seg
**Installed Library:** [libudisks2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/udisks2, /usr/include/udisks2, /usr/libexec/udisks2, /usr/share/gtk-doc/html/udisks2, and /var/lib/udisks2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
  []{#udisksctl}[[**udisksctl**]{.command}]{.term}            is a command-line program used to interact with the [**udisksd**]{.command} daemon
  []{#umountudisks2}[[**umount.udisks2**]{.command}]{.term}   is a command-line program used to unmount file systems that have been mounted by the [UDisks]{.application} daemon
  []{#libudisks2}[`libudisks2.so`{.filename}]{.term}          contains the [UDisks]{.application} API functions
  ----------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](systemd.md "Systemd-260.2"){accesskey="p"}

    Systemd-260.2

-   [Next](unrar.md "UnRar-7.2.4"){accesskey="n"}

    UnRar-7.2.4

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
