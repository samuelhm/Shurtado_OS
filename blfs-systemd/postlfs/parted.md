::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](gptfdisk.md "gptfdisk-1.0.10"){accesskey="p"}

    gptfdisk-1.0.10

-   [Next](smartmontools.md "smartmontools-7.5"){accesskey="n"}

    smartmontools-7.5

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#parted}parted-3.7 {#parted-3.7 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to parted {#introduction-to-parted .sect2}

The [Parted]{.application} package is a disk partitioning and partition resizing tool.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/parted/parted-3.7.tar.xz](https://ftpmirror.gnu.org/parted/parted-3.7.tar.xz){.ulink}

-   Download MD5 sum: b56ec0cf7bc89d61da1585f88fc8ef5e

-   Download size: 1.9 MB

-   Estimated disk space required: 35 MB (additional 3 MB for the tests and additional 2 MB for optional PDF and Postscript documentation)

-   Estimated build time: 0.3 SBU (additional 3.6 SBU for the tests)
:::

### Parted Dependencies

#### Recommended

[LVM2-2.03.41](lvm2.md "LVM2-2.03.41"){.xref} (device-mapper, required if building [udisks]{.application})

#### Optional

[dosfstools-4.2](dosfstools.md "dosfstools-4.2"){.xref}, [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}), and [Digest::CRC](https://metacpan.org/pod/Digest::CRC){.ulink} (for tests)
:::::

::: {.kernel lang="en"}
## []{#parted-kernel}Optional Kernel Configuration for Tests {#optional-kernel-configuration-for-tests .sect2}

About 20 % more tests are run if the following kernel module is built:

``` screen
Device Drivers --->
  SCSI device support --->
    [*] SCSI low-level drivers --->                              [SCSI_LOWLEVEL]
      <M> SCSI debugging host and device simulator                  [SCSI_DEBUG]
```
:::

:::: {.installation lang="en"}
## Installation of parted {#installation-of-parted .sect2}

Install [Parted]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make &&

make -C doc html                                       &&
makeinfo --html      -o doc/html       doc/parted.texi &&
makeinfo --plaintext -o doc/parted.txt doc/parted.texi
```

If you have [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed and wish to create PDF and Postscript documentation issue the following commands:

``` userinput
cp build-aux/texinfo.tex doc               &&
texi2pdf -o doc/parted.pdf doc/parted.texi &&
texi2dvi -o doc/parted.dvi doc/parted.texi &&
dvips    -o doc/parted.ps  doc/parted.dvi
```

To test the results, issue, as the `root`{.systemitem} user:

``` root
make check
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Many tests are skipped if not run as the `root`{.systemitem} user.
:::

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m755 -d /usr/share/doc/parted-3.7/html &&
install -v -m644    doc/html/* \
                    /usr/share/doc/parted-3.7/html &&
install -v -m644    doc/{FAT,API.md,parted.{txt,html}} \
                    /usr/share/doc/parted-3.7
```

Install the optional PDF and Postscript documentation by issuing the following command as the `root`{.systemitem} user:

``` root
install -v -m644 doc/FAT doc/API doc/parted.{pdf,ps,dvi} \
                    /usr/share/doc/parted-3.7
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--disable-device-mapper`{.option}: This option disables device mapper support. Add this parameter if you have not installed [LVM2]{.application}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [parted and partprobe]{.segbody}
:::

::: seg
**Installed Libraries:** [libparted.so and libparted-fs-resize.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/parted and /usr/share/doc/parted-3.7]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------
  []{#parted-prog}[[**parted**]{.command}]{.term}    is a partition manipulation program
  []{#partprobe}[[**partprobe**]{.command}]{.term}   informs the OS of partition table changes
  []{#libparted}[`libparted.so`{.filename}]{.term}   contains the [Parted]{.application} API functions
  -------------------------------------------------- ---------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](gptfdisk.md "gptfdisk-1.0.10"){accesskey="p"}

    gptfdisk-1.0.10

-   [Next](smartmontools.md "smartmontools-7.5"){accesskey="n"}

    smartmontools-7.5

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
