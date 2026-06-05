<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 8. Virtualization

-   [Prev](virtualization.md "Virtualization")

    Virtualization

-   [Next](../general/general.md "General Libraries and Utilities")

    General Libraries and Utilities

-   [Up](virtualization.md "Chapter 8. Virtualization")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# qemu-11.0.1 {#qemu-11.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to qemu {#introduction-to-qemu}

<span class="application">qemu</span> is a full virtualization solution for Linux on x86 hardware containing virtualization extensions (Intel VT or AMD-V).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.qemu.org/qemu-11.0.1.tar.xz">https://download.qemu.org/qemu-11.0.1.tar.xz</a>

-   Download MD5 sum: 447640a8e9868d6ff050ce4d3e97694c

-   Download size: 135 MB

-   Estimated disk space required: 2.4 GB (469 MB installed)

-   Estimated build time: 1.3 SBU (add 0.8 SBU for tests, both using parallelism=4)
</div>

### Qemu Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> and <a class="xref" href="../general/pixman.md" title="Pixman-0.46.4">Pixman-0.46.4</a>

#### Recommended

<a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../general/dtc.md" title="dtc-1.8.1">dtc-1.8.1</a>, <a class="xref" href="../basicnet/libslirp.md" title="libslirp-4.9.3">libslirp-4.9.3</a>, and <a class="xref" href="../multimedia/sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If <a class="xref" href="../general/dtc.md" title="dtc-1.8.1">dtc-1.8.1</a> is not installed, the building system will attempt to download a copy of dtc source code from the Internet.
</div>

#### Optional

<a class="xref" href="../multimedia/pipewire.md" title="Pipewire-1.6.6">pipewire-1.6.6</a> or <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a> (can be used instead of alsa-lib), <a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="xref" href="fuse.md" title="Fuse-3.18.2">Fuse-3.18.2</a>, <a class="xref" href="gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a>, <a class="xref" href="../general/libaio.md" title="libaio-0.3.113">libaio-0.3.113</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, <a class="xref" href="../general/libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="../general/libtasn1.md" title="libtasn1-4.21.0">libtasn1-4.21.0</a>, <a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="../general/lzo.md" title="LZO-2.10">LZO-2.10</a>, <a class="xref" href="nettle.md" title="Nettle-4.0">Nettle-4.0</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="../gnome/vte.md" title="VTE-0.84.0">VTE-0.84.0</a>, <a class="ulink" href="https://www.capstone-engine.org/">capstone</a>, <a class="ulink" href="https://github.com/ceph/ceph/">ceph</a>, <a class="ulink" href="https://pmem.io/daxctl/">daxctl</a>, <a class="ulink" href="https://jackaudio.org/">JACK</a>, <a class="ulink" href="https://github.com/gluster/glusterfs">glusterfs</a>, <a class="ulink" href="https://github.com/libbpf/libbpf">libbpf</a>, <a class="ulink" href="https://gitlab.freedesktop.org/spice/libcacard">libcacard</a>, <a class="ulink" href="https://people.redhat.com/sgrubb/libcap-ng/">libcap-ng</a>, <a class="ulink" href="https://sourceware.org/elfutils/">libdw</a>, <a class="ulink" href="https://github.com/sahlberg/libiscsi">libiscsi</a>, <a class="ulink" href="https://github.com/sahlberg/libnfs">libnfs</a>, <a class="ulink" href="https://pmem.io/pmdk/libpmem/">libpmem</a>, <a class="ulink" href="https://www.libssh.org/">libssh</a>, <a class="ulink" href="https://github.com/Agnoctopus/libu2f-emu">libu2f-emu</a>, <a class="ulink" href="https://github.com/lzfse/lzfse">lzfse</a>, <a class="ulink" href="https://github.com/luigirizzo/netmap">netmap</a>, <a class="ulink" href="https://github.com/numactl/numactl">numactl</a>, <a class="ulink" href="https://github.com/linux-rdma/rdma-core">rdma-core</a>, <a class="ulink" href="https://github.com/SELinuxProject/selinux">SELinux</a>, <a class="ulink" href="https://google.github.io/snappy/">snappy</a>, <a class="ulink" href="https://gitlab.freedesktop.org/spice/spice">spice</a>, <a class="ulink" href="https://gitlab.freedesktop.org/spice/usbredir">usbredir</a>, and <a class="ulink" href="https://github.com/virtualsquare/vde-2">VDE</a>

#### Optional (Runtime)

<a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span>

#### Optional (for building the documentation)

<a class="xref" href="../general/python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This optional dependencies list is not comprehensive. See the output of <span class="command"><strong>./configure --help</strong></span> for a more complete list.
</div>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/qemu">https://wiki.linuxfromscratch.org/blfs/wiki/qemu</a>
</div>

<div class="sect2" lang="en">
## KVM Prerequisites {#kvm-prerequisites}

Before building <span class="application">qemu</span>, check to see if your processor supports Virtualization Technology (VT):

```bash
grep -E '^flags.*(vmx|svm)' /proc/cpuinfo
```

If you get any output, you have VT technology (vmx for Intel processors and svm for AMD processors). You then need to go into your system BIOS and ensure it is enabled. After enabling, reboot back to your LFS instance.
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
[*] Virtualization --->                                         [VIRTUALIZATION]
  <*/M>   Kernel-based Virtual Machine (KVM) support                       [KVM]
  # Enable the option for your CPU:
  < /*/M> KVM for Intel (and compatible) processors support          [KVM_INTEL]
  < /*/M> KVM for AMD processors support                               [KVM_AMD]
```

The Intel or AMD settings are not both required, but the one matching your system processor is required.

To use the <span class="quote">“<span class="quote">bridge</span>”</span> network device, as explained below, check that <a class="xref" href="../basicnet/advanced-network.md" title="Advanced Network Setup"><span class="phrase">the section called “Advanced Network Setup”</a> is set up</span> and the following options in the kernel configuration are enabled:

```console
[*] Networking support --->                                                [NET]
  Networking options --->
    <*/M> 802.1d Ethernet Bridging                                      [BRIDGE]

Device Drivers --->
  [*] Network device support --->                                   [NETDEVICES]
    [*]   Network core driver support                                 [NET_CORE]
    <*/M>   Universal TUN/TAP device driver support                        [TUN]
```
</div>

<div class="installation" lang="en">
## Installation of qemu {#installation-of-qemu}

The udev rule of LFS only allows the <code class="systemitem">root</code> user, the users owning a local login session supported by the optional runtime dependency <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span> or the users in the <code class="systemitem">kvm</code> group to use the KVM device. As the <code class="systemitem">root</code> user, add any non-<code class="systemitem">root</code> users that might use the KVM device either without <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span> installed or remotely (via a SSH connection) to the <code class="systemitem">kvm</code> group:

```bash
usermod -a -G kvm <username>
```

Install <span class="application">qemu</span> by running the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Qemu is capable of running many targets. The build process is also capable of building multiple targets at one time in a comma delimited list assigned to <code class="option">--target-list</code>. Run <span class="command"><strong>./configure --help</strong></span> to get a complete list of available targets.
</div>

```bash
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

<span class="application">qemu</span> uses <span class="command"><strong>ninja</strong></span> as a subprocess when building. To run the tests, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Change the permissions and ownership of a helper script, which is needed when using the <span class="quote">“<span class="quote">bridge</span>”</span> network device (see below). Again as the <code class="systemitem">root</code> user, issue:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

You need to add any users who might use the <span class="quote">“<span class="quote">bridge</span>”</span> network device into the <code class="systemitem">kvm</code> group even if <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span> is installed.
</div>

```bash
chgrp kvm  /usr/libexec/qemu-bridge-helper &&
chmod 4750 /usr/libexec/qemu-bridge-helper
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

For convenience you may want to create a symbolic link to run the installed program. For instance (as the <code class="systemitem">root</code> user):

```bash
ln -sv qemu-system-`uname -m` /usr/bin/qemu
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--audio-drv-list=alsa`*: This switch sets the audio driver to ALSA. See below for enabling other audio drivers.

*`--disable-pa`*: even if <span class="emphasis"><em>pa</em></span> is not in *`--audio-drv-list`* list, the pulseaudio driver is built, unless disabled by this parameter.

*`--enable-slirp`*: This switch forces the build system to check for <a class="xref" href="../basicnet/libslirp.md" title="libslirp-4.9.3">libslirp-4.9.3</a>. Remove it if you don't need the <code class="option">-netdev user</code> support.

<code class="option">--audio-drv-list=pa --disable-alsa</code>: This switch sets the audio driver to pulseaudio. For other drivers see the --audio-drv-list choices in the output of <span class="command"><strong>./configure --help</strong></span>. The default audio driver is OSS. To enable support for both alsa and pulseaudio, use <code class="option">--audio-drv-list=alsa,pa</code>.
</div>

<div class="using" lang="en">
## Using Qemu {#using-qemu}

Since using qemu means using a virtual computer, the steps to set up the virtual machine are in close analogy with those to set up a real computer. You'll need to make decisions about CPU, memory, disk, USB devices, network card(s), screen size, etc. Once the <span class="quote">“<span class="quote">hardware</span>”</span> is decided, you'll have for example to choose how to connect the machine to internet, and/or to install an OS. In the following section, we show basic ways of performing those steps. However, qemu is much more powerful than this, and it is strongly advised to read the qemu documentation in <code class="filename">/usr/share/doc/qemu-11.0.1/qemu-doc.html</code>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

It is standard practice to name the computer running qemu <span class="quote">“<span class="quote">host</span>”</span> and the emulated machine running under qemu the <span class="quote">“<span class="quote">guest.</span>”</span> We'll use these notations in the following text.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The following instructions assume the optional symbolic link, <code class="filename">qemu</code>, has been created. Additionally, <span class="command"><strong>qemu</strong></span> should be run in a graphical environment. It is also possible to use qemu <span class="quote">“<span class="quote">headless</span>”</span> or through SSH. See the documentation for the various possibilities.
</div>

### Disk

A virtual disk may be set up in the following way:

```bash
VDISK_SIZE=50G
VDISK_FILENAME=vdisk.img
qemu-img create -f qcow2 $VDISK_FILENAME $VDISK_SIZE
```

The virtual disk size and filename should be adjusted as desired. The actual size of the file will be less than specified, but will expand as needed, so it is safe to put a high value.

### Operating System

To install an operating system, download an iso image from your preferred Linux distribution. For the purposes of this example, we'll use <code class="filename">Fedora-16-x86_64-Live-LXDE.iso</code> in the current directory. Run the following:

```bash
qemu -enable-kvm                           \
     -drive file=$VDISK_FILENAME           \
     -cdrom Fedora-16-x86_64-Live-LXDE.iso \
     -boot d                               \
     -m 1G
```

Follow the normal installation procedures for the chosen distribution. The *`-boot`* option specifies the boot order of drives as a string of drive letters. Valid drive letters are: a, b (floppy 1 and 2), c (first hard disk), and d (first CD-ROM). The *`-m`* option is the amount of memory to use for the virtual machine. The choice depends on the load of the host. Modern distributions should be comfortable with 4GB. The *`-enable-kvm`* option allows hardware acceleration. Without this switch, the emulation is much slower.

### Defining the virtual hardware

The virtual machine hardware is defined by the qemu command line. An example command is given below:

```bash
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

*`-enable-kvm`*: enable full KVM virtualization support. On some hardware, it may be necessary to add the undocumented <code class="option">-machine smm=off</code> option in order to enable KVM.

*`-smp <N>`*: enable symmetric multiprocessing with \<N\> CPUs.

*`-cpu <model>`*: simulate CPU \<model\>. the list of supported models can be obtained with <code class="option">-cpu help</code>.

*`-drive file=<filename>`*: defines a virtual disk whose image is stored in <code class="filename"><filename></code>.

*`-cdrom grub-img.iso`*: defines an ISO formatted file to use as a cdrom. Here we use a grub rescue disk, which may become handy if something goes wrong at boot time.

*`-boot order=c,once=d,menu=on`*: defines the boot order for the virtual BIOS.

*`-net nic,netdev=<netid>`*: defines a network card connected to the network device with id \<netid\>.

*`-netdev user,id=<netid>`*: defines the network <span class="quote">“<span class="quote">user</span>”</span> device. This is a virtual local network with addresses 10.0.2.0/24, where the host has address 10.0.2.2 and acts as a gateway to internet, and with a name server at address 10.0.2.3, and an smb server at address 10.0.2.4. A builtin DHCP server can allocate addresses between 10.0.2.15 and 10.0.2.31.

*`-soundhw <model>`*: defines the soundcard model. The list may be obtained with <code class="option">-soundhw help</code>.

*`-vga <type>`*: defines the type of VGA card to emulate. For *`-vga std`*, if you are building a Linux kernel for the guest, it's recommended to enable <code class="option">CONFIG_DRM_BOCHS</code> (as a part of the kernel or a kernel module) to drive all the features of the emulated VGA card, and <code class="option">CONFIG_FB</code> to display the Linux console on it. The other <code class="option"><type></code> values are not tested by the editors and may require additional dependencies.

*`-serial mon:stdio`*: sends the serial port of the guest (<code class="filename">/dev/ttyS0</code> on linux guests), multiplexed with the qemu monitor, to the standard input and output of the qemu process.

*`-name <name>`*: sets the name of the guest. This name is displayed in the guest window caption. It may be useful if you run several guests at the same time.

<code class="option">-drive if=pflash,format=raw,readonly=on,file=/usr/share/qemu/edk2-x86_64-code.fd</code>: Load a pre-built EDK2 UEFI firmware, instead of the default PC BIOS. Use this option if you want to boot the guest OS with UEFI.

<code class="option">-drive file=<filename>,if=virtio</code>: provides a Virtio interface to the guest kernel for accessing the disk image, instead of simulating a real disk hardware. This can improve disk I/O performance, but it requires a Virtio driver in guest kernel. Use it instead of a plain <code class="option">-drive</code> if the guest kernel supports Virtio. To build a Linux kernel with Virtio support for the guest, use <span class="command"><strong>make defconfig && make kvm_guest.config</strong></span> to create an initial kernel configuration with the Virtio drives enabled, then make your customization. And, if the guest kernel is Linux, the virtual disks using Virtio interface will be named <code class="filename">vdx</code> in the devtmpfs, instead of <code class="filename">sdx</code>.

<code class="option">-net nic,netdev=net0,model=virtio-net-pci</code>: provides a Virtio interface to the guest kernel for accessing the network interface, instead of simulating a real network interface card. This can improve network I/O performance, but it requires a Virtio driver in guest kernel. Use it instead of a plain <code class="option">-net</code> if the guest kernel supports Virtio.

### Controlling the Emulated Display

To set the resolution of the emulated display for a Xorg server running in the guest Linux system, read <a class="xref" href="../x/xorg-config.md#xdisplay" title="Fine Tuning Display Settings">the section called “Fine Tuning Display Settings”</a>.

### Networking

The above solution for networking allows the guest to access the local network through the host (and possibly to access internet through the local routers), but the converse is not true. Not even the host can access the guest, unless port forwarding is enabled. And in the case several guests are running, they cannot communicate with each other. Other network devices can be used for this purpose. For example, there is the <span class="quote">“<span class="quote">socket</span>”</span> device, which allows several guests to share a common virtual network. In the following section, we describe in more details how to set up the <span class="quote">“<span class="quote">bridge</span>”</span> device, which allows the guests to appear as if connected to the local network. All the commands below should be run as the <code class="systemitem">root</code> user.

Allow the host to forward IP packets:

```bash
sysctl -w net.ipv4.ip_forward=1
```

To make this permanent, add the command to <code class="filename">/etc/sysctl.d/60-net-forward.conf:</code>

```bash
cat >> /etc/sysctl.d/60-net-forward.conf << EOF
net.ipv4.ip_forward=1
EOF
```

Set up a required configuration file:

```bash
install -vdm 755 /etc/qemu &&
echo allow br0 > /etc/qemu/bridge.conf
```

In the qemu command line above, replace the switch *`-netdev user,...`* with *`-netdev bridge,...`*.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">elf2dmp, qemu (symlink), qemu-edid, qemu-ga, qemu-img, qemu-io, qemu-keymap, qemu-nbd, qemu-pr-helper, qemu-storage-daemon, qemu-system-\<arch\>, and qemu-vmsr-helper</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/qemu and /usr/share/doc/qemu-11.0.1 (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Description

  ---------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="elf2dmp"></a><span class="command"><span class="term"><strong>elf2dmp</strong></span></span>                           converts files from elf to dmp format
  <a id="qemu-edid"></a><span class="command"><span class="term"><strong>qemu-edid</strong></span></span>                       is a test tool for the qemu EDID generator
  <a id="qemu-ga"></a><span class="command"><span class="term"><strong>qemu-ga</strong></span></span>                           implements support for QMP (QEMU Monitor Protocol) commands and events that terminate and originate respectively within the guest using an agent built as part of QEMU
  <a id="qemu-img"></a><span class="command"><span class="term"><strong>qemu-img</strong></span></span>                         provides commands to manage QEMU disk images
  <a id="qemu-io"></a><span class="command"><span class="term"><strong>qemu-io</strong></span></span>                           is a diagnostic and manipulation program for (virtual) memory media. It is still at an early stage of development
  <a id="qemu-keymap"></a><span class="command"><span class="term"><strong>qemu-keymap</strong></span></span>                   generates qemu reverse keymaps from xkb keymaps, which can be used with the qemu "-k" command line switch
  <a id="qemu-nbd"></a><span class="command"><span class="term"><strong>qemu-nbd</strong></span></span>                         exports Qemu disk images using the QEMU Disk Network Block Device (NBD) protocol
  <a id="qemu-pr-helper"></a><span class="command"><span class="term"><strong>qemu-pr-helper</strong></span></span>             implements the persistent reservation helper for QEMU
  <a id="qemu-storage-daemon"></a><span class="command"><span class="term"><strong>qemu-storage-daemon</strong></span></span>   allows a user to modify disk images using the QEMU Monitor Protocol (QMP) without running a VM
  <a id="qemu-system"></a><span class="command"><span class="term"><strong>qemu-system-x86_64</strong></span></span>            is the QEMU PC System emulator
  <a id="qemu-vmsr-helper"></a><span class="command"><span class="term"><strong>qemu-vmsr-helper</strong></span></span>         is a virtual RAPL MSR helper for qemu
  ---------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](virtualization.md "Virtualization")

    Virtualization

-   [Next](../general/general.md "General Libraries and Utilities")

    General Libraries and Utilities

-   [Up](virtualization.md "Chapter 8. Virtualization")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
