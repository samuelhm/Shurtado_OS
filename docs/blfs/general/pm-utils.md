<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](pax.md "Pax-20240817")

    Pax-20240817

-   [Next](power-profiles-daemon.md "Power-profiles-daemon-0.30")

    Power-profiles-daemon-0.30

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# pm-utils-1.4.1 {#pm-utils-1.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Power Management Utilities {#introduction-to-power-management-utilities}

The <span class="application">Power Management Utilities</span> provide simple shell command line tools to suspend and hibernate the computer. They can be used to run user supplied scripts on suspend and resume.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

On a system using <span class="application">systemd</span> as the init system, <span class="application">systemd</span> already provides this functionality. As a result, this package is probably not needed, and it may conflict with <span class="application">systemd</span>. Read the documentation for <code class="filename">suspend.target</code> and <code class="filename">hibernate.target</code> in the man page <a class="ulink" href="https://man.archlinux.org/man/systemd.special.7">systemd.special(7)</a> for more details.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://pm-utils.freedesktop.org/releases/pm-utils-1.4.1.tar.gz">https://pm-utils.freedesktop.org/releases/pm-utils-1.4.1.tar.gz</a>

-   Download MD5 sum: 1742a556089c36c3a89eb1b957da5a60

-   Download size: 204 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/pm-utils-1.4.1-bugfixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/pm-utils-1.4.1-bugfixes-1.patch</a>
</div>

### Power Management Utilities Dependencies

#### Optional

<a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> (to generate man pages)

#### Optional (runtime)

<a class="xref" href="hdparm.md" title="Hdparm-9.65">Hdparm-9.65</a>, <a class="xref" href="../basicnet/wireless_tools.md" title="Wireless Tools-29">Wireless Tools-29</a>, <a class="ulink" href="https://www.kernel.org/pub/software/network/ethtool/">ethtool</a>, and <a class="ulink" href="https://ftp.debian.org/debian/pool/main/v/vbetool/">vbetool</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

If needed, enable the following options in the kernel configuration and recompile the kernel:

```console
Power management and ACPI options --->
  [*] Suspend to RAM and standby                                       [SUSPEND]
  [*] Hibernation (aka 'suspend to disk')                          [HIBERNATION]
```

Suspend to RAM allows the system to enter sleep states in which main memory is powered and thus its contents are preserved. The method cuts power to most parts of the machine aside from the RAM. Because of the large power savings, it is advisable for laptops to automatically enter this mode when the computer is running on batteries and the lid is closed (or the user is inactive for some time).

Suspend to disk (Hibernation) saves the machine's state into swap space and completely powers off the machine. When the machine is powered on, the state is restored. Until then, there is zero power consumption. Suspend to RAM and hibernation are normally appropriate for portable devices such as laptops, but can be used on workstations. The capability is not really appropriate for servers.

To use hibernation, the kernel parameter resume=/dev/\<swap_partition\> has to be used on the kernel command line (in grub.cfg). The swap partition should be at least the size of the physical RAM on the system.
</div>

<div class="installation" lang="en">
## Installation of Power Management Utilities {#installation-of-power-management-utilities}

First, fix several bugs and a couple of incompatibilities with newer kernels:

```bash
patch -Np1 -i ../pm-utils-1.4.1-bugfixes-1.patch
```

Install <span class="application">Power Management Utilities</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/pm-utils-1.4.1 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you don't have <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> installed, copy pregenerated man pages, as the <code class="systemitem">root</code> user:

```bash
install -v -m644 man/*.1 /usr/share/man/man1 &&
install -v -m644 man/*.8 /usr/share/man/man8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-suspend.8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-hibernate.8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-suspend-hybrid.8
```
</div>

<div class="configuration" lang="en">
## Configuring Power Management Utilities {#configuring-power-management-utilities}

Suspend or resume functionality can be easily modified by installing files into the <code class="filename">/etc/pm/sleep.d</code> directory. These files, known as hooks, are run when the system is put into a sleep state or resumed. Default hooks are located in <code class="filename">/usr/lib/pm-utils/sleep.d</code>, and user hooks should be put in <code class="filename">/etc/pm/sleep.d</code>. See the <a class="ulink" href="https://man.archlinux.org/man/pm-action.8">pm-action(8)</a> man page for more information.

In order to use hibernation with <span class="application">GRUB</span> and a swap partition, you need to add kernel parameter <code class="literal">resume=</code>*`swap_partition`* (e.g. <code class="literal">resume=/dev/sda1</code>) to the kernel line in the <code class="filename">/boot/grub/grub.cfg</code> configuration file.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">on_ac_power, pm-hibernate, pm-is-supported, pm-powersave, pm-suspend and pm-suspend-hybrid</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/pm, /usr/lib/pm-utils and /usr/share/doc/pm-utils-1.4.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="on_ac_power"></a><span class="command"><span class="term"><strong>on_ac_power</strong></span></span>               is a script that determines whether the system is running on AC power (rather than a battery)
  <a id="pm-hibernate"></a><span class="command"><span class="term"><strong>pm-hibernate</strong></span></span>             is a symlink to pm-action script that puts the computer into hibernate mode (the system is fully powered off and system state is saved to disk)
  <a id="pm-is-supported"></a><span class="command"><span class="term"><strong>pm-is-supported</strong></span></span>       is a script that checks whether power management features such as suspend and hibernate are supported
  <a id="pm-powersave"></a><span class="command"><span class="term"><strong>pm-powersave</strong></span></span>             is a script that puts the computer into powersaving (low power) mode
  <a id="pm-suspend"></a><span class="command"><span class="term"><strong>pm-suspend</strong></span></span>                 is a symlink to pm-action script that puts the computer into suspend mode (most devices are shut down and system state is saved in RAM)
  <a id="pm-suspend-hybrid"></a><span class="command"><span class="term"><strong>pm-suspend-hybrid</strong></span></span>   is a symlink to pm-action script that puts the computer into hybrid-suspend mode (the system does everything it needs to hibernate, but suspends instead of shutting down)
  ------------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pax.md "Pax-20240817")

    Pax-20240817

-   [Next](power-profiles-daemon.md "Power-profiles-daemon-0.30")

    Power-profiles-daemon-0.30

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
