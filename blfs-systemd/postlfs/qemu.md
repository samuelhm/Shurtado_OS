::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 8. Virtualization

-   [Prev](virtualization.md "Virtualization"){accesskey="p"}

    Virtualization

-   [Next](../general/general.md "General Libraries and Utilities"){accesskey="n"}

    General Libraries and Utilities

-   [Up](virtualization.md "Chapter 8. Virtualization"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qemu}qemu-11.0.1 {#qemu-11.0.1 .sect1}

::::::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to qemu {#introduction-to-qemu .sect2}

[qemu]{.application} is a full virtualization solution for Linux on x86 hardware containing virtualization extensions (Intel VT or AMD-V).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.qemu.org/qemu-11.0.1.tar.xz](https://download.qemu.org/qemu-11.0.1.tar.xz){.ulink}

-   Download MD5 sum: 447640a8e9868d6ff050ce4d3e97694c

-   Download size: 135 MB

-   Estimated disk space required: 2.4 GB (469 MB installed)

-   Estimated build time: 1.3 SBU (add 0.8 SBU for tests, both using parallelism=4)
:::

### Qemu Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} and [Pixman-0.46.4](../general/pixman.md "Pixman-0.46.4"){.xref}

#### Recommended

[alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [dtc-1.8.1](../general/dtc.md "dtc-1.8.1"){.xref}, [libslirp-4.9.3](../basicnet/libslirp.md "libslirp-4.9.3"){.xref}, and [sdl2-compat-2.32.68](../multimedia/sdl2.md "sdl2-compat-2.32.68"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If [dtc-1.8.1](../general/dtc.md "dtc-1.8.1"){.xref} is not installed, the building system will attempt to download a copy of dtc source code from the Internet.
:::

#### Optional

[pipewire-1.6.6](../multimedia/pipewire.md "Pipewire-1.6.6"){.xref} or [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref} (can be used instead of alsa-lib), [BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}, [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [Cyrus SASL-2.1.28](cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [Fuse-3.18.2](fuse.md "Fuse-3.18.2"){.xref}, [GnuTLS-3.8.13](gnutls.md "GnuTLS-3.8.13"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [keyutils-1.6.3](../general/keyutils.md "keyutils-1.6.3"){.xref}, [libaio-0.3.113](../general/libaio.md "libaio-0.3.113"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, [libssh2-1.11.1](../general/libssh2.md "libssh2-1.11.1"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [libtasn1-4.21.0](../general/libtasn1.md "libtasn1-4.21.0"){.xref}, [Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref}, [LZO-2.10](../general/lzo.md "LZO-2.10"){.xref}, [Nettle-4.0](nettle.md "Nettle-4.0"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}, [VTE-0.84.0](../gnome/vte.md "VTE-0.84.0"){.xref}, [capstone](https://www.capstone-engine.org/){.ulink}, [ceph](https://github.com/ceph/ceph/){.ulink}, [daxctl](https://pmem.io/daxctl/){.ulink}, [JACK](https://jackaudio.org/){.ulink}, [glusterfs](https://github.com/gluster/glusterfs){.ulink}, [libbpf](https://github.com/libbpf/libbpf){.ulink}, [libcacard](https://gitlab.freedesktop.org/spice/libcacard){.ulink}, [libcap-ng](https://people.redhat.com/sgrubb/libcap-ng/){.ulink}, [libdw](https://sourceware.org/elfutils/){.ulink}, [libiscsi](https://github.com/sahlberg/libiscsi){.ulink}, [libnfs](https://github.com/sahlberg/libnfs){.ulink}, [libpmem](https://pmem.io/pmdk/libpmem/){.ulink}, [libssh](https://www.libssh.org/){.ulink}, [libu2f-emu](https://github.com/Agnoctopus/libu2f-emu){.ulink}, [lzfse](https://github.com/lzfse/lzfse){.ulink}, [netmap](https://github.com/luigirizzo/netmap){.ulink}, [numactl](https://github.com/numactl/numactl){.ulink}, [rdma-core](https://github.com/linux-rdma/rdma-core){.ulink}, [SELinux](https://github.com/SELinuxProject/selinux){.ulink}, [snappy](https://google.github.io/snappy/){.ulink}, [spice](https://gitlab.freedesktop.org/spice/spice){.ulink}, [usbredir](https://gitlab.freedesktop.org/spice/usbredir){.ulink}, and [VDE](https://github.com/virtualsquare/vde-2){.ulink}

#### Optional (Runtime)

[[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref}]{.phrase}

#### Optional (for building the documentation)

[sphinx_rtd_theme-3.1.0](../general/python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This optional dependencies list is not comprehensive. See the output of [**./configure --help**]{.command} for a more complete list.
:::

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/qemu](https://wiki.linuxfromscratch.org/blfs/wiki/qemu){.ulink}
:::::::

::: {.sect2 lang="en"}
## []{#qemu-prereq}KVM Prerequisites {#kvm-prerequisites .sect2}

Before building [qemu]{.application}, check to see if your processor supports Virtualization Technology (VT):

``` userinput
grep -E '^flags.*(vmx|svm)' /proc/cpuinfo
```

If you get any output, you have VT technology (vmx for Intel processors and svm for AMD processors). You then need to go into your system BIOS and ensure it is enabled. After enabling, reboot back to your LFS instance.
:::

::: {.kernel lang="en"}
## []{#qemu-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
[*] Virtualization --->                                         [VIRTUALIZATION]
  <*/M>   Kernel-based Virtual Machine (KVM) support                       [KVM]
  # Enable the option for your CPU:
  < /*/M> KVM for Intel (and compatible) processors support          [KVM_INTEL]
  < /*/M> KVM for AMD processors support                               [KVM_AMD]
```

The Intel or AMD settings are not both required, but the one matching your system processor is required.

To use the [“[bridge]{.quote}”]{.quote} network device, as explained below, check that [[the section called “Advanced Network Setup”](../basicnet/advanced-network.md "Advanced Network Setup"){.xref} is set up]{.phrase} and the following options in the kernel configuration are enabled:

``` screen
[*] Networking support --->                                                [NET]
  Networking options --->
    <*/M> 802.1d Ethernet Bridging                                      [BRIDGE]

Device Drivers --->
  [*] Network device support --->                                   [NETDEVICES]
    [*]   Network core driver support                                 [NET_CORE]
    <*/M>   Universal TUN/TAP device driver support                        [TUN]
```
:::

:::::: {.installation lang="en"}
## Installation of qemu {#installation-of-qemu .sect2}

The udev rule of LFS only allows the `root`{.systemitem} user, the users owning a local login session supported by the optional runtime dependency [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref}]{.phrase} or the users in the `kvm`{.systemitem} group to use the KVM device. As the `root`{.systemitem} user, add any non-`root`{.systemitem} users that might use the KVM device either without [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref}]{.phrase} installed or remotely (via a SSH connection) to the `kvm`{.systemitem} group:

``` root
usermod -a -G kvm <username>
```

Install [qemu]{.application} by running the following commands:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Qemu is capable of running many targets. The build process is also capable of building multiple targets at one time in a comma delimited list assigned to `--target-list`{.option}. Run [**./configure --help**]{.command} to get a complete list of available targets.
:::

``` userinput
if [ $(uname -m) = i686 ]; then
   QEMU_ARCH=i386-softmmu
else
   QEMU_ARCH=x86_64-softmmu
fi


mkdir -vp build &&
cd        build &&

../configure --prefix=/usr            \
             --sysconfdir=/etc        \
             --localstatedir=/var     \
             --target-list=$QEMU_ARCH \
             --audio-drv-list=alsa    \
             --disable-pa             \
             --enable-slirp           \
             --docdir=/usr/share/doc/qemu-11.0.1 &&

unset QEMU_ARCH &&

make
```

[qemu]{.application} uses [**ninja**]{.command} as a subprocess when building. To run the tests, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Change the permissions and ownership of a helper script, which is needed when using the [“[bridge]{.quote}”]{.quote} network device (see below). Again as the `root`{.systemitem} user, issue:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You need to add any users who might use the [“[bridge]{.quote}”]{.quote} network device into the `kvm`{.systemitem} group even if [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref}]{.phrase} is installed.
:::

``` root
chgrp kvm  /usr/libexec/qemu-bridge-helper &&
chmod 4750 /usr/libexec/qemu-bridge-helper
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

For convenience you may want to create a symbolic link to run the installed program. For instance (as the `root`{.systemitem} user):

``` root
ln -sv qemu-system-`uname -m` /usr/bin/qemu
```
:::
::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--audio-drv-list=alsa`*: This switch sets the audio driver to ALSA. See below for enabling other audio drivers.

*`--disable-pa`*: even if [*pa*]{.emphasis} is not in *`--audio-drv-list`* list, the pulseaudio driver is built, unless disabled by this parameter.

*`--enable-slirp`*: This switch forces the build system to check for [libslirp-4.9.3](../basicnet/libslirp.md "libslirp-4.9.3"){.xref}. Remove it if you don't need the `-netdev user`{.option} support.

`--audio-drv-list=pa --disable-alsa`{.option}: This switch sets the audio driver to pulseaudio. For other drivers see the --audio-drv-list choices in the output of [**./configure --help**]{.command}. The default audio driver is OSS. To enable support for both alsa and pulseaudio, use `--audio-drv-list=alsa,pa`{.option}.
:::

::::: {.using lang="en"}
## Using Qemu {#using-qemu .sect2}

Since using qemu means using a virtual computer, the steps to set up the virtual machine are in close analogy with those to set up a real computer. You'll need to make decisions about CPU, memory, disk, USB devices, network card(s), screen size, etc. Once the [“[hardware]{.quote}”]{.quote} is decided, you'll have for example to choose how to connect the machine to internet, and/or to install an OS. In the following section, we show basic ways of performing those steps. However, qemu is much more powerful than this, and it is strongly advised to read the qemu documentation in `/usr/share/doc/qemu-11.0.1/qemu-doc.html`{.filename}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

It is standard practice to name the computer running qemu [“[host]{.quote}”]{.quote} and the emulated machine running under qemu the [“[guest.]{.quote}”]{.quote} We'll use these notations in the following text.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The following instructions assume the optional symbolic link, `qemu`{.filename}, has been created. Additionally, [**qemu**]{.command} should be run in a graphical environment. It is also possible to use qemu [“[headless]{.quote}”]{.quote} or through SSH. See the documentation for the various possibilities.
:::

### Disk

A virtual disk may be set up in the following way:

``` userinput
VDISK_SIZE=50G
VDISK_FILENAME=vdisk.img
qemu-img create -f qcow2 $VDISK_FILENAME $VDISK_SIZE
```

The virtual disk size and filename should be adjusted as desired. The actual size of the file will be less than specified, but will expand as needed, so it is safe to put a high value.

### Operating System

To install an operating system, download an iso image from your preferred Linux distribution. For the purposes of this example, we'll use `Fedora-16-x86_64-Live-LXDE.iso`{.filename} in the current directory. Run the following:

``` userinput
qemu -enable-kvm                           \
     -drive file=$VDISK_FILENAME           \
     -cdrom Fedora-16-x86_64-Live-LXDE.iso \
     -boot d                               \
     -m 1G
```

Follow the normal installation procedures for the chosen distribution. The *`-boot`* option specifies the boot order of drives as a string of drive letters. Valid drive letters are: a, b (floppy 1 and 2), c (first hard disk), and d (first CD-ROM). The *`-m`* option is the amount of memory to use for the virtual machine. The choice depends on the load of the host. Modern distributions should be comfortable with 4GB. The *`-enable-kvm`* option allows hardware acceleration. Without this switch, the emulation is much slower.

### Defining the virtual hardware

The virtual machine hardware is defined by the qemu command line. An example command is given below:

``` userinput
qemu -enable-kvm                  \
     -smp 4                       \
     -cpu host                    \
     -m 1G                        \
     -drive file=$VDISK_FILENAME  \
     -cdrom grub-img.iso          \
     -boot order=c,once=d,menu=on \
     -net nic,netdev=net0         \
     -netdev user,id=net0         \
     -device ac97                 \
     -vga std                     \
     -serial mon:stdio            \
     -name "fedora-16"
```

### Meaning of the command line options

*`-enable-kvm`*: enable full KVM virtualization support. On some hardware, it may be necessary to add the undocumented `-machine smm=off`{.option} option in order to enable KVM.

*`-smp <N>`*: enable symmetric multiprocessing with \<N\> CPUs.

*`-cpu <model>`*: simulate CPU \<model\>. the list of supported models can be obtained with `-cpu help`{.option}.

*`-drive file=<filename>`*: defines a virtual disk whose image is stored in `<filename>`{.filename}.

*`-cdrom grub-img.iso`*: defines an ISO formatted file to use as a cdrom. Here we use a grub rescue disk, which may become handy if something goes wrong at boot time.

*`-boot order=c,once=d,menu=on`*: defines the boot order for the virtual BIOS.

*`-net nic,netdev=<netid>`*: defines a network card connected to the network device with id \<netid\>.

*`-netdev user,id=<netid>`*: defines the network [“[user]{.quote}”]{.quote} device. This is a virtual local network with addresses 10.0.2.0/24, where the host has address 10.0.2.2 and acts as a gateway to internet, and with a name server at address 10.0.2.3, and an smb server at address 10.0.2.4. A builtin DHCP server can allocate addresses between 10.0.2.15 and 10.0.2.31.

*`-soundhw <model>`*: defines the soundcard model. The list may be obtained with `-soundhw help`{.option}.

*`-vga <type>`*: defines the type of VGA card to emulate. For *`-vga std`*, if you are building a Linux kernel for the guest, it's recommended to enable `CONFIG_DRM_BOCHS`{.option} (as a part of the kernel or a kernel module) to drive all the features of the emulated VGA card, and `CONFIG_FB`{.option} to display the Linux console on it. The other `<type>`{.option} values are not tested by the editors and may require additional dependencies.

*`-serial mon:stdio`*: sends the serial port of the guest (`/dev/ttyS0`{.filename} on linux guests), multiplexed with the qemu monitor, to the standard input and output of the qemu process.

*`-name <name>`*: sets the name of the guest. This name is displayed in the guest window caption. It may be useful if you run several guests at the same time.

`-drive if=pflash,format=raw,readonly=on,file=/usr/share/qemu/edk2-x86_64-code.fd`{.option}: Load a pre-built EDK2 UEFI firmware, instead of the default PC BIOS. Use this option if you want to boot the guest OS with UEFI.

`-drive file=<filename>,if=virtio`{.option}: provides a Virtio interface to the guest kernel for accessing the disk image, instead of simulating a real disk hardware. This can improve disk I/O performance, but it requires a Virtio driver in guest kernel. Use it instead of a plain `-drive`{.option} if the guest kernel supports Virtio. To build a Linux kernel with Virtio support for the guest, use [**make defconfig && make kvm_guest.config**]{.command} to create an initial kernel configuration with the Virtio drives enabled, then make your customization. And, if the guest kernel is Linux, the virtual disks using Virtio interface will be named `vdx`{.filename} in the devtmpfs, instead of `sdx`{.filename}.

`-net nic,netdev=net0,model=virtio-net-pci`{.option}: provides a Virtio interface to the guest kernel for accessing the network interface, instead of simulating a real network interface card. This can improve network I/O performance, but it requires a Virtio driver in guest kernel. Use it instead of a plain `-net`{.option} if the guest kernel supports Virtio.

### Controlling the Emulated Display

To set the resolution of the emulated display for a Xorg server running in the guest Linux system, read [the section called “Fine Tuning Display Settings”](../x/xorg-config.md#xdisplay "Fine Tuning Display Settings"){.xref}.

### Networking

The above solution for networking allows the guest to access the local network through the host (and possibly to access internet through the local routers), but the converse is not true. Not even the host can access the guest, unless port forwarding is enabled. And in the case several guests are running, they cannot communicate with each other. Other network devices can be used for this purpose. For example, there is the [“[socket]{.quote}”]{.quote} device, which allows several guests to share a common virtual network. In the following section, we describe in more details how to set up the [“[bridge]{.quote}”]{.quote} device, which allows the guests to appear as if connected to the local network. All the commands below should be run as the `root`{.systemitem} user.

Allow the host to forward IP packets:

``` root
sysctl -w net.ipv4.ip_forward=1
```

To make this permanent, add the command to `/etc/sysctl.d/60-net-forward.conf:`{.filename}

``` root
cat >> /etc/sysctl.d/60-net-forward.conf << EOF
net.ipv4.ip_forward=1
EOF
```

Set up a required configuration file:

``` root
install -vdm 755 /etc/qemu &&
echo allow br0 > /etc/qemu/bridge.conf
```

In the qemu command line above, replace the switch *`-netdev user,...`* with *`-netdev bridge,...`*.
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [elf2dmp, qemu (symlink), qemu-edid, qemu-ga, qemu-img, qemu-io, qemu-keymap, qemu-nbd, qemu-pr-helper, qemu-storage-daemon, qemu-system-\<arch\>, and qemu-vmsr-helper]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/qemu and /usr/share/doc/qemu-11.0.1 (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Description

  ---------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#elf2dmp}[[**elf2dmp**]{.command}]{.term}                           converts files from elf to dmp format
  []{#qemu-edid}[[**qemu-edid**]{.command}]{.term}                       is a test tool for the qemu EDID generator
  []{#qemu-ga}[[**qemu-ga**]{.command}]{.term}                           implements support for QMP (QEMU Monitor Protocol) commands and events that terminate and originate respectively within the guest using an agent built as part of QEMU
  []{#qemu-img}[[**qemu-img**]{.command}]{.term}                         provides commands to manage QEMU disk images
  []{#qemu-io}[[**qemu-io**]{.command}]{.term}                           is a diagnostic and manipulation program for (virtual) memory media. It is still at an early stage of development
  []{#qemu-keymap}[[**qemu-keymap**]{.command}]{.term}                   generates qemu reverse keymaps from xkb keymaps, which can be used with the qemu "-k" command line switch
  []{#qemu-nbd}[[**qemu-nbd**]{.command}]{.term}                         exports Qemu disk images using the QEMU Disk Network Block Device (NBD) protocol
  []{#qemu-pr-helper}[[**qemu-pr-helper**]{.command}]{.term}             implements the persistent reservation helper for QEMU
  []{#qemu-storage-daemon}[[**qemu-storage-daemon**]{.command}]{.term}   allows a user to modify disk images using the QEMU Monitor Protocol (QMP) without running a VM
  []{#qemu-system}[[**qemu-system-x86_64**]{.command}]{.term}            is the QEMU PC System emulator
  []{#qemu-vmsr-helper}[[**qemu-vmsr-helper**]{.command}]{.term}         is a virtual RAPL MSR helper for qemu
  ---------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::::

::: navfooter
-   [Prev](virtualization.md "Virtualization"){accesskey="p"}

    Virtualization

-   [Next](../general/general.md "General Libraries and Utilities"){accesskey="n"}

    General Libraries and Utilities

-   [Up](virtualization.md "Chapter 8. Virtualization"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
