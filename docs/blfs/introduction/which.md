<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 1. Welcome to BLFS

-   [Prev](welcome.md "Welcome to BLFS")

    Welcome to BLFS

-   [Next](conventions.md "Conventions Used in this Book")

    Conventions Used in this Book

-   [Up](welcome.md "Chapter 1. Welcome to BLFS")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Which Sections of the Book Do I Want? {#which-sections-of-the-book-do-i-want}

<div class="sect1" lang="en">
Unlike the Linux From Scratch book, BLFS isn't designed to be followed in a linear manner. LFS provides instructions on how to create a base system which can become anything from a web server to a multimedia desktop system. BLFS attempts to guide you in the process of going from the base system to your intended destination. Choice is very much involved.

Everyone who reads this book will want to read certain sections. The <a class="xref" href="introduction.md" title="Part I. Introduction">Introduction</a>, which you are currently reading, contains generic information. Take special note of the information in <a class="xref" href="important.md" title="Chapter 2. Important Information">Chapter 2, Important Information</a>, as this contains comments about how to unpack software, issues related to the use of different locales, and various other considerations which apply throughout the book.

The part on <a class="xref" href="../postlfs/postlfs.md" title="Part II. Post LFS Configuration and Extra Software">Post LFS Configuration and Extra Software</a> is where most people will want to turn next. This deals not only with configuration, but also with Security (<a class="xref" href="../postlfs/security.md" title="Chapter 4. Security">Chapter 4, Security</a>), File Systems (<a class="xref" href="../postlfs/filesystems.md" title="Chapter 5. File Systems and Disk Management">Chapter 5, File Systems and Disk Management</a> and UEFI booting tools), Text Editors (<a class="xref" href="../postlfs/editors.md" title="Chapter 6. Text Editors">Chapter 6, Text Editors</a>), and Shells (<a class="xref" href="../postlfs/shells.md" title="Chapter 7. Shells">Chapter 7, Shells</a>). Indeed, you may wish to reference some parts of this chapter (especially the sections on Text Editors and File Systems) while building your LFS system.

Following these basic items, most people will want to at least browse through the <a class="xref" href="../general/general.md" title="Part III. General Libraries and Utilities">General Libraries and Utilities</a> part of the book. This contains information on many items which are prerequisites for other sections of the book, as well as some items (such as <a class="xref" href="../general/prog.md" title="Chapter 13. Programming">Chapter 13, Programming</a>) which are useful in their own right. You don't have to install all of the libraries and packages found in this part; each BLFS installation procedure tells you which other packages this one depends upon. You can choose the program you want to install, and see what it needs. (Don't forget to check for nested dependencies!)

Likewise, most people will probably want to look at the <a class="xref" href="../basicnet/basicnet.md" title="Part IV. Networking">Networking</a> section. It deals with connecting to the Internet or your LAN (<a class="xref" href="../basicnet/connect.md" title="Chapter 14. Connecting to a Network">Chapter 14, Connecting to a Network</a>) using a variety of methods such as DHCP and PPP, and with items such as Networking Libraries (<a class="xref" href="../basicnet/netlibs.md" title="Chapter 17. Networking Libraries">Chapter 17, Networking Libraries</a>), plus various basic networking programs and utilities.

Once you have dealt with these basics, you may wish to configure more advanced network services. These are dealt with in the <a class="xref" href="../server/server.md" title="Part V. Servers">Servers</a> part of the book. Those wanting to build servers should find a good starting point there. Note that this section also contains information on several database packages.

The next twelve chapters deal with desktop systems. This portion of the book starts with a part talking about <a class="xref" href="../x/x.md" title="Part VI. Graphical Components">Graphical Components</a>. This part also deals with some generic X-based libraries (<a class="xref" href="../x/lib.md" title="Chapter 25. Graphical Environment Libraries">Chapter 25, Graphical Environment Libraries</a>). After that, <a class="xref" href="../kde/kde.md" title="Part VII. KDE">KDE</a>, <a class="xref" href="../gnome/gnome.md" title="Part VIII. GNOME">GNOME</a>, <a class="xref" href="../xfce/xfce.md" title="Part IX. Xfce">Xfce</a>, and <a class="xref" href="../lxqt/lxqt.md" title="Part X. LXQt">LXQt</a> are given their own parts, followed by one on <a class="xref" href="../xsoft/xsoft.md" title="Part XI. X Software">X Software</a>.

The book then moves on to deal with <a class="xref" href="../multimedia/multimedia.md" title="Part XII. Multimedia">Multimedia</a> packages. Note that many people may want to use the <a class="xref" href="../multimedia/alsa.md" title="ALSA">ALSA</a> instructions from this chapter when first starting their BLFS journey; the instructions are placed here because it is the most logical place for them.

The final part of the main BLFS book deals with <a class="xref" href="../pst/pst.md" title="Part XIII. Printing, Scanning and Typesetting">Printing, Scanning and Typesetting</a>. This is useful for most people with desktop systems, but even those who are creating dedicated server systems may find it useful.

We hope you enjoy using BLFS. May you realize your dream of building the perfectly personalized Linux system!
</div>

<div class="navfooter">
-   [Prev](welcome.md "Welcome to BLFS")

    Welcome to BLFS

-   [Next](conventions.md "Conventions Used in this Book")

    Conventions Used in this Book

-   [Up](welcome.md "Chapter 1. Welcome to BLFS")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
