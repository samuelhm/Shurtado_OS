::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](groff.md "Groff-1.24.1"){accesskey="p"}

    Groff-1.24.1

-   [Next](gzip.md "Gzip-1.14"){accesskey="n"}

    Gzip-1.14

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-grub}8.64. GRUB-2.14 {#grub-2.14 .sect1}

::::::::::::::::::::::: {.wrap lang="en"}
::::::::: {.package lang="en"}
The GRUB package contains the GRand Unified Bootloader.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This page is split up into multiple sections aimed to install for a specific boot method (BIOS, 64-bit UEFI, and 32-bit UEFI). GRUB cannot be built with all the boot method architectures at once.

You may skip other sections to go to the boot method you need. If in doubt, you may follow all of the sections at the cost of extra build time. After you have installed support for your boot method, then continue building the rest of the packages in this chapter. Making your LFS system bootable with GRUB will be discussed in [Section 10.4, "Using GRUB to Set Up the Boot Process."](../chapter10/grub.md "10.4. Using GRUB to Set Up the Boot Process"){.xref}
:::

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Unset any environment variables which may affect the build:

``` userinput
unset {C,CPP,CXX,LD}FLAGS
```

Don\'t try ["[tuning]{.quote}"]{.quote} this package with custom compilation flags. This package is a bootloader. The low-level operations in the source code may be broken by aggressive optimization.
:::

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.3 SBU]{.segbody}
:::

::: seg
**Required disk space:** [202 MB]{.segbody}
:::
:::::
::::::
:::::::::

:::: {.installation lang="en"}
## 8.64.1. Installation of GRUB for BIOS {#installation-of-grub-for-bios .sect2}

First fix a bug introduced in grub-2.14:

``` userinput
sed 's/--image-base/--nonexist-linker-option/' -i configure
```

Prepare GRUB for compilation:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-efiemu  \
            --disable-werror
```

::: variablelist
**The meaning of the new configure options:**

[*`--disable-werror`*]{.term}

:   This allows the build to complete with warnings introduced by more recent versions of Flex.

[*`--disable-efiemu`*]{.term}

:   This option minimizes what is built by disabling a feature and eliminating some test programs not needed for LFS.
:::

Compile the package:

``` userinput
make
```

The test suite for this packages is not recommended. Most of the tests depend on packages that are not available in the limited LFS environment. To run the tests anyway, run [**make check**]{.command}.

Install the package:

``` userinput
make install
```
::::

:::: {.installation lang="en"}
## 8.64.2. Installation of GRUB for 64-bit UEFI {#installation-of-grub-for-64-bit-uefi .sect2}

If you want to boot with 64-bit UEFI, you should build support for it.

First, if you built GRUB from the section above, clean the source tree:

``` userinput
make clean
```

Now configure GRUB for 64-bit UEFI support:

``` userinput
./configure --prefix=/usr       \
            --sysconfdir=/etc   \
            --target=x86_64     \
            --with-platform=efi \
            --disable-efiemu    \
            --disable-werror
```

::: variablelist
**The meaning of the new configure options:**

[*`--target=x86_64`*]{.term}

:   This defines that the UEFI firmware architecture is x86_64, which GRUB should target.

[*`--with-platform=efi`*]{.term}

:   This specifies that EFI is a platform GRUB should target. In combination with *`--target=x86_64`*, GRUB will have the ability to target the `x86_64-efi`{.literal} platform.
:::

Compile the package for 64-bit UEFI support:

``` userinput
make
```

Install support for 64-bit UEFI:

``` userinput
make install
```
::::

:::: {.installation lang="en"}
## 8.64.3. Installation of GRUB for 32-bit UEFI {#installation-of-grub-for-32-bit-uefi .sect2}

If you want to boot with 32-bit UEFI, which is very rare, you should build support for it.

First, if you built GRUB from any of the sections above, clean the source tree:

``` userinput
make clean
```

Now configure GRUB for 32-bit UEFI support:

``` userinput
./configure --prefix=/usr       \
            --sysconfdir=/etc   \
            --target=i386       \
            --with-platform=efi \
            --disable-efiemu    \
            --disable-werror
```

::: variablelist
**The meaning of the new configure options:**

[*`--target=i386`*]{.term}

:   This defines that the UEFI firmware architecture is i386/32-bit, which GRUB should target. In combination with *`--with-platform=efi`*, GRUB will have the ability to target the `i386-efi`{.literal} platform.
:::

Compile the package for 32-bit UEFI support:

``` userinput
make
```

Install support for 32-bit UEFI:

``` userinput
make install
```
::::

::::::::: {.content lang="en"}
## []{#contents-gRUB}8.64.4. Contents of GRUB {#contents-of-grub .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [grub-bios-setup, grub-editenv, grub-file, grub-fstest, grub-glue-efi, grub-install, grub-kbdcomp, grub-macbless, grub-menulst2cfg, grub-mkconfig, grub-mkimage, grub-mklayout, grub-mknetdir, grub-mkpasswd-pbkdf2, grub-mkrelpath, grub-mkrescue, grub-mkstandalone, grub-ofpathname, grub-probe, grub-reboot, grub-render-label, grub-script-check, grub-set-default, grub-sparc64-setup, and grub-syslinux2cfg]{.segbody}
:::

::: seg
**Installed directories:** [/usr/lib/grub, /etc/grub.d, /usr/share/grub, and /boot/grub (when grub-install is first run)]{.segbody}
:::
:::::
::::::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

`/usr/lib/grub`{.filename} will have different contents based on what platform(s) you have installed GRUB for. Namely, there will be different GRUB modules for each platform.
:::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------
  []{#grub-bios-setup}[[**grub-bios-setup**]{.command}]{.term}             Is a helper program for [**grub-install**]{.command}
  []{#grub-editenv}[[**grub-editenv**]{.command}]{.term}                   Is a tool to edit the environment block
  []{#grub-file}[[**grub-file**]{.command}]{.term}                         Checks to see if the given file is of the specified type
  []{#grub-fstest}[[**grub-fstest**]{.command}]{.term}                     Is a tool to debug the file system driver
  []{#grub-glue-efi}[[**grub-glue-efi**]{.command}]{.term}                 Glues 32-bit and 64-bit binaries into a single file (for Apple machines)
  []{#grub-install}[[**grub-install**]{.command}]{.term}                   Installs GRUB on your drive
  []{#grub-kbdcomp}[[**grub-kbdcomp**]{.command}]{.term}                   Is a script that converts an xkb layout into one recognized by GRUB
  []{#grub-macbless}[[**grub-macbless**]{.command}]{.term}                 Is the Mac-style bless for HFS or HFS+ file systems ([**bless**]{.command} is peculiar to Apple machines; it makes a device bootable)
  []{#grub-menulst2cfg}[[**grub-menulst2cfg**]{.command}]{.term}           Converts a GRUB Legacy `menu.lst`{.filename} into a `grub.cfg`{.filename} for use with GRUB 2
  []{#grub-mkconfig}[[**grub-mkconfig**]{.command}]{.term}                 Generates a `grub.cfg`{.filename} file
  []{#grub-mkimage}[[**grub-mkimage**]{.command}]{.term}                   Makes a bootable image of GRUB
  []{#grub-mklayout}[[**grub-mklayout**]{.command}]{.term}                 Generates a GRUB keyboard layout file
  []{#grub-mknetdir}[[**grub-mknetdir**]{.command}]{.term}                 Prepares a GRUB netboot directory
  []{#grub-mkpasswd-pbkdf2}[[**grub-mkpasswd-pbkdf2**]{.command}]{.term}   Generates an encrypted PBKDF2 password for use in the boot menu
  []{#grub-mkrelpath}[[**grub-mkrelpath**]{.command}]{.term}               Makes a system pathname relative to its root
  []{#grub-mkrescue}[[**grub-mkrescue**]{.command}]{.term}                 Makes a bootable image of GRUB suitable for a floppy disk, CDROM/DVD, or a USB drive
  []{#grub-mkstandalone}[[**grub-mkstandalone**]{.command}]{.term}         Generates a standalone image
  []{#grub-ofpathname}[[**grub-ofpathname**]{.command}]{.term}             Is a helper program that prints the path to a GRUB device
  []{#grub-probe}[[**grub-probe**]{.command}]{.term}                       Probes device information for a given path or device
  []{#grub-reboot}[[**grub-reboot**]{.command}]{.term}                     Sets the default boot entry for GRUB for the next boot only
  []{#grub-render-label}[[**grub-render-label**]{.command}]{.term}         Renders Apple .disk_label for Apple Macs
  []{#grub-script-check}[[**grub-script-check**]{.command}]{.term}         Checks the GRUB configuration script for syntax errors
  []{#grub-set-default}[[**grub-set-default**]{.command}]{.term}           Sets the default boot entry for GRUB
  []{#grub-sparc64-setup}[[**grub-sparc64-setup**]{.command}]{.term}       Is a helper program for grub-setup
  []{#grub-syslinux2cfg}[[**grub-syslinux2cfg**]{.command}]{.term}         Transforms a syslinux config file into grub.cfg format
  ------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::

::: navfooter
-   [Prev](groff.md "Groff-1.24.1"){accesskey="p"}

    Groff-1.24.1

-   [Next](gzip.md "Gzip-1.14"){accesskey="n"}

    Gzip-1.14

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
