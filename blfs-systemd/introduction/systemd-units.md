::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](patches.md "Optional Patches"){accesskey="p"}

    Optional Patches

-   [Next](la-files.md "About Libtool Archive (.la) files"){accesskey="n"}

    About Libtool Archive (.la) files

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#systemd-units}BLFS Systemd Units {#blfs-systemd-units .sect1}

::::: {.sect1 lang="en"}
The BLFS Systemd Units package contains the systemd unit files that are used throughout the book.

::: itemizedlist
**Package Information**

-   Download: [https://www.linuxfromscratch.org/blfs/downloads/systemd/blfs-systemd-units-20251204.tar.xz](https://www.linuxfromscratch.org/blfs/downloads/systemd/blfs-systemd-units-20251204.tar.xz){.ulink}
:::

The BLFS Systemd Units package will be used throughout the BLFS book for systemd unit files. Each systemd unit has a separate install target. It is recommended that you keep the package source directory around until completion of your BLFS system. When a systemd unit is requested from BLFS Systemd Units, simply change to the directory, and as the `root`{.systemitem} user, execute the given [**make install-*`<systemd-unit>`***]{.command} command. This command installs the systemd unit to its proper location (along with any auxiliary configuration scripts) and also enables it by default.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

It is advisable to peruse each systemd unit before installation to determine whether the installed files meet your needs.
:::
:::::

::: navfooter
-   [Prev](patches.md "Optional Patches"){accesskey="p"}

    Optional Patches

-   [Next](la-files.md "About Libtool Archive (.la) files"){accesskey="n"}

    About Libtool Archive (.la) files

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
