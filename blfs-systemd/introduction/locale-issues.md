<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](libraries.md "Libraries: Static or shared?")

    Libraries: Static or shared?

-   [Next](beyond.md "Going Beyond BLFS")

    Going Beyond BLFS

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Locale Related Issues {#locale-related-issues}

<div class="sect1" lang="en">
This page contains information about locale related problems and issues. In the following paragraphs you'll find a generic overview of things that can come up when configuring your system for various locales. Many (but not all) existing locale related problems can be classified and fall under one of the headings below. The severity ratings below use the following criteria:

<div class="itemizedlist">
-   Critical: The program doesn't perform its main function. The fix would be very intrusive, it's better to search for a replacement.

-   High: Part of the functionality that the program provides is not usable. If that functionality is required, it's better to search for a replacement.

-   Low: The program works in all typical use cases, but lacks some functionality normally provided by its equivalents.
</div>

If there is a known workaround for a specific package, it will appear on that package's page.

<div class="sect2" lang="en">
## The Needed Encoding is Not a Valid Option in the Program {#the-needed-encoding-is-not-a-valid-option-in-the-program}

Severity: Critical

Some programs require the user to specify the character encoding for their input or output data and present only a limited choice of encodings. This is the case for the <code class="option">-X</code> option in <a class="xref" href="../pst/enscript.md" title="Enscript-1.6.6">Enscript-1.6.6</a>, the <code class="option">-input-charset</code> option in unpatched <a class="xref" href="../multimedia/cdrtools.md" title="Cdrtools-3.02a09">Cdrtools-3.02a09</a>, and the character sets offered for display in the menu of <a class="xref" href="../basicnet/links.md" title="Links-2.30">Links-2.30</a>. If the required encoding is not in the list, the program usually becomes completely unusable. For non-interactive programs, it may be possible to work around this by converting the document to a supported input character set before submitting to the program.

A solution to this type of problem is to implement the necessary support for the missing encoding as a patch to the original program or to find a replacement.
</div>

<div class="sect2" lang="en">
## The Program Assumes the Locale-Based Encoding of External Documents {#the-program-assumes-the-locale-based-encoding-of-external-documents}

Severity: High for non-text documents, low for text documents

Some programs, <a class="xref" href="../postlfs/nano.md" title="Nano-9.0">nano-9.0</a> or <a class="xref" href="../postlfs/joe.md" title="JOE-4.6">JOE-4.6</a> for example, assume that documents are always in the encoding implied by the current locale. While this assumption may be valid for the user-created documents, it is not safe for external ones. When this assumption fails, non-ASCII characters are displayed incorrectly, and the document may become unreadable.

If the external document is entirely text based, it can be converted to the current locale encoding using the <span class="command"><strong>iconv</strong></span> program.

For documents that are not text-based, this is not possible. In fact, the assumption made in the program may be completely invalid for documents where the Microsoft Windows operating system has set de facto standards. An example of this problem is ID3v1 tags in MP3 files. For these cases, the only solution is to find a replacement program that doesn't have the issue (e.g., one that will allow you to specify the assumed document encoding).

Among BLFS packages, this problem applies to <a class="xref" href="../postlfs/nano.md" title="Nano-9.0">nano-9.0</a>, <a class="xref" href="../postlfs/joe.md" title="JOE-4.6">JOE-4.6</a>, and all media players except <a class="xref" href="../multimedia/audacious.md" title="Audacious-4.6">Audacious-4.6</a>.

Another problem in this category is when someone cannot read the documents you've sent them because their operating system is set up to handle character encodings differently. This can happen often when the other person is using Microsoft Windows, which only provides one character encoding for a given country. For example, this causes problems with UTF-8 encoded TeX documents created in Linux. On Windows, most applications will assume that these documents have been created using the default Windows 8-bit encoding.

In extreme cases, Windows encoding compatibility issues may be solved only by running Windows programs under <a class="ulink" href="https://www.winehq.org/">Wine</a>.
</div>

<div class="sect2" lang="en">
## The Program Uses or Creates Filenames in the Wrong Encoding {#the-program-uses-or-creates-filenames-in-the-wrong-encoding}

Severity: Critical

The POSIX standard mandates that the filename encoding is the encoding implied by the current LC_CTYPE locale category. This information is well-hidden on the page which specifies the behavior of <span class="application">Tar</span> and <span class="application">Cpio</span> programs. Some programs get it wrong by default (or simply don't have enough information to get it right). The result is that they create filenames which are not subsequently shown correctly by <span class="command"><strong>ls</strong></span>, or they refuse to accept filenames that <span class="command"><strong>ls</strong></span> shows properly. For the <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> library, the problem can be corrected by setting the <code class="envar">G_FILENAME_ENCODING</code> environment variable to the special "@locale" value. <span class="application">Glib2</span> based programs that don't respect that environment variable are buggy.

The <code class="filename">.zip</code> format has this problem because it does not save the encoding for the names of the archived files. When <span class="command"><strong>unzip</strong></span> (actually, a symlink to <span class="command"><strong>bsdunzip</strong></span> from <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>) extracts it, by default the names are assumed to be encoded as CP850, the Windows code page for Western European languages. But the names may be actually encoded in a different way if it contains non-Latin characters (for example, CP936 for Simplified Chinese). Then without manually specifying the encoding, those non-Latin characters will be turned into unreadable sequences by <span class="command"><strong>bsdunzip</strong></span>.

The general rule for avoiding this class of problems is to avoid installing broken programs. If this is impossible, the <a class="ulink" href="https://j3e.de/linux/convmv/">convmv</a> command-line tool can be used to fix filenames created by these broken programs, or intentionally mangle the existing filenames to meet the broken expectations of such programs.

In other cases, a similar problem is caused by importing filenames from a system using a different locale with a tool that is not locale-aware (e.g., <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>). In order to avoid mangling non-ASCII characters when transferring files to a system with a different locale, any of the following methods can be used:

<div class="itemizedlist">
-   Transfer anyway, fix the damage with <span class="command"><strong>convmv</strong></span>.

-   On the sending side, create a tar archive with the *`--format=posix`* switch passed to <span class="command"><strong>tar</strong></span> (this will be the default in a future version of <span class="command"><strong>tar</strong></span>).

-   Mail the files as attachments. Mail clients specify the encoding of attached filenames.

-   Write the files to a removable disk formatted with a FAT or FAT32 filesystem.

-   Transfer the files using Samba.

-   Transfer the files via FTP using RFC2640-aware server (this currently means only wu-ftpd, which has bad security history) and client (e.g., lftp).
</div>

The last four methods work because the filenames are automatically converted from the sender's locale to UNICODE and stored or sent in this form. They are then transparently converted from UNICODE to the recipient's locale encoding.
</div>

<div class="sect2" lang="en">
## The Program Breaks Multibyte Characters or Doesn't Count Character Cells Correctly {#the-program-breaks-multibyte-characters-or-doesnt-count-character-cells-correctly}

Severity: High or critical

Many programs were written in an older era where multibyte locales were not common. Such programs assume that C "char" data type, which is one byte, can be used to store single characters. Further, they assume that any sequence of characters is a valid string and that every character occupies a single character cell. Such assumptions completely break in UTF-8 locales. The visible manifestation is that the program truncates strings prematurely (i.e., at 80 bytes instead of 80 characters). Terminal-based programs don't place the cursor correctly on the screen, don't react to the "Backspace" key by erasing one character, and leave junk characters around when updating the screen, usually turning the screen into a complete mess.

Fixing this kind of problems is a tedious task from a programmer's point of view, like all other cases of retrofitting new concepts into the old flawed design. In this case, one has to redesign all data structures in order to accommodate to the fact that a complete character may span a variable number of "char"s (or switch to wchar_t and convert as needed). Also, for every call to the "strlen" and similar functions, find out whether a number of bytes, a number of characters, or the width of the string was really meant. Sometimes it is faster to write a program with the same functionality from scratch.

Among BLFS packages, this problem applies to <a class="xref" href="../multimedia/xine-ui.md" title="xine-ui-0.99.14">xine-ui-0.99.14</a> and all the shells.
</div>
</div>

<div class="navfooter">
-   [Prev](libraries.md "Libraries: Static or shared?")

    Libraries: Static or shared?

-   [Next](beyond.md "Going Beyond BLFS")

    Going Beyond BLFS

-   [Up](important.md "Chapter 2. Important Information")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
