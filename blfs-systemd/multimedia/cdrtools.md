::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](cdrdao.md "Cdrdao-1.2.6"){accesskey="p"}

    Cdrdao-1.2.6

-   [Next](dvd-rw-tools.md "dvd+rw-tools-7.1"){accesskey="n"}

    dvd+rw-tools-7.1

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cdrtools}Cdrtools-3.02a09 {#cdrtools-3.02a09 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Cdrtools {#introduction-to-cdrtools .sect2}

The [Cdrtools]{.application} package contains CD recording utilities. These are useful for reading, creating or writing (burning) CDs, DVDs, and Blu-ray discs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/cdrtools/cdrtools-3.02a09.tar.bz2](https://downloads.sourceforge.net/cdrtools/cdrtools-3.02a09.tar.bz2){.ulink}

-   Download MD5 sum: 1e224a6adbbe4ad40047b9fddbb0e60c

-   Download size: 2.1 MB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.7 SBU
:::

### Cdrtools Dependencies

#### Required

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/Cdrtools](https://wiki.linuxfromscratch.org/blfs/wiki/Cdrtools){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Cdrtools {#installation-of-cdrtools .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
:::

Install [Cdrtools]{.application} by running the following commands:

``` userinput
sed -i 's|/opt/schily|/usr|g'           DEFAULTS/Defaults.linux &&
sed -i 's|DEFINSGRP=.*|DEFINSGRP=root|' DEFAULTS/Defaults.linux &&
sed -i 's|INSDIR=\s*sbin|INSDIR=bin|'   rscsi/Makefile          &&

export GMAKE_NOWARN=true &&
export CFLAGS="$CFLAGS -std=gnu89 -fno-strict-aliasing" &&

make -j1 INS_BASE=/usr  \
         DEFINSUSR=root \
         DEFINSGRP=root \
         VERSION_OS="LinuxFromScratch"
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
GMAKE_NOWARN=true &&

make INS_BASE=/usr    \
     DEFINSUSR=root   \
     DEFINSGRP=root   \
     MANSUFF_LIB=3cdr \
     install          &&

install -v -m755 -d /usr/share/doc/cdrtools-3.02a09 &&
install -v -m644 README.* READMEs/* ABOUT doc/*.ps \
                    /usr/share/doc/cdrtools-3.02a09
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**export GMAKE_NOWARN=true**]{.command}: This variable avoids a warning when using GNU make.

*`INS_BASE=/usr`*: This parameter moves the install directory from `/opt/schily`{.filename} to `/usr`{.filename}.

*`DEFINSUSR=root DEFINSGRP=root`*: These parameters install all programs with root:root ownership instead of the default bin:bin.

*`MANSUFF_LIB=3cdr`*: This parameter prevents [Cdrtools]{.application} from overwriting important pages which are already installed by LFS. The installed man pages of section 3 will have a suffix `3cdr`{.literal} and can be shown using [**man 3cdr \<manpage\>**]{.command}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [btcflash, cdda2mp3, cdda2ogg, cdda2wav, cdrecord, devdump, isodebug, isodump, isoinfo, isovfy, mkhybrid, mkisofs, readcd, rscsi, scgcheck, scgskeleton]{.segbody}
:::

::: seg
**Installed Libraries:** [libcdrdeflt.a, libdeflt.a, libedc_ecc.a, libedc_ecc_dec.a, libfile.a, libfind.a, libhfs.a, libmdigest.a, libparanoia.a, librscg.a, libscg.a, libscgcmd.a, libschily.a, libsiconv.a]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/{profiled,siconv}, /usr/include/{scg,schily}, /usr/share/doc/cdda2wav,cdrecord,libparanoia,mkisofs,rscsi}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------------------------------------
  []{#btcflash}[[**btcflash**]{.command}]{.term}   flashes the firmware on BTC DRW1008 DVD+/-RW recorders. Please exercise care with this program
  []{#cdda2wav}[[**cdda2wav**]{.command}]{.term}   converts Compact Disc audio into WAV sound files
  []{#cdrecord}[[**cdrecord**]{.command}]{.term}   records audio or data onto Compact Discs
  []{#devdump}[[**devdump**]{.command}]{.term}     is a diagnostic program used to dump an ISO-9660 device or file in hex
  []{#isodebug}[[**isodebug**]{.command}]{.term}   is used to display the command-line parameters used to create an ISO-9660 image
  []{#isodump}[[**isodump**]{.command}]{.term}     is a diagnostic program used to dump a device or file based on ISO-9660
  []{#isoinfo}[[**isoinfo**]{.command}]{.term}     is used to analyze or list an ISO-9660 image
  []{#isovfy}[[**isovfy**]{.command}]{.term}       is used to verify an ISO-9660 image
  []{#mkhybrid}[[**mkhybrid**]{.command}]{.term}   is a symbolic link to [**mkisofs**]{.command} used to create ISO-9660/HFS hybrid filesystem images
  []{#mkisofs}[[**mkisofs**]{.command}]{.term}     is used to create ISO-9660/JOLIET/HFS filesystem images, optionally with Rock Ridge attributes
  []{#readcd}[[**readcd**]{.command}]{.term}       reads or writes Compact Discs
  []{#rscsi}[[**rscsi**]{.command}]{.term}         is a remote SCSI manager
  []{#scgcheck}[[**scgcheck**]{.command}]{.term}   is used to check and verify the Application Binary Interface of `libscg`{.filename}
  []{#libscg}[`libscg.a`{.filename}]{.term}        is a highly portable SCSI transport library
  ------------------------------------------------ ----------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](cdrdao.md "Cdrdao-1.2.6"){accesskey="p"}

    Cdrdao-1.2.6

-   [Next](dvd-rw-tools.md "dvd+rw-tools-7.1"){accesskey="n"}

    dvd+rw-tools-7.1

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
