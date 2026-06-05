::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](initramfs.md "About initramfs"){accesskey="p"}

    About initramfs

-   [Next](dosfstools.md "dosfstools-4.2"){accesskey="n"}

    dosfstools-4.2

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#btrfs-progs}btrfs-progs-7.0 {#btrfs-progs-7.0 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to btrfs-progs {#introduction-to-btrfs-progs .sect2}

The [btrfs-progs]{.application} package contains administration and debugging tools for the B-tree file system (btrfs).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/linux/kernel/people/kdave/btrfs-progs/btrfs-progs-v7.0.tar.xz](https://www.kernel.org/pub/linux/kernel/people/kdave/btrfs-progs/btrfs-progs-v7.0.tar.xz){.ulink}

-   Download MD5 sum: 58f14462ee1da3e36d0bde684e48b9ea

-   Download size: 4.8 MB

-   Estimated disk space required: 70 MB (transient files created during tests need up to 10 GB)

-   Estimated build time: 0.3 SBU (with parallelism=4; add 4.6 SBU for tests, up to 14 SBU on slow disks)
:::

### Btrfs-progs Dependencies

#### Required

[LZO-2.10](../general/lzo.md "LZO-2.10"){.xref}

#### Optional

[LVM2-2.03.41](lvm2.md "LVM2-2.03.41"){.xref} ([**dmsetup**]{.command} is used in tests), [ntfs-3g-2026.2.25](ntfs-3g.md "ntfs-3g-2026.2.25"){.xref}, [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} and [sphinx_rtd_theme-3.1.0](../general/python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref} (required to build documentation), and [reiserfsprogs](https://mirrors.edge.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/){.ulink} (for tests).
:::::

::: {.kernel lang="en"}
## []{#btrfs-progs-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following option in the kernel configuration and recompile the kernel:

``` screen
File systems --->
  <*/M> Btrfs filesystem support                                      [BTRFS_FS]
```

In addition to the above and to the options required for [LVM2-2.03.41](lvm2.md "LVM2-2.03.41"){.xref}, the following options must be set for running tests. The options marked as empty should [*not*]{.emphasis} be selected because they are for developers and make some tests fail.

``` screen
File systems --->
  <*/M> Btrfs filesystem support                                      [BTRFS_FS]
  [*]     Btrfs POSIX Access Control Lists                  [BTRFS_FS_POSIX_ACL]
  [ ]     Btrfs will run sanity tests upon loading   [BTRFS_FS_RUN_SANITY_TESTS]
  [ ]     Btrfs debugging support                                  [BTRFS_DEBUG]
  [ ]     Btrfs assert support                                    [BTRFS_ASSERT]
```
:::

:::: {.installation lang="en"}
## Installation of btrfs-progs {#installation-of-btrfs-progs .sect2}

Install [btrfs-progs]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr           \
            --disable-static        \
            --disable-documentation &&
make
```

Before running tests, build a support program:

``` userinput
make fssum
```

Now, remove tests that are known to fail. As `root`{.systemitem}:

``` userinput
rm -rf tests/mkfs-tests/042-rootdir-contents
rm -rf tests/misc-tests/041-subvolume-delete-during-send
rm -rf tests/fuzz-tests/010-simple-sb
```

To test the results, issue (as the `root`{.systemitem} user):

``` root
pushd tests
   ./fsck-tests.sh
   ./mkfs-tests.sh
   ./cli-tests.sh
   ./convert-tests.sh
   ./misc-tests.sh
   ./fuzz-tests.sh
popd
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If the above mentioned kernel options are not enabled, some tests fail, and prevent all the remaining tests from running because the test disk image is not cleanly unmounted. Also make sure that the btrfs kernel module is loaded.
:::

Install the package as the `root`{.systemitem} user:

``` root
make install
```

If you have passed *`--disable-documentation`* to [**configure**]{.command} and you need the manual pages, install them by running, as the `root`{.systemitem} user:

``` root
for i in 5 8; do
   install Documentation/*.$i /usr/share/man/man$i
done
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--disable-documentation`*: This switch disables rebuilding the manual pages, because it requires [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [btrfs, btrfs-convert, btrfs-find-root, btrfs-image, btrfs-map-logical, btrfs-select-super, btrfsck (link to btrfs), btrfstune, fsck.btrfs, and mkfs.btrfs]{.segbody}
:::

::: seg
**Installed Libraries:** [libbtrfs.so and libbtrfsutil.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/btrfs]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- -----------------------------------------------------------
  []{#btrfs-prog}[[**btrfs**]{.command}]{.term}                        is the main interface into btrfs filesystem operations
  []{#btrfs-convert}[[**btrfs-convert**]{.command}]{.term}             converts from an ext2/3/4 or reiserfs filesystem to btrfs
  []{#btrfs-find-root}[[**btrfs-find-root**]{.command}]{.term}         is a filter to find btrfs root
  []{#btrfs-map-logical}[[**btrfs-map-logical**]{.command}]{.term}     maps btrfs logical extent to physical extent
  []{#btrfs-select-super}[[**btrfs-select-super**]{.command}]{.term}   overwrites the primary superblock with a backup copy
  []{#btrfstune}[[**btrfstune**]{.command}]{.term}                     tunes various filesystem parameters
  []{#fsck.btrfs}[[**fsck.btrfs**]{.command}]{.term}                   does nothing, but is present for consistency with fstab
  []{#mkfs.btrfs}[[**mkfs.btrfs**]{.command}]{.term}                   creates a btrfs file system
  -------------------------------------------------------------------- -----------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](initramfs.md "About initramfs"){accesskey="p"}

    About initramfs

-   [Next](dosfstools.md "dosfstools-4.2"){accesskey="n"}

    dosfstools-4.2

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
