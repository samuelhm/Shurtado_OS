::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 9. System Configuration

-   [Prev](network.md "General Network Configuration"){accesskey="p"}

    General Network Configuration

-   [Next](symlinks.md "Managing Devices"){accesskey="n"}

    Managing Devices

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-config-udev}9.3. Overview of Device and Module Handling {#overview-of-device-and-module-handling .sect1}

::::::::::::::::::: {.sect1 lang="en"}
In [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref}, we installed the udev daemon when [systemd]{.phrase} was built. Before we go into the details regarding how udev works, a brief history of previous methods of handling devices is in order.

Linux systems in general traditionally used a static device creation method, whereby a great many device nodes were created under `/dev`{.filename} (sometimes literally thousands of nodes), regardless of whether the corresponding hardware devices actually existed. This was typically done via a [**MAKEDEV**]{.command} script, which contained a number of calls to the [**mknod**]{.command} program with the relevant major and minor device numbers for every possible device that might exist in the world.

Using the udev method, device nodes are only created for those devices which are detected by the kernel. These device nodes are created each time the system boots; they are stored in a `devtmpfs`{.systemitem} file system (a virtual file system that resides entirely in system memory). Device nodes do not require much space, so the memory that is used is negligible.

::: {.sect2 lang="en"}
## 9.3.1. History {#history .sect2}

In February 2000, a new filesystem called `devfs`{.systemitem} was merged into the 2.3.46 kernel and was made available during the 2.4 series of stable kernels. Although it was present in the kernel source itself, this method of creating devices dynamically never received overwhelming support from the core kernel developers.

The main problem with the approach adopted by `devfs`{.systemitem} was the way it handled device detection, creation, and naming. The latter issue, that of device node naming, was perhaps the most critical. It is generally accepted that if device names are configurable, the device naming policy should be chosen by system administrators, and not imposed on them by the developer(s). The `devfs`{.systemitem} file system also suffered from race conditions that were inherent in its design; these could not be fixed without a substantial revision of the kernel. `devfs`{.systemitem} was marked as deprecated for a long time, and was finally removed from the kernel in June, 2006.

With the development of the unstable 2.5 kernel tree, later released as the 2.6 series of stable kernels, a new virtual filesystem called `sysfs`{.systemitem} came to be. The job of `sysfs`{.systemitem} is to provide information about the system\'s hardware configuration to userspace processes. With this userspace-visible representation, it became possible to develop a userspace replacement for `devfs`{.systemitem}.
:::

::::::: {.sect2 lang="en"}
## 9.3.2. Udev Implementation {#udev-implementation .sect2}

::: sect3
### 9.3.2.1. Sysfs {#sysfs .sect3}

The `sysfs`{.systemitem} filesystem was mentioned briefly above. One may wonder how `sysfs`{.systemitem} knows about the devices present on a system and what device numbers should be used for them. Drivers that have been compiled into the kernel register their objects in `sysfs`{.systemitem} (devtmpfs internally) as they are detected by the kernel. For drivers compiled as modules, registration happens when the module is loaded. Once the `sysfs`{.systemitem} filesystem is mounted (on `/sys`{.filename}), data which the drivers have registered with `sysfs`{.systemitem} are available to userspace processes and to udevd for processing (including modifications to device nodes).
:::

::: sect3
### []{#ch-config-udev-device-node-creation}9.3.2.2. Device Node Creation {#device-node-creation .sect3}

Device files are created by the kernel in the `devtmpfs`{.systemitem} file system. Any driver that wishes to register a device node will use the `devtmpfs`{.systemitem} (via the driver core) to do it. When a `devtmpfs`{.systemitem} instance is mounted on `/dev`{.filename}, the device node will initially be exposed to userspace with a fixed name, permissions, and owner.

A short time later, the kernel will send a uevent to [**udevd**]{.command}. Based on the rules specified in the files within the `/etc/udev/rules.d`{.filename}, `/usr/lib/udev/rules.d`{.filename}, and `/run/udev/rules.d`{.filename} directories, [**udevd**]{.command} will create additional symlinks to the device node, or change its permissions, owner, or group, or modify the internal [**udevd**]{.command} database entry (name) for that object.

The rules in these three directories are numbered and all three directories are merged together. If [**udevd**]{.command} can\'t find a rule for the device it is creating, it will leave the permissions and ownership at whatever `devtmpfs`{.systemitem} used initially.
:::

::: sect3
### []{#module-loading}9.3.2.3. Module Loading {#module-loading .sect3}

Device drivers compiled as modules may have aliases built into them. Aliases are visible in the output of the [**modinfo**]{.command} program and are usually related to the bus-specific identifiers of devices supported by a module. For example, the [*snd-fm801*]{.emphasis} driver supports PCI devices with vendor ID 0x1319 and device ID 0x0801, and has an alias of `pci:v00001319d00000801sv*sd*bc04sc01i*`{.literal}. For most devices, the bus driver exports the alias of the driver that would handle the device via `sysfs`{.systemitem}. E.g., the `/sys/bus/pci/devices/0000:00:0d.0/modalias`{.filename} file might contain the string `pci:v00001319d00000801sv00001319sd00001319bc04sc01i00`{.literal}. The default rules provided with udev will cause [**udevd**]{.command} to call out to [**/sbin/modprobe**]{.command} with the contents of the `MODALIAS`{.envar} uevent environment variable (which should be the same as the contents of the `modalias`{.filename} file in sysfs), thus loading all modules whose aliases match this string after wildcard expansion.

In this example, this means that, in addition to [*snd-fm801*]{.emphasis}, the obsolete (and unwanted) [*forte*]{.emphasis} driver will be loaded if it is available. See below for ways in which the loading of unwanted drivers can be prevented.

The kernel itself is also able to load modules for network protocols, filesystems, and NLS support on demand.
:::

::: sect3
### 9.3.2.4. Handling Hotpluggable/Dynamic Devices {#handling-hotpluggabledynamic-devices .sect3}

When you plug in a device, such as a Universal Serial Bus (USB) MP3 player, the kernel recognizes that the device is now connected and generates a uevent. This uevent is then handled by [**udevd**]{.command} as described above.
:::
:::::::

:::::::::: {.sect2 lang="en"}
## 9.3.3. Problems with Loading Modules and Creating Devices {#problems-with-loading-modules-and-creating-devices .sect2}

There are a few possible problems when it comes to automatically creating device nodes.

::: sect3
### 9.3.3.1. A Kernel Module Is Not Loaded Automatically {#a-kernel-module-is-not-loaded-automatically .sect3}

Udev will only load a module if it has a bus-specific alias and the bus driver properly exports the necessary aliases to `sysfs`{.systemitem}. In other cases, one should arrange module loading by other means. With Linux-7.0.10, udev is known to load properly-written drivers for INPUT, IDE, PCI, USB, SCSI, SERIO, and FireWire devices.

To determine if the device driver you require has the necessary support for udev, run [**modinfo**]{.command} with the module name as the argument. Now try locating the device directory under `/sys/bus`{.filename} and check whether there is a `modalias`{.filename} file there.

If the `modalias`{.filename} file exists in `sysfs`{.systemitem}, the driver supports the device and can talk to it directly, but doesn\'t have the alias, it is a bug in the driver. Load the driver without the help from udev and expect the issue to be fixed later.

If there is no `modalias`{.filename} file in the relevant directory under `/sys/bus`{.filename}, this means that the kernel developers have not yet added modalias support to this bus type. With Linux-7.0.10, this is the case with ISA busses. Expect this issue to be fixed in later kernel versions.

Udev is not intended to load ["[wrapper]{.quote}"]{.quote} drivers such as [*snd-pcm-oss*]{.emphasis} and non-hardware drivers such as [*loop*]{.emphasis} at all.
:::

::: sect3
### 9.3.3.2. A Kernel Module Is Not Loaded Automatically, and Udev Is Not Intended to Load It {#a-kernel-module-is-not-loaded-automatically-and-udev-is-not-intended-to-load-it .sect3}

If the ["[wrapper]{.quote}"]{.quote} module only enhances the functionality provided by some other module (e.g., [*snd-pcm-oss*]{.emphasis} enhances the functionality of [*snd-pcm*]{.emphasis} by making the sound cards available to OSS applications), configure [**modprobe**]{.command} to load the wrapper after udev loads the wrapped module. To do this, add a ["[softdep]{.quote}"]{.quote} line to the corresponding `/etc/modprobe.d/`{.filename}*`<filename>`*`.conf`{.filename} file. For example:

``` screen
softdep snd-pcm post: snd-pcm-oss
```

Note that the ["[softdep]{.quote}"]{.quote} command also allows `pre:`{.literal} dependencies, or a mixture of both `pre:`{.literal} and `post:`{.literal} dependencies. See the [modprobe.d(5)](https://man.archlinux.org/man/modprobe.d.5){.ulink} manual page for more information on ["[softdep]{.quote}"]{.quote} syntax and capabilities.
:::

::: sect3
### 9.3.3.3. Udev Loads Some Unwanted Module {#udev-loads-some-unwanted-module .sect3}

Either don\'t build the module, or blacklist it in a `/etc/modprobe.d/blacklist.conf`{.filename} file as done with the [*forte*]{.emphasis} module in the example below:

``` screen
blacklist forte
```

Blacklisted modules can still be loaded manually with the explicit [**modprobe**]{.command} command.
:::

::: sect3
### 9.3.3.4. Udev Creates a Device Incorrectly, or Makes the Wrong Symlink {#udev-creates-a-device-incorrectly-or-makes-the-wrong-symlink .sect3}

This usually happens if a rule unexpectedly matches a device. For example, a poorly-written rule can match both a SCSI disk (as desired) and the corresponding SCSI generic device (incorrectly) by vendor. Find the offending rule and make it more specific, with the help of the [**udevadm info**]{.command} command.
:::

::: sect3
### 9.3.3.5. Udev Rule Works Unreliably {#udev-rule-works-unreliably .sect3}

This may be another manifestation of the previous problem. If not, and your rule uses `sysfs`{.systemitem} attributes, it may be a kernel timing issue, to be fixed in later kernels. For now, you can work around it by creating a rule that waits for the used `sysfs`{.systemitem} attribute and appending it to the `/etc/udev/rules.d/10-wait_for_sysfs.rules`{.filename} file (create this file if it does not exist). Please notify the LFS Development list if you do so and it helps.
:::

::: sect3
### 9.3.3.6. Udev Does Not Create a Device {#udev-does-not-create-a-device .sect3}

First, be certain that the driver is built into the kernel or already loaded as a module, and that udev isn\'t creating a misnamed device.

If a kernel driver does not export its data to `sysfs`{.systemitem}, udev lacks the information needed to create a device node. This is most likely to happen with third party drivers from outside the kernel tree. Create a static device node in `/usr/lib/udev/devices`{.filename} with the appropriate major/minor numbers (see the file `devices.txt`{.filename} inside the kernel documentation or the documentation provided by the third party driver vendor). The static device node will be copied to `/dev`{.filename} by [**udev**]{.command}.
:::

::: sect3
### 9.3.3.7. Device Naming Order Changes Randomly After Rebooting {#device-naming-order-changes-randomly-after-rebooting .sect3}

This is due to the fact that udev, by design, handles uevents and loads modules in parallel, and thus in an unpredictable order. This will never be ["[fixed.]{.quote}"]{.quote} You should not rely upon the kernel device names being stable. Instead, create your own rules that make symlinks with stable names based on some stable attributes of the device, such as a serial number or the output of various \*\_id utilities installed by udev. See [Section 9.4, "Managing Devices"](symlinks.md "9.4. Managing Devices"){.xref} and [Section 9.2, "General Network Configuration"](network.md "9.2. General Network Configuration"){.xref} for examples.
:::
::::::::::

:::: {.sect2 lang="en"}
## 9.3.4. Useful Reading {#useful-reading .sect2}

Additional helpful documentation is available at the following sites:

::: itemizedlist
-   A Userspace Implementation of `devfs`{.systemitem} [http://www.kroah.com/linux/talks/ols_2003_udev_paper/Reprint-Kroah-Hartman-OLS2003.pdf](http://www.kroah.com/linux/talks/ols_2003_udev_paper/Reprint-Kroah-Hartman-OLS2003.pdf){.ulink}

-   The `sysfs`{.systemitem} Filesystem [https://www.kernel.org/pub/linux/kernel/people/mochel/doc/papers/ols-2005/mochel.pdf](https://www.kernel.org/pub/linux/kernel/people/mochel/doc/papers/ols-2005/mochel.pdf){.ulink}
:::
::::
:::::::::::::::::::

::: navfooter
-   [Prev](network.md "General Network Configuration"){accesskey="p"}

    General Network Configuration

-   [Next](symlinks.md "Managing Devices"){accesskey="n"}

    Managing Devices

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
