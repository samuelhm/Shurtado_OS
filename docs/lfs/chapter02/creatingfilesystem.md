::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 2. Preparing the Host System

-   [Prev](creatingpartition.md "Creating a New Partition"){accesskey="p"}

    Creating a New Partition

-   [Next](aboutlfs.md "Setting the $LFS Variable and the Umask"){accesskey="n"}

    Setting the \$LFS Variable and the Umask

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-partitioning-creatingfilesystem}2.5. Creating a File System on the Partition {#creating-a-file-system-on-the-partition .sect1}

:::: {.sect1 lang="en"}
A partition is just a range of sectors on a disk drive, delimited by boundaries set in a partition table. Before the operating system can use a partition to store any files, the partition must be formatted to contain a file system, typically consisting of a label, directory blocks, data blocks, and an indexing scheme to locate a particular file on demand. The file system also helps the OS keep track of free space on the partition, reserve the needed sectors when a new file is created or an existing file is extended, and recycle the free data segments created when files are deleted. It may also provide support for data redundancy, and for error recovery.

LFS can use any file system recognized by the Linux kernel, but the most common types are ext3 and ext4. The choice of the right file system can be complex; it depends on the characteristics of the files and the size of the partition. For example:

::: variablelist

[ext2]{.term}

:   is suitable for small partitions that are updated infrequently such as /boot.

[ext3]{.term}

:   is an upgrade to ext2 that includes a journal to help recover the partition\'s status in the case of an unclean shutdown. It is commonly used as a general purpose file system.

[ext4]{.term}

:   is the latest version of the ext family of file systems. It provides several new capabilities including nano-second timestamps, creation and use of very large files (up to 16 TB), and speed improvements.
:::

Other file systems, including FAT32, NTFS, JFS, and XFS are useful for specialized purposes. More information about these file systems, and many others, can be found at [https://en.wikipedia.org/wiki/Comparison_of_file_systems](https://en.wikipedia.org/wiki/Comparison_of_file_systems){.ulink}.

LFS assumes that the root file system (/) is of type ext4. To create an `ext4`{.systemitem} file system on the LFS partition, issue the following command:

``` userinput
mkfs -v -t ext4 /dev/<xxx>
```

Replace *`<xxx>`* with the name of the LFS partition.

If you are using an existing `swap`{.systemitem} partition, there is no need to format it. If a new `swap`{.systemitem} partition was created, it will need to be initialized with this command:

``` userinput
mkswap /dev/<yyy>
```

Replace *`<yyy>`* with the name of the `swap`{.systemitem} partition.

If you have created an EFI System Partition, you have a few options. Motherboards when booting with UEFI look for EFI applications in partitions formatted with a FAT variant (FAT12, FAT16, FAT32, VFAT, etc). Usually, FAT32 or VFAT are the recommended options.

If you have chosen `FAT32`{.systemitem}, format the ESP with the following command:

``` userinput
mkfs.fat -F 32 /dev/<yyy>
```

On the other hand, if you have chosen `VFAT`{.systemitem}, you can run the following instead:

``` userinput
mkfs.vfat /dev/<zzz>
```

Replace *`<zzz>`* with the name of the EFI System Partition.
::::

::: navfooter
-   [Prev](creatingpartition.md "Creating a New Partition"){accesskey="p"}

    Creating a New Partition

-   [Next](aboutlfs.md "Setting the $LFS Variable and the Umask"){accesskey="n"}

    Setting the \$LFS Variable and the Umask

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
