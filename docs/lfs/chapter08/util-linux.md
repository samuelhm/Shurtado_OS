::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](procps-ng.md "Procps-ng-4.0.6"){accesskey="p"}

    Procps-ng-4.0.6

-   [Next](e2fsprogs.md "E2fsprogs-1.47.4"){accesskey="n"}

    E2fsprogs-1.47.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-util-linux}8.80. Util-linux-2.42.1 {#util-linux-2.42.1 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Util-linux package contains miscellaneous utility programs. Among them are utilities for handling file systems, consoles, partitions, and messages.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.5 SBU]{.segbody}
:::

::: seg
**Required disk space:** [346 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.80.1. Installation of Util-linux {#installation-of-util-linux .sect2}

Prepare Util-linux for compilation:

``` userinput
./configure --bindir=/usr/bin     \
            --libdir=/usr/lib     \
            --runstatedir=/run    \
            --sbindir=/usr/sbin   \
            --disable-chfn-chsh   \
            --disable-login       \
            --disable-nologin     \
            --disable-su          \
            --disable-setpriv     \
            --disable-runuser     \
            --disable-pylibmount  \
            --disable-liblastlog2 \
            --disable-static      \
            --without-python      \
            ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --docdir=/usr/share/doc/util-linux-2.42.1
```

The \--disable and \--without options prevent warnings about building components that either require packages not in LFS, or are inconsistent with programs installed by other packages.

Compile the package:

``` userinput
make
```

If desired, create a dummy `/etc/fstab`{.filename} file to satisfy two tests and run the test suite as a non-`root`{.systemitem} user:

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Running the test suite as the `root`{.systemitem} user can be harmful to your system. To run it, the CONFIG_SCSI_DEBUG option for the kernel must be available in the currently running system and must be built as a module. Building it into the kernel will prevent booting. For complete coverage, other BLFS packages must be installed. If desired, this test can be run by booting into the completed LFS system and running:

``` userinput
bash tests/run.sh --srcdir=$PWD --builddir=$PWD
```
:::

``` userinput
touch /etc/fstab
chown -R tester .
su tester -c "make -k check"
```

The [*hardlink*]{.emphasis} tests will fail if the host\'s kernel does not have the option `CONFIG_CRYPTO_USER_API_HASH`{.option} enabled or does not have any options providing a SHA256 implementation (for example, `CONFIG_CRYPTO_SHA256`{.option}, or `CONFIG_CRYPTO_SHA256_SSSE3`{.option} if the CPU supports Supplemental SSE3) enabled. In addition, the lsfd: inotify test will fail if the kernel option `CONFIG_NETLINK_DIAG`{.option} is not enabled.

Install the package:

``` userinput
make install
```
::::

::::::::: {.content lang="en"}
## []{#contents-utillinux}8.80.2. Contents of Util-linux {#contents-of-util-linux .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [addpart, agetty, blkdiscard, blkid, blkzone, blockdev, cal, cfdisk, chcpu, chmem, choom, chrt, col, colcrt, colrm, column, ctrlaltdel, delpart, dmesg, eject, fallocate, fdisk, fincore, findfs, findmnt, flock, fsck, fsck.cramfs, fsck.minix, fsfreeze, fstrim, getopt, hardlink, hexdump, hwclock, i386 (link to setarch), ionice, ipcmk, ipcrm, ipcs, irqtop, isosize, kill, last, lastb (link to last), ldattach, linux32 (link to setarch), linux64 (link to setarch), logger, look, losetup, lsblk, lscpu, lsipc, lsirq, lsfd, lslocks, lslogins, lsmem, lsns, mcookie, mesg, mkfs, mkfs.bfs, mkfs.cramfs, mkfs.minix, mkswap, more, mount, mountpoint, namei, nsenter, partx, pivot_root, prlimit, readprofile, rename, renice, resizepart, rev, rfkill, rtcwake, script, scriptlive, scriptreplay, setarch, setsid, setterm, sfdisk, sulogin, swaplabel, swapoff, swapon, switch_root, taskset, uclampset, ul, umount, uname26 (link to setarch), unshare, utmpdump, uuidd, uuidgen, uuidparse, wall, wdctl, whereis, wipefs, x86_64 (link to setarch), and zramctl]{.segbody}
:::

::: seg
**Installed libraries:** [libblkid.so, libfdisk.so, libmount.so, libsmartcols.so, and libuuid.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/blkid, /usr/include/libfdisk, /usr/include/libmount, /usr/include/libsmartcols, /usr/include/uuid, /usr/share/doc/util-linux-2.42.1, and /var/lib/hwclock]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#addpart}[[**addpart**]{.command}]{.term}             Informs the Linux kernel of new partitions
  []{#agetty}[[**agetty**]{.command}]{.term}               Opens a tty port, prompts for a login name, and then invokes the [**login**]{.command} program
  []{#blkdiscard}[[**blkdiscard**]{.command}]{.term}       Discards sectors on a device
  []{#blkid}[[**blkid**]{.command}]{.term}                 A command line utility to locate and print block device attributes
  []{#blkzone}[[**blkzone**]{.command}]{.term}             Is used to manage zoned storage block devices
  []{#blockdev}[[**blockdev**]{.command}]{.term}           Allows users to call block device ioctls from the command line
  []{#cal}[[**cal**]{.command}]{.term}                     Displays a simple calendar
  []{#cfdisk}[[**cfdisk**]{.command}]{.term}               Manipulates the partition table of the given device
  []{#chcpu}[[**chcpu**]{.command}]{.term}                 Modifies the state of CPUs
  []{#chmem}[[**chmem**]{.command}]{.term}                 Configures memory
  []{#choom}[[**choom**]{.command}]{.term}                 Displays and adjusts OOM-killer scores, used to determine which process to kill first when Linux is Out Of Memory
  []{#chrt}[[**chrt**]{.command}]{.term}                   Manipulates real-time attributes of a process
  []{#col}[[**col**]{.command}]{.term}                     Filters out reverse line feeds
  []{#colcrt}[[**colcrt**]{.command}]{.term}               Filters [**nroff**]{.command} output for terminals that lack some capabilities, such as overstriking and half-lines
  []{#colrm}[[**colrm**]{.command}]{.term}                 Filters out the given columns
  []{#column}[[**column**]{.command}]{.term}               Formats a given file into multiple columns
  []{#ctrlaltdel}[[**ctrlaltdel**]{.command}]{.term}       Sets the function of the Ctrl+Alt+Del key combination to a hard or a soft reset
  []{#delpart}[[**delpart**]{.command}]{.term}             Asks the Linux kernel to remove a partition
  []{#dmesg}[[**dmesg**]{.command}]{.term}                 Dumps the kernel boot messages
  []{#eject}[[**eject**]{.command}]{.term}                 Ejects removable media
  []{#fallocate}[[**fallocate**]{.command}]{.term}         Preallocates space to a file
  []{#fdisk}[[**fdisk**]{.command}]{.term}                 Manipulates the partition table of the given device
  []{#fincore}[[**fincore**]{.command}]{.term}             Counts pages of file contents in core
  []{#findfs}[[**findfs**]{.command}]{.term}               Finds a file system, either by label or Universally Unique Identifier (UUID)
  []{#findmnt}[[**findmnt**]{.command}]{.term}             Is a command line interface to the libmount library for working with mountinfo, fstab and mtab files
  []{#flock}[[**flock**]{.command}]{.term}                 Acquires a file lock and then executes a command with the lock held
  []{#fsck}[[**fsck**]{.command}]{.term}                   Is used to check, and optionally repair, file systems
  []{#fsck.cramfs}[[**fsck.cramfs**]{.command}]{.term}     Performs a consistency check on the Cramfs file system on the given device
  []{#fsck.minix}[[**fsck.minix**]{.command}]{.term}       Performs a consistency check on the Minix file system on the given device
  []{#fsfreeze}[[**fsfreeze**]{.command}]{.term}           Is a very simple wrapper around FIFREEZE/FITHAW ioctl kernel driver operations
  []{#fstrim}[[**fstrim**]{.command}]{.term}               Discards unused blocks on a mounted filesystem
  []{#getopt}[[**getopt**]{.command}]{.term}               Parses options in the given command line
  []{#hardlink}[[**hardlink**]{.command}]{.term}           Consolidates duplicate files by creating hard links
  []{#hexdump}[[**hexdump**]{.command}]{.term}             Dumps the given file in hexadecimal, decimal, octal, or ascii
  []{#hwclock}[[**hwclock**]{.command}]{.term}             Reads or sets the system\'s hardware clock, also called the Real-Time Clock (RTC) or Basic Input-Output System (BIOS) clock
  []{#i386}[[**i386**]{.command}]{.term}                   A symbolic link to setarch
  []{#ionice}[[**ionice**]{.command}]{.term}               Gets or sets the io scheduling class and priority for a program
  []{#ipcmk}[[**ipcmk**]{.command}]{.term}                 Creates various IPC resources
  []{#ipcrm}[[**ipcrm**]{.command}]{.term}                 Removes the given Inter-Process Communication (IPC) resource
  []{#ipcs}[[**ipcs**]{.command}]{.term}                   Provides IPC status information
  []{#irqtop}[[**irqtop**]{.command}]{.term}               Displays kernel interrupt counter information in [top(1)](https://man.archlinux.org/man/top.1){.ulink} style view
  []{#isosize}[[**isosize**]{.command}]{.term}             Reports the size of an iso9660 file system
  []{#kill}[[**kill**]{.command}]{.term}                   Sends signals to processes
  []{#last}[[**last**]{.command}]{.term}                   Shows which users last logged in (and out), searching back through the `/var/log/wtmp`{.filename} file; it also shows system boots, shutdowns, and run-level changes
  []{#lastb}[[**lastb**]{.command}]{.term}                 Shows the failed login attempts, as logged in `/var/log/btmp`{.filename}
  []{#ldattach}[[**ldattach**]{.command}]{.term}           Attaches a line discipline to a serial line
  []{#linux32}[[**linux32**]{.command}]{.term}             A symbolic link to setarch
  []{#linux64}[[**linux64**]{.command}]{.term}             A symbolic link to setarch
  []{#logger}[[**logger**]{.command}]{.term}               Enters the given message into the system log
  []{#look}[[**look**]{.command}]{.term}                   Displays lines that begin with the given string
  []{#losetup}[[**losetup**]{.command}]{.term}             Sets up and controls loop devices
  []{#lsblk}[[**lsblk**]{.command}]{.term}                 Lists information about all or selected block devices in a tree-like format
  []{#lscpu}[[**lscpu**]{.command}]{.term}                 Prints CPU architecture information
  []{#lsfd}[[**lsfd**]{.command}]{.term}                   Displays information about open files; replaces [**lsof**]{.command}
  []{#lsipc}[[**lsipc**]{.command}]{.term}                 Prints information on IPC facilities currently employed in the system
  []{#lsirq}[[**lsirq**]{.command}]{.term}                 Displays kernel interrupt counter information
  []{#lslocks}[[**lslocks**]{.command}]{.term}             Lists local system locks
  []{#lslogins}[[**lslogins**]{.command}]{.term}           Lists information about users, groups and system accounts
  []{#lsmem}[[**lsmem**]{.command}]{.term}                 Lists the ranges of available memory with their online status
  []{#lsns}[[**lsns**]{.command}]{.term}                   Lists namespaces
  []{#mcookie}[[**mcookie**]{.command}]{.term}             Generates magic cookies (128-bit random hexadecimal numbers) for [**xauth**]{.command}
  []{#mesg}[[**mesg**]{.command}]{.term}                   Controls whether other users can send messages to the current user\'s terminal
  []{#mkfs}[[**mkfs**]{.command}]{.term}                   Builds a file system on a device (usually a hard disk partition)
  []{#mkfs.bfs}[[**mkfs.bfs**]{.command}]{.term}           Creates a Santa Cruz Operations (SCO) bfs file system
  []{#mkfs.cramfs}[[**mkfs.cramfs**]{.command}]{.term}     Creates a cramfs file system
  []{#mkfs.minix}[[**mkfs.minix**]{.command}]{.term}       Creates a Minix file system
  []{#mkswap}[[**mkswap**]{.command}]{.term}               Initializes the given device or file to be used as a swap area
  []{#more}[[**more**]{.command}]{.term}                   A filter for paging through text one screen at a time
  []{#mount}[[**mount**]{.command}]{.term}                 Attaches the file system on the given device to a specified directory in the file-system tree
  []{#mountpoint}[[**mountpoint**]{.command}]{.term}       Checks if the directory is a mountpoint
  []{#namei}[[**namei**]{.command}]{.term}                 Shows the symbolic links in the given paths
  []{#nsenter}[[**nsenter**]{.command}]{.term}             Runs a program with namespaces of other processes
  []{#partx}[[**partx**]{.command}]{.term}                 Tells the kernel about the presence and numbering of on-disk partitions
  []{#pivot_root}[[**pivot_root**]{.command}]{.term}       Makes the given file system the new root file system of the current process
  []{#prlimit}[[**prlimit**]{.command}]{.term}             Gets and sets a process\'s resource limits
  []{#readprofile}[[**readprofile**]{.command}]{.term}     Reads kernel profiling information
  []{#rename}[[**rename**]{.command}]{.term}               Renames the given files, replacing a given string with another
  []{#renice}[[**renice**]{.command}]{.term}               Alters the priority of running processes
  []{#resizepart}[[**resizepart**]{.command}]{.term}       Asks the Linux kernel to resize a partition
  []{#rev}[[**rev**]{.command}]{.term}                     Reverses the lines of a given file
  []{#rfkill}[[**rfkill**]{.command}]{.term}               Tool for enabling and disabling wireless devices
  []{#rtcwake}[[**rtcwake**]{.command}]{.term}             Used to enter a system sleep state until the specified wakeup time
  []{#script}[[**script**]{.command}]{.term}               Makes a typescript of a terminal session
  []{#scriptlive}[[**scriptlive**]{.command}]{.term}       Re-runs session typescripts using timing information
  []{#scriptreplay}[[**scriptreplay**]{.command}]{.term}   Plays back typescripts using timing information
  []{#setarch}[[**setarch**]{.command}]{.term}             Changes reported architecture in a new program environment, and sets personality flags
  []{#setsid}[[**setsid**]{.command}]{.term}               Runs the given program in a new session
  []{#setterm}[[**setterm**]{.command}]{.term}             Sets terminal attributes
  []{#sfdisk}[[**sfdisk**]{.command}]{.term}               A disk partition table manipulator
  []{#sulogin}[[**sulogin**]{.command}]{.term}             Allows `root`{.systemitem} to log in; it is normally invoked by [**init**]{.command} when the system goes into single user mode
  []{#swaplabel}[[**swaplabel**]{.command}]{.term}         Makes changes to the swap area\'s UUID and label
  []{#swapoff}[[**swapoff**]{.command}]{.term}             Disables devices and files for paging and swapping
  []{#swapon}[[**swapon**]{.command}]{.term}               Enables devices and files for paging and swapping, and lists the devices and files currently in use
  []{#switch_root}[[**switch_root**]{.command}]{.term}     Switches to another filesystem as the root of the mount tree
  []{#taskset}[[**taskset**]{.command}]{.term}             Retrieves or sets a process\'s CPU affinity
  []{#uclampset}[[**uclampset**]{.command}]{.term}         Manipulates the utilization clamping attributes of the system or a process
  []{#ul}[[**ul**]{.command}]{.term}                       A filter for translating underscores into escape sequences indicating underlining for the terminal in use
  []{#umount}[[**umount**]{.command}]{.term}               Disconnects a file system from the system\'s file tree
  []{#uname26}[[**uname26**]{.command}]{.term}             A symbolic link to setarch
  []{#unshare}[[**unshare**]{.command}]{.term}             Runs a program with some namespaces unshared from parent
  []{#utmpdump}[[**utmpdump**]{.command}]{.term}           Displays the content of the given login file in a user-friendly format
  []{#uuidd}[[**uuidd**]{.command}]{.term}                 A daemon used by the UUID library to generate time-based UUIDs in a secure and guaranteed-unique fashion
  []{#uuidgen}[[**uuidgen**]{.command}]{.term}             Creates new UUIDs. Each new UUID is a random number likely to be unique among all UUIDs created, on the local system and on other systems, in the past and in the future, with extremely high probability (2^128^ UUIDs are possible)
  []{#uuidparse}[[**uuidparse**]{.command}]{.term}         A utility to parse unique identifiers
  []{#wall}[[**wall**]{.command}]{.term}                   Displays the contents of a file or, by default, its standard input, on the terminals of all currently logged in users
  []{#wdctl}[[**wdctl**]{.command}]{.term}                 Shows hardware watchdog status
  []{#whereis}[[**whereis**]{.command}]{.term}             Reports the location of the binary, source, and man page files for the given command
  []{#wipefs}[[**wipefs**]{.command}]{.term}               Wipes a filesystem signature from a device
  []{#x86_64}[[**x86_64**]{.command}]{.term}               A symbolic link to setarch
  []{#zramctl}[[**zramctl**]{.command}]{.term}             A program to set up and control zram (compressed ram disk) devices
  []{#libblkid}[`libblkid`{.filename}]{.term}              Contains routines for device identification and token extraction
  []{#libfdisk}[`libfdisk`{.filename}]{.term}              Contains routines for manipulating partition tables
  []{#libmount}[`libmount`{.filename}]{.term}              Contains routines for block device mounting and unmounting
  []{#libsmartcols}[`libsmartcols`{.filename}]{.term}      Contains routines for aiding screen output in tabular form
  []{#libuuid}[`libuuid`{.filename}]{.term}                Contains routines for generating unique identifiers for objects that may be accessible beyond the local system
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](procps-ng.md "Procps-ng-4.0.6"){accesskey="p"}

    Procps-ng-4.0.6

-   [Next](e2fsprogs.md "E2fsprogs-1.47.4"){accesskey="n"}

    E2fsprogs-1.47.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
