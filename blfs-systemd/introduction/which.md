::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 1. Welcome to BLFS

-   [Prev](welcome.md "Welcome to BLFS"){accesskey="p"}

    Welcome to BLFS

-   [Next](conventions.md "Conventions Used in this Book"){accesskey="n"}

    Conventions Used in this Book

-   [Up](welcome.md "Chapter 1. Welcome to BLFS"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#whichsections}Which Sections of the Book Do I Want? {#which-sections-of-the-book-do-i-want .sect1}

::: {.sect1 lang="en"}
Unlike the Linux From Scratch book, BLFS isn't designed to be followed in a linear manner. LFS provides instructions on how to create a base system which can become anything from a web server to a multimedia desktop system. BLFS attempts to guide you in the process of going from the base system to your intended destination. Choice is very much involved.

Everyone who reads this book will want to read certain sections. The [Introduction](introduction.md "Part I. Introduction"){.xref}, which you are currently reading, contains generic information. Take special note of the information in [Chapter 2, Important Information](important.md "Chapter 2. Important Information"){.xref}, as this contains comments about how to unpack software, issues related to the use of different locales, and various other considerations which apply throughout the book.

The part on [Post LFS Configuration and Extra Software](../postlfs/postlfs.md "Part II. Post LFS Configuration and Extra Software"){.xref} is where most people will want to turn next. This deals not only with configuration, but also with Security ([Chapter 4, Security](../postlfs/security.md "Chapter 4. Security"){.xref}), File Systems ([Chapter 5, File Systems and Disk Management](../postlfs/filesystems.md "Chapter 5. File Systems and Disk Management"){.xref} and UEFI booting tools), Text Editors ([Chapter 6, Text Editors](../postlfs/editors.md "Chapter 6. Text Editors"){.xref}), and Shells ([Chapter 7, Shells](../postlfs/shells.md "Chapter 7. Shells"){.xref}). Indeed, you may wish to reference some parts of this chapter (especially the sections on Text Editors and File Systems) while building your LFS system.

Following these basic items, most people will want to at least browse through the [General Libraries and Utilities](../general/general.md "Part III. General Libraries and Utilities"){.xref} part of the book. This contains information on many items which are prerequisites for other sections of the book, as well as some items (such as [Chapter 13, Programming](../general/prog.md "Chapter 13. Programming"){.xref}) which are useful in their own right. You don't have to install all of the libraries and packages found in this part; each BLFS installation procedure tells you which other packages this one depends upon. You can choose the program you want to install, and see what it needs. (Don't forget to check for nested dependencies!)

Likewise, most people will probably want to look at the [Networking](../basicnet/basicnet.md "Part IV. Networking"){.xref} section. It deals with connecting to the Internet or your LAN ([Chapter 14, Connecting to a Network](../basicnet/connect.md "Chapter 14. Connecting to a Network"){.xref}) using a variety of methods such as DHCP and PPP, and with items such as Networking Libraries ([Chapter 17, Networking Libraries](../basicnet/netlibs.md "Chapter 17. Networking Libraries"){.xref}), plus various basic networking programs and utilities.

Once you have dealt with these basics, you may wish to configure more advanced network services. These are dealt with in the [Servers](../server/server.md "Part V. Servers"){.xref} part of the book. Those wanting to build servers should find a good starting point there. Note that this section also contains information on several database packages.

The next twelve chapters deal with desktop systems. This portion of the book starts with a part talking about [Graphical Components](../x/x.md "Part VI. Graphical Components"){.xref}. This part also deals with some generic X-based libraries ([Chapter 25, Graphical Environment Libraries](../x/lib.md "Chapter 25. Graphical Environment Libraries"){.xref}). After that, [KDE](../kde/kde.md "Part VII. KDE"){.xref}, [GNOME](../gnome/gnome.md "Part VIII. GNOME"){.xref}, [Xfce](../xfce/xfce.md "Part IX. Xfce"){.xref}, and [LXQt](../lxqt/lxqt.md "Part X. LXQt"){.xref} are given their own parts, followed by one on [X Software](../xsoft/xsoft.md "Part XI. X Software"){.xref}.

The book then moves on to deal with [Multimedia](../multimedia/multimedia.md "Part XII. Multimedia"){.xref} packages. Note that many people may want to use the [ALSA](../multimedia/alsa.md "ALSA"){.xref} instructions from this chapter when first starting their BLFS journey; the instructions are placed here because it is the most logical place for them.

The final part of the main BLFS book deals with [Printing, Scanning and Typesetting](../pst/pst.md "Part XIII. Printing, Scanning and Typesetting"){.xref}. This is useful for most people with desktop systems, but even those who are creating dedicated server systems may find it useful.

We hope you enjoy using BLFS. May you realize your dream of building the perfectly personalized Linux system!
:::

::: navfooter
-   [Prev](welcome.md "Welcome to BLFS"){accesskey="p"}

    Welcome to BLFS

-   [Next](conventions.md "Conventions Used in this Book"){accesskey="n"}

    Conventions Used in this Book

-   [Up](welcome.md "Chapter 1. Welcome to BLFS"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
