::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](jinja2.md "Jinja2-3.1.6"){accesskey="p"}

    Jinja2-3.1.6

-   [Next](dbus.md "D-Bus-1.16.2"){accesskey="n"}

    D-Bus-1.16.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-systemd}8.76. Systemd-260.2 {#systemd-260.2 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The systemd package contains programs for controlling the startup, running, and shutdown of the system.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [349 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.76.1. Installation of systemd {#installation-of-systemd .sect2}

Remove two unneeded groups, `render`{.systemitem} and `sgx`{.systemitem}, from the default udev rules:

``` userinput
sed -e 's/GROUP="render"/GROUP="video"/' \
    -e 's/GROUP="sgx", //'               \
    -i rules.d/50-udev-default.rules.in
```

Prepare systemd for compilation:

``` userinput
mkdir -p build
cd       build

meson setup ..                \
      --prefix=/usr           \
      --buildtype=release     \
      -D default-dnssec=no    \
      -D firstboot=false      \
      -D install-tests=false  \
      -D ldconfig=false       \
      -D sysusers=false       \
      -D rpmmacrosdir=no      \
      -D homed=disabled       \
      -D man=disabled         \
      -D mode=release         \
      -D pamconfdir=no        \
      -D dev-kvm-mode=0660    \
      -D nobody-group=nogroup \
      -D sysupdate=disabled   \
      -D ukify=disabled       \
      -D docdir=/usr/share/doc/systemd-260.2
```

::: variablelist
**The meaning of the meson options:**

[*`--buildtype=release`*]{.term}

:   This switch overrides the default buildtype (["[debug]{.quote}"]{.quote}), which produces unoptimized binaries.

[*`-D default-dnssec=no`*]{.term}

:   This switch turns off the experimental DNSSEC support.

[*`-D firstboot=false`*]{.term}

:   This switch prevents installation of systemd services responsible for setting up the system for the first time. These are not useful in LFS, because everything is done manually.

[*`-D install-tests=false`*]{.term}

:   This switch prevents installation of the compiled tests.

[*`-D ldconfig=false`*]{.term}

:   This switch prevents installation of a systemd unit that runs [**ldconfig**]{.command} at boot; this is not useful for source distributions such as LFS, and makes the boot time longer. Remove this option to enable running [**ldconfig**]{.command} at boot.

[*`-D sysusers=false`*]{.term}

:   This switch prevents installation of systemd services responsible for setting up the `/etc/group`{.filename} and `/etc/passwd`{.filename} files. Both files were created in the previous chapter. This daemon is not useful on an LFS system since user accounts are manually created.

[*`-D rpmmacrosdir=no`*]{.term}

:   This switch disables installation of RPM Macros for use with systemd, because LFS does not support RPM.

[*`-D homed=disabled`*]{.term}

:   Remove a daemon which has dependencies that do not fit within the scope of LFS.

[*`-D man=disabled`*]{.term}

:   Prevent the generation of man pages to avoid extra dependencies. We will install pre-generated man pages for systemd from a tarball.

[*`-D mode=release`*]{.term}

:   Disable some features considered experimental by upstream.

[*`-D pamconfdir=no`*]{.term}

:   Prevent the installation of a PAM configuration file not functional on LFS.

[*`-D dev-kvm-mode=0660`*]{.term}

:   The default udev rule would allow all users to access `/dev/kvm`{.filename}. The editors consider it dangerous. This option overrides it.

[*`-D nobody-group=nogroup`*]{.term}

:   Tell the package the group name with GID 65534 is `nogroup`{.systemitem}.

[*`-D sysupdate=disabled`*]{.term}

:   Do not install the [**systemd-sysupdate**]{.command} tool. It\'s designed for automatically upgrading binary distros, so it\'s useless for a basic Linux system built from source. And it will report errors on boot if it\'s enabled but not properly configured.

[*`-D ukify=disabled`*]{.term}

:   Do not install the [**systemd-ukify**]{.command} script. At runtime this script requires the [pefile]{.application} Python module that neither LFS nor BLFS provides.
:::

Compile the package:

``` userinput
ninja
```

One test creates a mount point in `/tmp`{.filename} that we cannot clean up so easily after running the test suite, and some tests need a basic `/etc/os-release`{.filename} file. To test the results, create this file and run the test suite in a separate mount namespace (so the mount point is only visible for the test suite and it gets cleaned up automatically after the test suite finishes):

``` userinput
echo 'NAME="Linux From Scratch"' > /etc/os-release
unshare -m ninja test
```

One test named `systemd:core / test-namespace`{.literal} is known to fail in the LFS chroot environment. Some other tests may fail because they depend on various kernel configuration options. The test named `systemd:test / test-copy`{.literal} may time out due to an I/O congestion with a large parallel job number, but it would pass if running alone with [**meson test test-copy**]{.command}.

Install the package:

``` userinput
ninja install
```

Install the man pages:

``` userinput
tar -xf ../../systemd-man-pages-260.2.tar.xz \
    --no-same-owner --strip-components=1     \
    -C /usr/share/man
```

Create the `/etc/machine-id`{.filename} file needed by [**systemd-journald**]{.command}:

``` userinput
systemd-machine-id-setup
```

Set up the basic target structure:

``` userinput
systemctl preset-all
```
::::

::::::::: {.content lang="en"}
## []{#contents-systemd}8.76.2. Contents of systemd {#contents-of-systemd .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [bootctl, busctl, coredumpctl, halt (symlink to systemctl), hostnamectl, init, journalctl, kernel-install, localectl, loginctl, machinectl, mount.ddi (symlink to systemd-dissect), networkctl, oomctl, portablectl, poweroff (symlink to systemctl), reboot (symlink to systemctl), resolvconf (symlink to resolvectl), resolvectl, run0 (symlink to systemd-run), runlevel (symlink to systemctl), shutdown (symlink to systemctl), systemctl, systemd-ac-power, systemd-analyze, systemd-ask-password, systemd-cat, systemd-cgls, systemd-cgtop, systemd-confext (symlink to systemd-sysext), systemd-creds, systemd-delta, systemd-detect-virt, systemd-dissect, systemd-escape, systemd-hwdb, systemd-id128, systemd-inhibit, systemd-machine-id-setup, systemd-mount, systemd-notify, systemd-nspawn, systemd-path, systemd-pty-forward, systemd-repart, systemd-resolve (symlink to resolvectl), systemd-run, systemd-socket-activate, systemd-stdio-bridge, systemd-sysext, systemd-tmpfiles, systemd-tty-ask-password-agent, systemd-vpick, systemd-umount (symlink to systemd-mount), timedatectl, udevadm, userdbctl, and varlinkctl]{.segbody}
:::

::: seg
**Installed libraries:** [libnss_myhostname.so.2, libnss_mymachines.so.2, libnss_resolve.so.2, libnss_systemd.so.2, libsystemd.so, libsystemd-shared-260.2.so (in /usr/lib/systemd), and libudev.so]{.segbody}
:::

::: seg
**Installed directories:** [/etc/binfmt.d, /etc/init.d, /etc/kernel, /etc/modules-load.d, /etc/sysctl.d, /etc/systemd, /etc/tmpfiles.d, /etc/udev, /etc/xdg/systemd, /usr/include/systemd, /usr/lib/binfmt.d, /usr/lib/credstore, /usr/lib/environment.d, /usr/lib/kernel, /usr/lib/modprobe.d, /usr/lib/modules-load.d, /usr/lib/systemd, /usr/lib/udev, /usr/lib/sysctl.d, /usr/lib/systemd, /usr/lib/tmpfiles.d, /usr/share/doc/systemd-260.2, /usr/share/factory, /usr/share/systemd, /var/lib/systemd, and /var/log/journal]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#bootctl}[[**bootctl**]{.command}]{.term}                                                 Is used to control EFI firmware boot settings on a system
  []{#busctl}[[**busctl**]{.command}]{.term}                                                   Is used to introspect and monitor the D-Bus bus
  []{#coredumpctl}[[**coredumpctl**]{.command}]{.term}                                         Is used to retrieve coredumps from the systemd journal
  []{#halt}[[**halt**]{.command}]{.term}                                                       Normally invokes [**shutdown**]{.command} with the *`-h`* option, except when already in run-level 0, when it tells the kernel to halt the system; it notes in the file `/var/log/wtmp`{.filename} that the system is being brought down
  []{#hostnamectl}[[**hostnamectl**]{.command}]{.term}                                         Is used to query and change the system hostname and related settings
  []{#init}[[**init**]{.command}]{.term}                                                       Is the first process to be started after the kernel has initialized the hardware; [**init**]{.command} takes over the boot process and starts the processes specified by its configuration files; in this case, it starts systemd
  []{#journalctl}[[**journalctl**]{.command}]{.term}                                           Is used to query the contents of the systemd journal
  []{#kernel-install}[[**kernel-install**]{.command}]{.term}                                   Is used to add and remove kernel and initramfs images to and from /boot; in LFS, this is done manually
  []{#localectl}[[**localectl**]{.command}]{.term}                                             Is used to query and change the system locale and keyboard layout settings
  []{#loginctl}[[**loginctl**]{.command}]{.term}                                               Is used to introspect and control the state of the systemd Login Manager
  []{#machinectl}[[**machinectl**]{.command}]{.term}                                           Is used to introspect and control the state of the systemd Virtual Machine and Container Registration Manager
  []{#networkctl}[[**networkctl**]{.command}]{.term}                                           Is used to introspect and configure the state of the network links configured by systemd-networkd
  []{#oomctl}[[**oomctl**]{.command}]{.term}                                                   Controls the systemd Out Of Memory daemon
  []{#portablectl}[[**portablectl**]{.command}]{.term}                                         Is used to attach or detach portable services from the local system
  []{#poweroff}[[**poweroff**]{.command}]{.term}                                               Instructs the kernel to halt the system and switch off the computer (see [**halt**]{.command})
  []{#reboot}[[**reboot**]{.command}]{.term}                                                   Instructs the kernel to reboot the system (see [**halt**]{.command})
  []{#resolvconf}[[**resolvconf**]{.command}]{.term}                                           Registers DNS server and domain configuration with [**systemd-resolved**]{.command}
  []{#resolvectl}[[**resolvectl**]{.command}]{.term}                                           Sends control commands to the network name resolution manager, or resolves domain names, IPv4 and IPv6 addresses, DNS records, and services
  []{#run0}[[**run0**]{.command}]{.term}                                                       Temporarily elevates or acquires different privileges, similar to sudo
  []{#runlevel}[[**runlevel**]{.command}]{.term}                                               Outputs the previous and the current run-level, as noted in the last run-level record in `/run/utmp`{.filename}
  []{#shutdown}[[**shutdown**]{.command}]{.term}                                               Brings the system down in a safe and secure manner, signaling all processes and notifying all logged-in users
  []{#systemctl}[[**systemctl**]{.command}]{.term}                                             Is used to introspect and control the state of the systemd system and service manager
  []{#systemd-ac-power}[[**systemd-ac-power**]{.command}]{.term}                               Reports whether the system is connected to an external power source.
  []{#systemd-analyze}[[**systemd-analyze**]{.command}]{.term}                                 Is used to analyze system startup performance, as well as identify troublesome systemd units
  []{#systemd-ask-password}[[**systemd-ask-password**]{.command}]{.term}                       Is used to query a system password or passphrase from the user, using a message specified on the Linux command line
  []{#systemd-cat}[[**systemd-cat**]{.command}]{.term}                                         Is used to connect the STDOUT and STDERR outputs of a process with the systemd journal
  []{#systemd-cgls}[[**systemd-cgls**]{.command}]{.term}                                       Recursively shows the contents of the selected Linux control group hierarchy in a tree
  []{#systemd-cgtop}[[**systemd-cgtop**]{.command}]{.term}                                     Shows the top control groups of the local Linux control group hierarchy, ordered by their CPU, memory and disk I/O loads
  []{#systemd-creds}[[**systemd-creds**]{.command}]{.term}                                     Displays and processes credentials
  []{#systemd-delta}[[**systemd-delta**]{.command}]{.term}                                     Is used to identify and compare configuration files in `/etc`{.filename} that override the defaults in `/usr`{.filename}
  []{#systemd-detect-virt}[[**systemd-detect-virt**]{.command}]{.term}                         Detects whether the system is being run in a virtual environment, and adjusts udev accordingly
  []{#systemd-dissect}[[**systemd-dissect**]{.command}]{.term}                                 Is used to inspect OS disk images
  []{#systemd-escape}[[**systemd-escape**]{.command}]{.term}                                   Is used to escape strings for inclusion in systemd unit names
  []{#systemd-hwdb}[[**systemd-hwdb**]{.command}]{.term}                                       Is used to manage the hardware database (hwdb)
  []{#systemd-id128}[[**systemd-id128**]{.command}]{.term}                                     Generates and prints id128 (UUID) strings
  []{#systemd-inhibit}[[**systemd-inhibit**]{.command}]{.term}                                 Is used to execute a program with a shutdown, sleep or idle inhibitor lock taken, preventing an action such as a system shutdown until the process is completed
  []{#systemd-machine-id-setup}[[**systemd-machine-id-setup**]{.command}]{.term}               Is used by system installer tools to initialize the machine ID stored in `/etc/machine-id`{.filename} at install time with a randomly generated ID
  []{#systemd-mount}[[**systemd-mount**]{.command}]{.term}                                     Is used to temporarily mount or automount disks
  []{#systemd-notify}[[**systemd-notify**]{.command}]{.term}                                   Is used by daemon scripts to notify the init system of status changes
  []{#systemd-nspawn}[[**systemd-nspawn**]{.command}]{.term}                                   Is used to run a command, or an entire OS, in a light-weight namespace container
  []{#systemd-path}[[**systemd-path**]{.command}]{.term}                                       Is used to query system and user paths
  []{#systemd-pty-forward}[[**systemd-pty-forward**]{.command}]{.term}                         Is used to run a command with a custom terminal background color or title
  []{#systemd-repart}[[**systemd-repart**]{.command}]{.term}                                   Is used to grow and add partitions to a partition table when systemd is used with an OS image (e.g. a container)
  []{#systemd-resolve}[[**systemd-resolve**]{.command}]{.term}                                 Is used to resolve domain names, IPV4 and IPv6 addresses, DNS resource records, and services
  []{#systemd-run}[[**systemd-run**]{.command}]{.term}                                         Is used to create and start a transient .service or a .scope unit and run the specified command in it; this is useful for validating systemd units
  []{#systemd-socket-activate}[[**systemd-socket-activate**]{.command}]{.term}                 Is used to listen on socket devices and launch a process upon a successful connection to the socket
  []{#systemd-sysext}[[**systemd-sysext**]{.command}]{.term}                                   Activates system extension images
  []{#systemd-tmpfiles}[[**systemd-tmpfiles**]{.command}]{.term}                               Creates, deletes, and cleans up volatile and temporary files and directories, based on the configuration file format and location specified in `tmpfiles.d`{.filename} directories
  []{#systemd-umount}[[**systemd-umount**]{.command}]{.term}                                   Unmounts mount points
  []{#systemd-tty-ask-password-agent}[[**systemd-tty-ask-password-agent**]{.command}]{.term}   Is used to list and/or process pending systemd password requests
  []{#systemd-vpick}[[**systemd-vpick**]{.command}]{.term}                                     Is used to resolve paths to a \".v/\" versioned directory
  []{#timedatectl}[[**timedatectl**]{.command}]{.term}                                         Is used to query and change the system clock and its settings
  []{#udevadm}[[**udevadm**]{.command}]{.term}                                                 Is a generic udev administration tool which controls the udevd daemon, provides info from the udev hardware database, monitors uevents, waits for uevents to finish, tests udev configuration, and triggers uevents for a given device
  []{#userdbctl}[[**userdbctl**]{.command}]{.term}                                             Is used to inspect users, groups, and group memberships
  []{#varlinkctl}[[**varlinkctl**]{.command}]{.term}                                           Is used to interact with and invoke Varlink services
  []{#libsystemd}[`libsystemd`{.filename}]{.term}                                              Is the main systemd utility library
  []{#libudev}[`libudev`{.filename}]{.term}                                                    Is a library to access Udev device information
  -------------------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](jinja2.md "Jinja2-3.1.6"){accesskey="p"}

    Jinja2-3.1.6

-   [Next](dbus.md "D-Bus-1.16.2"){accesskey="n"}

    D-Bus-1.16.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
