<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](console-fonts.md "About Console Fonts")

    About Console Fonts

-   [Next](devices.md "About Devices")

    About Devices

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# About Firmware {#about-firmware}

<div class="sect1" lang="en">
On some recent PCs it can be necessary, or desirable, to load firmware to make them work at their best. The kernel or kernel drivers look for firmware images in <code class="filename">/lib/firmware</code>. But in LFS <code class="filename">/lib</code> is a symlink to <code class="filename">usr/lib</code>, so the directory containing the firmware files is actually <code class="filename">/usr/lib/firmware</code>.

Currently, most firmware can be found at a **`git`** repository which can be viewed in the browser with the URL <a class="ulink" href="https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain">https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain</a>. For convenience, the LFS Project has created a mirror, updated daily, where these firmware files can be accessed via **`wget`** or a web browser at <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/linux-firmware/">https://anduin.linuxfromscratch.org/BLFS/linux-firmware/</a>.

To get the firmware, point a browser to one of the above repositories and then download the item(s) which you need. If you want all these firmware files (for example you are distributing the system onto multiple hardware systems), either install <a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a> and clone <a class="ulink" href="https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git">https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git</a>, or open this URL in a browser and download the latest snapshot listed in the <code class="literal">Tag</code> table.

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

<a id="linux-firmware-symlink"></a> Note that some required firmware files (and directories) are actually symlinks to other files (or directories). Those symlinks are not stored in the Git repository, instead they are documented in the <code class="filename">WHENCE</code> file. Each line beginning with <code class="literal">Link:</code> describes a symlink. If you are downloading an item you need and it's such a symlink (or in a directory which is such a symlink), you need to create the symlink manually and download the target. On the other hand, if you want all the firmware files, use the <span class="command"><strong>./copy-firmware.sh /usr/lib/firmware</strong></span> command which will copy the firmware files and create all the symlinks in the <code class="filename">WHENCE</code> file, instead of a plain copy command like <span class="command"><strong>cp -r \* /usr/lib/firmware/</strong></span>.
</div>

For some other firmware, particularly for Intel microcode and certain wifi devices, the needed firmware is not available in the above repository. Some of this will be addressed below, but a search of the Internet for needed firmware is sometimes necessary.

Firmware files are conventionally referred to as blobs because you cannot determine what they will do. Note that firmware is distributed under various different licenses which do not permit disassembly or reverse-engineering.

Firmware for PCs falls into four categories:

<div class="itemizedlist">
-   Updates to the CPU to work around errata, usually referred to as microcode.

-   Firmware for video controllers. On x86 machines this is required for ATI devices (Radeon and AMDGPU chips) and may be useful for Intel (Skylake and later) and NVIDIA (Kepler and later) GPUs.

    ATI Radeon and AMDGPU devices all require firmware to be able to use KMS (kernel modesetting - the preferred option) as well as for Xorg.

    Intel integrated GPUs from Skylake onwards can use firmware for GuC (the Graphics microcontroller), and also for the HuC (HEVC/H265 microcontroller which offloads to the GPU) and the DMC (Display Microcontroller) to provide additional low-power states. The GuC and HuC have had a chequered history in the kernel and updated firmware may be disabled by default, depending on your kernel version. Further details may be found at <a class="ulink" href="https://01.org/linuxgraphics/downloads/firmware/">01.org</a> and <a class="ulink" href="https://wiki.archlinux.org/index.php/intel_graphics">Arch linux</a>.

    NVIDIA GPUs from Kepler onwards require signed firmware, otherwise the nouveau driver is unable to provide hardware acceleration. NVIDIA has now released firmware up to Ada Lovelace (GeForce 40 series) to linux-firmware.

-   Firmware updates for wired network ports. Most of them work even without the updates, but they will probably work better with the updated firmware. For some modern laptops, firmware for both wired ethernet (e.g. rtl_nic) and also for bluetooth devices (e.g. qca) is <span class="emphasis"><em>required</em></span> before the wired network can be used.

-   Firmware for other devices, such as wireless NICs. These devices are not required for the PC to boot, but need the firmware before these devices can be used.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Although not needed to load a firmware blob, the following tools may be useful for determining, obtaining, or preparing the needed firmware in order to load it into the system: <a class="xref" href="../general/cpio.md" title="cpio-2.15">cpio-2.15</a> (or <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>), <a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a>, and <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>
</div>

<div class="sect2" lang="en">
## Microcode updates for CPUs {#microcode-updates-for-cpus}

In general, microcode can be loaded by the BIOS or UEFI, and it might be updated by upgrading to a newer version of those. On linux, you can also load the microcode from the kernel if you are using an AMD family 10h or later processor (first introduced late 2007), or an Intel processor from 1998 and later (Pentium4, Core, etc), if updated microcode has been released. These updates only last until the machine is powered off, so they need to be applied on every boot.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

In some rare cases a microcode update from the kernel can be ineffective. For example, despite intel-microcode-20241029 contains the Raptor Lake microcode revision 0x12b which is intended to fix a notorious excessive voltage issue causing stability issues and even permanent CPU damages, when the kernel boots it's already <a class="ulink" href="https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/issues/78#issuecomment-2286857023">too late</a> for the microcode to fix the issue. The only way to fix this issue is updating the BIOS.
</div>

Intel provide updates of their microcode for Skylake and later processors as new vulnerabilities come to light, and have in the past provided updates for processors from SandyBridge onwards, although those are no-longer supported for new fixes. New versions of AMD firmware are rare and usually only apply to a few models, although motherboard manufacturers get AGESA (AMD Generic Encapsulated Software Architecture) updates to change BIOS values, e.g. to support more memory variants, new vulnerability fixes or newer CPUs.

There were two ways of loading the microcode, described as 'early' and 'late'. Early loading happens before userspace has been started, late loading happens after userspace has started. However, late loading is known to be problematic and not supported anymore (see the kernel commit <a class="ulink" href="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d23d33e">x86/microcode: Taint and warn on late loading</a>). Indeed, early loading is needed to work around one particular erratum in early Intel Haswell processors which had TSX enabled. (See <a class="ulink" href="https://www.anandtech.com/show/8376/intel-disables-tsx-instructions-erratum-found-in-haswell-haswelleep-broadwelly/">Intel Disables TSX Instructions: Erratum Found in Haswell, Haswell-E/EP, Broadwell-Y</a>.) Without this update glibc can do the wrong thing in uncommon situations.

In previous versions of this book, late loading of microcode to see if it gets applied was recommended, followed by using an initrd to force early loading. But now that the contents of the Intel microcode tarball is documented, and AMD microcode can be read by a Python script to determine which machines it covers, there is no real reason to use late loading.

It might be still possible to manually force late loading of microcode. But it may cause kernel malfunction and you should take the risk yourself. You will need to reconfigure your kernel for late loading, but early loading is always supported by Linux kernel version 6.6 or later on a x86 (no matter 32-bit or 64-bit) system. The instructions here will show you how to create an initrd for early loading. It is also possible to build the same microcode bin file into the kernel, which allows early loading but requires the kernel to be recompiled to update the microcode.

To confirm what processor(s) you have (if more than one, they will be identical) look in /proc/cpuinfo. Determine the decimal values of the cpu family, model and stepping by running the following command (it will also report the current microcode version):

```bash
head -n7 /proc/cpuinfo
```

Convert the cpu family, model and stepping to pairs of hexadecimal digits, and remember the value of the <span class="quote">“<span class="quote">microcode</span>”</span> field. You can now check if there is any microcode available.

If you are creating an initrd to update firmware for different machines, as a distro would do, go down to 'Early loading of microcode' and cat all the Intel blobs to GenuineIntel.bin or cat all the AMD blobs to AuthenticAMD.bin. This creates a larger initrd - for all Intel machines in the 20200609 update the size was 3.0 MB compared to typically 24 KB for one machine.

<div class="sect3" lang="en">
### Intel Microcode for the CPU {#intel-microcode-for-the-cpu}

The first step is to get the most recent version of the Intel microcode. This must be done by navigating to <a class="ulink" href="https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/releases/">https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/releases/</a> and downloading the latest file there. As of this writing the most secure version of the microcode is microcode-20260227. Extract this file in the normal way, the microcode is in the <code class="filename">intel-ucode</code> directory, containing various blobs with names in the form XX-YY-ZZ. There are also various other files, and a release note.

In the past, intel did not provide any details of which blobs had changed versions, but now the release note details this. You can compare the microcode version in <code class="filename">/proc/cpuinfo</code> with the version for your CPU model in the releasenote to know if there is an update.

The recent firmware for older processors is provided to deal with vulnerabilities which have now been made public, and for some of these such as Microarchitectural Data Sampling (MDS) you might wish to increase the protection by disabling hyperthreading, or alternatively to disable the kernel's default mitigation because of its impact on compile times. Please read the online documentation at <a class="ulink" href="https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/index.md">https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/index.html</a>.

For a Meteor Lake mobile (described as Intel(R) Core(TM) Ultra 5 125H CPU) the relevant values are cpu family 6, model 140, stepping 4 so in this case the required identification is 06-aa-04. The releasenote says the latest microcode for it is versioned 0x25. If the value of the <span class="quote">“<span class="quote">microcode</span>”</span> field in <code class="filename">/proc/cpuinfo</code> is 0x25 or greater, it indicates the microcode update is already applied by the BIOS. Otherwise, proceed to <a class="xref" href="firmware.md#early-microcode" title="Early loading of microcode">the section called “Early loading of microcode”</a>.
</div>

<div class="sect3" lang="en">
### AMD Microcode for the CPU {#amd-microcode-for-the-cpu}

Begin by downloading a container of firmware for your CPU family from <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/linux-firmware/amd-ucode/">https://anduin.linuxfromscratch.org/BLFS/linux-firmware/amd-ucode/</a>. The family is always specified in hex. Families 10h to 14h (16 to 20) are in microcode_amd.bin. Families 15h, 16h, 17h (Zen, Zen+, Zen2) and 19h (Zen3) have their own containers, but very few machines are likely to get updated microcode. Instead, AMD provide an updated AGESA to the motherboard makers, who may provide an updated BIOS using this. There is a Python3 script at <a class="ulink" href="https://github.com/AMDESE/amd_ucode_info/blob/master/amd_ucode_info.py">https://github.com/AMDESE/amd_ucode_info/blob/master/amd_ucode_info.py</a>. Download that script and run it against the bin file to check which processors have updates.

For the very old Athlon(tm) II X2 in these examples the values were cpu family 16, model 5, stepping 3 giving an identification of Family=0x10 Model=0x05 Stepping=0x03. One line of the <span class="command"><strong>amd_ucode_info.py</strong></span> script output describes the microcode version for it:

```console
Family=0x10 Model=0x05 Stepping=0x03: Patch=0x010000c8 Length=960 bytes
```

If the value of the <span class="quote">“<span class="quote">microcode</span>”</span> field in <code class="filename">/proc/cpuinfo</code> is 0x10000c8 or greater, it indicates the BIOS has already applied the microcode update. Otherwise, proceed to <a class="xref" href="firmware.md#early-microcode" title="Early loading of microcode">the section called “Early loading of microcode”</a>.
</div>

<div class="sect3" lang="en">
### Early loading of microcode {#early-loading-of-microcode}

If you have established that updated microcode is available for your system, it is time to prepare it for early loading. This requires an additional package, <a class="xref" href="../general/cpio.md" title="cpio-2.15">cpio-2.15</a> (or <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>) and the creation of an initrd which will need to be added to grub.cfg.

It does not matter where you prepare the initrd, and once it is working you can apply the same initrd to later LFS systems or newer kernels on this same machine, at least until any newer microcode is released. Use the following commands:

```bash
mkdir -p initrd/kernel/x86/microcode
cd initrd
```

For an AMD machine, use the following command (replace \<MYCONTAINER\> with the name of the container for your CPU's family):

```bash
cp -v ../<MYCONTAINER> kernel/x86/microcode/AuthenticAMD.bin
```

Or for an Intel machine copy the appropriate blob using this command:

```bash
cp -v ../intel-ucode/<XX-YY-ZZ> kernel/x86/microcode/GenuineIntel.bin
```

Now prepare the initrd (you may also use <span class="command"><strong>bsdcpio</strong></span> from <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> instead of <span class="command"><strong>cpio</strong></span>):

```bash
find * | cpio -o -H newc > /boot/microcode.img
```

You now need to add a new entry to /boot/grub/grub.cfg and here you should add a new line after the linux line within the stanza. If /boot is a separate mountpoint:

```bash
initrd /microcode.img
```

or this if it is not:

```bash
initrd /boot/microcode.img
```

If you are already booting with an initrd (see <a class="xref" href="initramfs.md" title="About initramfs">the section called “About initramfs”</a>), you should run <span class="command"><strong>mkinitramfs</strong></span> again after putting the appropriate blob or container into <code class="filename">/usr/lib/firmware</code>. More precisely, put an intel blob in a <code class="filename">/usr/lib/firmware/intel-ucode</code> directory or an AMD container in a <code class="filename">/usr/lib/firmware/amd-ucode</code> directory before running <span class="command"><strong>mkinitramfs</strong></span>. Alternatively, you can have both initrd on the same line, such as **`initrd /microcode.img /other-initrd.img`** (adapt that as above if /boot is not a separate mountpoint).

You can now reboot with the added initrd, and then use the following command to check that the early load worked:

```bash
dmesg | grep -e 'microcode' -e 'Linux version' -e 'Command line'
```

If you updated to address vulnerabilities, you can look at the output of the <span class="command"><strong>lscpu</strong></span> command to see what is now reported.

The places and times where early loading happens are very different in AMD and Intel machines. First, an example of an Intel (Meteor Lake mobile) with early loading:

```console
[    0.000000] Linux version 6.17.6 (xry111@stargazer) (gcc (GCC) 15.2.0, GNU ld (GNU Binutils) 2.45) #1 SMP PREEMPT_DYNAMIC Sun Nov  9 21:03:48 CST 2025
[    0.000000] Command line: BOOT_IMAGE=/boot/vmlinuz-6.17.6 root=/dev/nvme0n1p6 ro
[    1.459687] microcode: Current revision: 0x00000025
[    1.459699] microcode: Updated early from: 0x00000024
```

A historic AMD example:

```console
[    0.000000] Linux version 4.15.3 (ken@testserver) (gcc version 7.3.0 (GCC))
               #2 SMP Sun Feb 18 02:32:03 GMT 2018
[    0.000000] Command line: BOOT_IMAGE=/vmlinuz-4.15.3-sda5 root=/dev/sda5 ro
[    0.307619] microcode: microcode updated early to new patch_level=0x010000c8
[    0.307678] microcode: CPU0: patch_level=0x010000c8
[    0.307723] microcode: CPU1: patch_level=0x010000c8
[    0.307795] microcode: Microcode Update Driver: v2.2.
```
</div>
</div>

<div class="sect2" lang="en">
## Firmware for Video Cards {#firmware-for-video-cards}

<div class="sect3" lang="en">
### Firmware for ATI Radeon video chips {#firmware-for-ati-radeon-video-chips}

Early radeon devices only needed a single 2K blob of firmware. Recent devices need several different blobs, and some of them are much bigger. The total size of the radeon firmware directory is over 500K — on a large modern system you can probably spare the space, but it is still redundant to install all the unused files each time you build a system.

A better approach is to install <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a> and then use **`lspci`** to identify which VGA controller is installed.

With that information, check the RadeonFeature page of the Xorg wiki for <a class="ulink" href="https://wiki.x.org/wiki/RadeonFeature/#index5h2">Decoder ring for engineering vs marketing names</a> to identify the family (you may need to know this for the Xorg driver in BLFS — Southern Islands and Sea Islands use the radeonsi driver) and the specific model.

Now that you know which controller you are using, consult the <a class="ulink" href="https://wiki.gentoo.org/wiki/Radeon#Firmware">Radeon</a> page of the Gentoo wiki which has a table listing the required firmware blobs for the various chipsets. Note that Southern Islands and Sea Islands chips use different firmware for kernel 3.17 and later compared to earlier kernels. Identify and download the required blobs then install them:

```bash
mkdir -pv /usr/lib/firmware/radeon
cp -v <YOUR_BLOBS> /usr/lib/firmware/radeon
```

Building the kernel amdgpu driver as a module is recommended because the firmware files need to be accessible at the time it is loaded. If you are building it as a part of the kernel image for any reason, you need to either include the firmware files in the initramfs (read <a class="xref" href="initramfs.md" title="About initramfs">the section called “About initramfs”</a> for details), or include them in the kernel image itself (read <a class="xref" href="firmware.md#firmware-in-kernel-image" title="Include Firmware Blobs in the Kernel Image">the section called “Include Firmware Blobs in the Kernel Image”</a> for details).
</div>

<div class="sect3" lang="en">
### Firmware for AMD/ATI amdgpu video chips {#firmware-for-amdati-amdgpu-video-chips}

All video controllers using the amdgpu kernel driver require firmware, whether you will be using the xorg amdgpu driver, the xserver's modesetting driver, or just kernel modesetting to get a console framebuffer larger than 80x25.

Install <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a> and use that to check the model name (look for 'VGA compatible controller:'). If you have an APU (Accelerated Processing Unit, i.e. CPU and video on the same chip) that will probably tell you the name. If you have a separate amdgpu video card you will need to search to determine which name it uses (e.g. a card described as Advanced Micro Devices, Inc. \[AMD/ATI\] Baffin \[Radeon RX 550 640SP / RX 560/560X\] needs Polaris11 firmware. There is a table of "Family, Chipset name, Product name and Firmware" at the end of the Kernel sections in <a class="ulink" href="https://wiki.gentoo.org/wiki/AMDGPU#Known_firmware_blobs">AMDGPU</a> page of the Gentoo wiki.

Once you have identified the firmware name, install all the relevant files for it. For example, the Baffin card mentioned above has 21 different polaris11\* files, APUs such as renoir and picasso have at least 12 files and might gain more in future updates (e.g. the raven APU now has a 13th file, raven_ta.bin).

```bash
mkdir -pv /usr/lib/firmware/amdgpu
cp -v <YOUR_BLOBS> /usr/lib/firmware/amdgpu
```

If disk space is not a problem, you could install all the current amdgpu firmware files and not worry about exactly which chipset is installed.

Building the kernel amdgpu driver as a module is recommended because the firmware files need to be accessible at the time it is loaded. If you are building it as a part of the kernel image for any reason, you need to either include the firmware files in the initramfs (read <a class="xref" href="initramfs.md" title="About initramfs">the section called “About initramfs”</a> for details), or include them in the kernel image itself (read <a class="xref" href="firmware.md#firmware-in-kernel-image" title="Include Firmware Blobs in the Kernel Image">the section called “Include Firmware Blobs in the Kernel Image”</a> for details).
</div>

<div class="sect3" lang="en">
### Firmware for NVIDIA video chips {#firmware-for-nvidia-video-chips}

Some NVIDIA GPUs from Kepler onwards (including all NVIDIA GeForce RTX GPUs and GTX 9xx series onwards) require firmware signed by NVIDIA to work. For the Nouveau driver, NVIDIA has released the signed firmware files in the <code class="filename">nvidia/</code> directory of linux-firmware. Read <a class="ulink" href="https://nouveau.freedesktop.org/CodeNames.md">the CodeNames page of the Nouveau wiki</a> to figure out the code name of your NVIDIA GPU (for example, the code name of GeForce RTX 5080 is GB203). The directory for the firmware files you need is named as the result converting the code name to lower case (<code class="filename">gb203</code> for the example). The directory (or some of its contents) may be actually a symlink to another directory (or some files in another directory) and you'll then need to <a class="xref" href="firmware.md#linux-firmware-symlink">create the symlink and download its target</a> yourself (for example, <code class="filename">gb207</code> is a symlink to <code class="filename">gb202</code>).

If you can find the directory for your GPU in neither the linux-firmware tree nor the <code class="filename">WHENCE</code> file (as a symlink), it means either your GPU does not need any firmware, or it's newer than Blackwell (RTX 50xx series) and the firmware for it isn't released yet (as at mid 2025).

For the NVIDIA GPUs from Tesla to Kepler, the Nouveau driver requires some extra firmware to support video decoding acceleration. These firmware files are not released by NVIDIA but they can be extracted from the NVIDIA binary driver. For more exact information about which chips need extracted firmware, see <a class="ulink" href="https://nouveau.freedesktop.org/VideoAcceleration.md">the VideoAcceleration of the Nouveau wiki</a>. To extract and install these firmware files, issue:

```bash
wget https://anduin.linuxfromscratch.org/BLFS/nvidia-firmware/extract_firmware.py
wget https://us.download.nvidia.com/XFree86/Linux-x86/340.32/NVIDIA-Linux-x86-340.32.run
sh NVIDIA-Linux-x86-340.32.run --extract-only
python3 extract_firmware.py
mkdir -p /usr/lib/firmware/nouveau
cp -d nv* vuc-* /usr/lib/firmware/nouveau/
```
</div>
</div>

<div class="sect2" lang="en">
## Firmware for Network Interfaces {#firmware-for-network-interfaces}

The kernel likes to load firmware for some network drivers, particularly those from Realtek (the <code class="filename">/usr/lib/linux-firmware/rtl_nic/</code> directory), but they generally appear to work without it. Therefore, you can boot the kernel, check dmesg for messages about this missing firmware, and if necessary download the firmware and put it in the specified directory in <code class="filename">/usr/lib/firmware</code> so that it will be found on subsequent boots. Note that with current kernels this works whether or not the driver is compiled in or built as a module, there is no need to build this firmware into the kernel. Here is an example where the R8169 driver has been compiled in but the firmware was not made available. Once the firmware had been provided, there was no mention of it on later boots.

```console
dmesg | grep firmware | grep r8169
[    7.018028] r8169 0000:01:00.0: Direct firmware load for rtl_nic/rtl8168g-2.fw failed with error -2
[    7.018036] r8169 0000:01:00.0 eth0: unable to load firmware patch rtl_nic/rtl8168g-2.fw (-2)
```
</div>

<div class="sect2" lang="en">
## Firmware for Regulatory Database of Wireless Devices {#firmware-for-regulatory-database-of-wireless-devices}

Different countries have different regulations on the radio spectrum usage of wireless devices. You can install a firmware to make the wireless devices obey local spectrum regulations, so you won't be inquired by local authority or find your wireless NIC jamming the frequencies of other devices (for example, remote controllers). The regulatory database firmware can be downloaded from <a class="ulink" href="https://kernel.org/pub/software/network/wireless-regdb/">https://kernel.org/pub/software/network/wireless-regdb/</a>. To install it, simply extract <code class="filename">regulatory.db</code> and <code class="filename">regulatory.db.p7s</code> from the tarball into <code class="filename">/usr/lib/firmware</code>. Note that either the <code class="option">cfg80211</code> driver needs to be selected as a module for the <code class="filename">regulatory.*</code> files to be loaded, or those files need to be included as firmware into the kernel, as explained above in <a class="xref" href="firmware.md#video-firmware" title="Firmware for Video Cards">the section called “Firmware for Video Cards”</a>.

The access point (AP) would send a country code to your wireless NIC, and <a class="xref" href="../basicnet/wpa_supplicant.md" title="wpa_supplicant-2.11">wpa_supplicant-2.11</a> would tell the kernel to load the regulation of this country from <code class="filename">regulatory.db</code>, and enforce it. Note that several AP don't send this country code, so you may be locked to a rather restricted usage (specially if you want to use your interface as an AP).
</div>

<div class="sect2" lang="en">
## Sound Open Firmware {#sound-open-firmware}

Some systems (especially laptops with a recent Intel CPU) utilize a DSP shipped with the CPU for connection with the audio codec. The Sound Open Firmware must be loaded onto the DSP to make it functional. These firmware files can be downloaded from <a class="ulink" href="https://github.com/thesofproject/sof-bin/releases">https://github.com/thesofproject/sof-bin/releases</a>. Extract the tarball and changing into the extracted directory, then as the <code class="systemitem">root</code> user install the firmware:

```bash
install -vdm755 /usr/lib/firmware/intel &&
cp -rv sof* /usr/lib/firmware/intel/
```

<a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a> needs Use Case Manager configuration files for the systems using Sound Open Firmware as well. Read the <a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a> page for the instructions to install them. Once the firmware is loaded (you may need a reboot so the kernel will load them) and the UCM configuration files are installed, following <a class="xref" href="../multimedia/alsa-utils.md#alsa-utils-config-sect" title="Configuring ALSA Utilities">the section called “Configuring ALSA Utilities”</a> to set up your sound card for ALSA properly.
</div>

<div class="sect2" lang="en">
## Firmware for Other Devices {#firmware-for-other-devices}

Identifying the correct firmware will typically require you to install <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a>, and then use **`lspci`** to identify the device. You should then search online to check which module it uses, which firmware, and where to obtain the firmware — not all of it is in linux-firmware.

If possible, you should begin by using a wired connection when you first boot your LFS system. To use a wireless connection you will need to use a network tools such as <a class="xref" href="../basicnet/iw.md" title="iw-6.17">iw-6.17</a>, <a class="xref" href="../basicnet/wireless_tools.md" title="Wireless Tools-29">Wireless Tools-29</a>, or <a class="xref" href="../basicnet/wpa_supplicant.md" title="wpa_supplicant-2.11">wpa_supplicant-2.11</a>.

Firmware may also be needed for other devices such as some SCSI controllers, bluetooth adaptors, or TV recorders. The same principles apply.
</div>

<div class="sect2" lang="en">
## Include Firmware Blobs in the Kernel Image {#include-firmware-blobs-in-the-kernel-image}

Some drivers, notably the drivers for ATI or AMD GPU, requires the firmware files accessible at the time it is loaded. The easiest method to handle these drivers is building them as a kernel module. An alternative method is creating an initramfs (read <a class="xref" href="initramfs.md" title="About initramfs">the section called “About initramfs”</a> for details) including the firmware files. If you don't want to use either methods, you may include the firmware files in the kernel image itself. Install the needed firmware files into <code class="filename">/usr/lib/firmware</code> first, then set the following kernel configuration and rebuild the kernel:

```console
Device Drivers --->
  Generic Driver Options --->
    Firmware loader --->
      (xx/aa.bin xx/bb.bin) Build named firmware blobs into the kernel binary
                                                           ...  [EXTRA_FIRMWARE]
      # This is the default, you can change it to "/usr/lib/firmware"
      # if you want:
      (/lib/firmware)         Firmware blobs root directory [EXTRA_FIRMWARE_DIR]
```

Replace *`xx/aa.bin xx/bb.bin`* with a whitespace-separated list of paths to the needed firmware files, relative to <code class="filename">/usr/lib/firmware</code>. A method easier than manually typing the list (it may be long) is running the following command:

```bash
echo CONFIG_EXTRA_FIRMWARE='"'$({ cd /usr/lib/firmware; echo amdgpu/* })'"' >> .config
make oldconfig
```

Replace *`amdgpu/*`* with a shell pattern matching the needed firmware files.

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

Do not distribute a kernel image containing the firmware to others or you may violate the GPL.
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](console-fonts.md "About Console Fonts")

    About Console Fonts

-   [Next](devices.md "About Devices")

    About Devices

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
