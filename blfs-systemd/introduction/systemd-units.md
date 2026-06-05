<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](patches.md "Optional Patches")

    Optional Patches

-   [Next](la-files.md "About Libtool Archive (.la) files")

    About Libtool Archive (.la) files

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# BLFS Systemd Units {#blfs-systemd-units}

<div class="sect1" lang="en">
The BLFS Systemd Units package contains the systemd unit files that are used throughout the book.

<div class="itemizedlist">
**Package Information**

-   Download: <a class="ulink" href="https://www.linuxfromscratch.org/blfs/downloads/systemd/blfs-systemd-units-20251204.tar.xz">https://www.linuxfromscratch.org/blfs/downloads/systemd/blfs-systemd-units-20251204.tar.xz</a>
</div>

The BLFS Systemd Units package will be used throughout the BLFS book for systemd unit files. Each systemd unit has a separate install target. It is recommended that you keep the package source directory around until completion of your BLFS system. When a systemd unit is requested from BLFS Systemd Units, simply change to the directory, and as the <code class="systemitem">root</code> user, execute the given <span class="command"><strong>make install-<em>`<systemd-unit>`</strong></em></span> command. This command installs the systemd unit to its proper location (along with any auxiliary configuration scripts) and also enables it by default.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

It is advisable to peruse each systemd unit before installation to determine whether the installed files meet your needs.
</div>
</div>

<div class="navfooter">
-   [Prev](patches.md "Optional Patches")

    Optional Patches

-   [Next](la-files.md "About Libtool Archive (.la) files")

    About Libtool Archive (.la) files

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
