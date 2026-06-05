::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 10. Making the LFS System Bootable

-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](kernel.md "Linux-7.0.10"){accesskey="n"}

    Linux-7.0.10

-   [Up](chapter10.md "Chapter 10. Making the LFS System Bootable"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-bootable-fstab}10.2. Creating the /etc/fstab File {#creating-the-etcfstab-file .sect1}

:::: {.sect1 lang="en"}
The `/etc/fstab`{.filename} file is used by some programs to determine where file systems are to be mounted by default, in which order, and which must be checked (for integrity errors) prior to mounting. Create a new file systems table like this:

``` userinput
cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# file system  mount-point  type     options             dump  fsck
#                                                              order

/dev/<xxx>     /            <fff>    defaults            1     1
/dev/<yyy>     swap         swap     pri=1               0     0

# End /etc/fstab
EOF
```

Replace *`<xxx>`*, *`<yyy>`*, and *`<fff>`* with the values appropriate for the system, for example, `sda2`{.filename}, `sda5`{.filename}, and `ext4`{.systemitem}. For details on the six fields in this file, see [fstab(5)](https://man.archlinux.org/man/fstab.5){.ulink}.

Filesystems with MS-DOS or Windows origin (i.e. vfat, ntfs, smbfs, cifs, iso9660, udf) need a special option, utf8, in order for non-ASCII characters in file names to be interpreted properly. For non-UTF-8 locales, the value of `iocharset`{.option} should be set to be the same as the character set of the locale, adjusted in such a way that the kernel understands it. This works if the relevant character set definition (found under File systems -\> Native Language Support when configuring the kernel) has been compiled into the kernel or built as a module. However, if the character set of the locale is UTF-8, the corresponding option `iocharset=utf8`{.option} would make the file system case sensitive. To fix this, use the special option `utf8`{.option} instead of `iocharset=utf8`{.option}, for UTF-8 locales. The ["[codepage]{.quote}"]{.quote} option is also needed for vfat and smbfs filesystems. It should be set to the codepage number used under MS-DOS in your country. For example, in order to mount USB flash drives, a ru_RU.KOI8-R user would need the following in the options portion of its mount line in `/etc/fstab`{.filename}:

``` screen
noauto,user,quiet,showexec,codepage=866,iocharset=koi8r
```

The corresponding options fragment for ru_RU.UTF-8 users is:

``` screen
noauto,user,quiet,showexec,codepage=866,utf8
```

Note that using `iocharset`{.option} is the default for `iso8859-1`{.literal} (which keeps the file system case insensitive), and the `utf8`{.option} option tells the kernel to convert the file names using UTF-8 so they can be interpreted in the UTF-8 locale.

When installing GRUB with UEFI, the ESP must be formatted as a FAT file system (EXFAT should not be considered one). In the Linux kernel the VFAT driver handles all the FAT file systems, so this file will contain `vfat`{.literal} regardless. An example of how you would go about an entry for the ESP would look like this:

``` userinput
cat >> /etc/fstab << "EOF"
/dev/<zzz>  /boot/efi  vfat  rw,relatime,codepage=437,iocharset=iso8859-1   0   2
EOF
```

The `iso8859-1`{.literal} IO charset is used here as we\'ll enable it as a part of the kernel UEFI configuration in [Section 10.3, "Linux-7.0.10."](kernel.md "10.3. Linux-7.0.10"){.xref} Technically the IO charset should match your locale as we\'ve discussed above. However the name of all the files in the ESP only contains 7-bit ASCII characters, so things will be OK as long as the character set for your locale treats 7-bit ASCII characters in the same way as ISO-8859-1. For example, UTF-8 is such a character set.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The EFI filesystem only needs to be mounted when installing GRUB. The system uses this partition before the kernel is loaded and is not used otherwise. An alternative to adding this entry to the fstab file is to manually mount it before running [**grub-install**]{.command} below in [Section 10.4, "Using GRUB to Set Up the Boot Process."](grub.md "10.4. Using GRUB to Set Up the Boot Process"){.xref}
:::

It is also possible to specify default codepage and iocharset values for some filesystems during kernel configuration. The relevant parameters are named ["[Default NLS Option]{.quote}"]{.quote} (`CONFIG_NLS_DEFAULT)`{.option}, ["[Default Remote NLS Option]{.quote}"]{.quote} (`CONFIG_SMB_NLS_DEFAULT`{.option}), ["[Default codepage for FAT]{.quote}"]{.quote} (`CONFIG_FAT_DEFAULT_CODEPAGE`{.option}), and ["[Default iocharset for FAT]{.quote}"]{.quote} (`CONFIG_FAT_DEFAULT_IOCHARSET`{.option}). There is no way to specify these settings for the ntfs filesystem at kernel compilation time.
::::

::: navfooter
-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](kernel.md "Linux-7.0.10"){accesskey="n"}

    Linux-7.0.10

-   [Up](chapter10.md "Chapter 10. Making the LFS System Bootable"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
