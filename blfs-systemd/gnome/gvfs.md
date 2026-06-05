::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-backgrounds.md "gnome-backgrounds-50.0"){accesskey="p"}

    gnome-backgrounds-50.0

-   [Next](gexiv2.md "gexiv2-0.16.0"){accesskey="n"}

    gexiv2-0.16.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gvfs}Gvfs-1.60.0 {#gvfs-1.60.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gvfs {#introduction-to-gvfs .sect2}

The [Gvfs]{.application} package is a userspace virtual filesystem designed to work with the I/O abstractions of GLib's GIO library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gvfs/1.60/gvfs-1.60.0.tar.xz](https://download.gnome.org/sources/gvfs/1.60/gvfs-1.60.0.tar.xz){.ulink}

-   Download MD5 sum: 36e8616c3d315cde92d2560f99f7c5c8

-   Download size: 1.2 MB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.1 SBU (using parallelism=4)
:::

### Gvfs Dependencies

#### Required

[dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, [Gcr-4.4.0.1](gcr4.md "Gcr-4.4.0.1"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, and [libsecret-0.21.7](libsecret.md "libsecret-0.21.7"){.xref}

#### Recommended

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libcdio-2.1.0](../multimedia/libcdio.md "libcdio-2.1.0"){.xref}, [libgudev-238](../general/libgudev.md "libgudev-238"){.xref}, [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}, [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} (runtime),]{.phrase} and [UDisks-2.11.1](../general/udisks2.md "UDisks-2.11.1"){.xref}

#### Optional

[Apache-2.4.67](../server/apache.md "Apache-2.4.67"){.xref}, [Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}, [Fuse-3.18.2](../postlfs/fuse.md "Fuse-3.18.2"){.xref}, [gnome-online-accounts-3.58.1](gnome-online-accounts.md "gnome-online-accounts-3.58.1"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref}, [Samba-4.24.0](../basicnet/samba.md "Samba-4.24.0"){.xref}, [gnome-desktop-testing](https://download.gnome.org/sources/gnome-desktop-testing/){.ulink} (for tests), [libbluray](https://www.videolan.org/developers/libbluray.md){.ulink}, [libgdata](https://gitlab.gnome.org/GNOME/libgdata){.ulink}, [libgphoto2](http://www.gphoto.org/){.ulink}, [libimobiledevice](https://libimobiledevice.org/){.ulink}, [libmsgraph](https://gitlab.gnome.org/GNOME/msgraph){.ulink}, [libmtp](https://libmtp.sourceforge.net/){.ulink}, [libnfs](https://github.com/sahlberg/libnfs/){.ulink}, and [Twisted](https://twisted.org/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Gvfs {#installation-of-gvfs .sect2}

Install [Gvfs]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup               \
      --prefix=/usr       \
      --buildtype=release \
      -D onedrive=false   \
      -D fuse=false       \
      -D gphoto2=false    \
      -D afc=false        \
      -D bluray=false     \
      -D nfs=false        \
      -D mtp=false        \
      -D smb=false        \
      -D dnssd=false      \
      -D goa=false        \
      -D google=false     .. &&
ninja
```

The test suite requires [gnome-desktop-testing]{.application}, which is beyond the scope of BLFS.

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

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D <option>=false`*: These switches are required if the corresponding dependency is not installed. Remove those where you have installed the corresponding application and wish to use it with [Gvfs]{.application}. The dnssd option requires avahi and both goa and google require GNOME Online Accounts. The google option also requires the libgdata package, which has been removed from BLFS. The onedrive support requires the libmsgraph package.

`-D cdda=false`{.option}: This switch is required if libcdio is not installed. The cdda backend is useless on machines without a CDROM/DVD drive.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgvfscommon.so, libgvfsdaemon.so and some under /usr/lib/gio/modules/]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gvfs-client and /usr/{lib,share}/gvfs]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------------------------
  []{#libgvfscommon}[`libgvfscommon.so`{.filename}]{.term}   contains the common API functions used in [Gvfs]{.application} programs
  ---------------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gnome-backgrounds.md "gnome-backgrounds-50.0"){accesskey="p"}

    gnome-backgrounds-50.0

-   [Next](gexiv2.md "gexiv2-0.16.0"){accesskey="n"}

    gexiv2-0.16.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
