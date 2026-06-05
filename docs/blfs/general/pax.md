<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](notification-daemon.md "notification-daemon-3.20.0")

    notification-daemon-3.20.0

-   [Next](pm-utils.md "pm-utils-1.4.1")

    pm-utils-1.4.1

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Pax-20240817 {#pax-20240817}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Pax {#introduction-to-pax}

<span class="application">pax</span> is an archiving utility created by POSIX and defined by the POSIX.1-2001 standard. Rather than sort out the incompatible options that have crept up between <span class="application">tar</span> and <span class="application">cpio</span>, along with their implementations across various versions of UNIX, the IEEE designed a new archive utility. The name <span class="quote">“<span class="quote">pax</span>”</span> is an acronym for portable archive exchange. Furthermore, <span class="quote">“<span class="quote">pax</span>”</span> means <span class="quote">“<span class="quote">peace</span>”</span> in Latin, so its name implies that it shall create peace between the <span class="application">tar</span> and <span class="application">cpio</span> format supporters. The command invocation and command structure is somewhat a unification of both <span class="application">tar</span> and <span class="application">cpio</span>.

<span class="application">pax</span> has been required to be present in LSB conformant systems since LSB version 3.0.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://www.mirbsd.org/MirOS/dist/mir/cpio/paxmirabilis-20240817.tgz">http://www.mirbsd.org/MirOS/dist/mir/cpio/paxmirabilis-20240817.tgz</a>

-   Download MD5 sum: 9a723154a4201a0892b7ff815b6753b5

-   Download size: 180 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Pax {#installation-of-pax}

Install pax by running the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package expands to the directory <span class="emphasis"><em>pax</em></span>.
</div>

```bash
bash Build.sh
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package also creates hard links from <span class="command"><strong>pax</strong></span> to the programs <span class="command"><strong>cpio</strong></span> and <span class="command"><strong>tar</strong></span> in the build directory. The LFS editors do not recommend that they be installed as they will overwrite the GNU versions of these programs.
</div>

```bash
install -v pax /usr/bin &&
install -v -m644 pax.1 /usr/share/man/man1
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">pax</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------- ------------------------------------------------------
  <a id="pax-prog"></a><span class="command"><span class="term"><strong>pax</strong></span></span>   copies files to and from archives in several formats
  ------------------------------------------- ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](notification-daemon.md "notification-daemon-3.20.0")

    notification-daemon-3.20.0

-   [Next](pm-utils.md "pm-utils-1.4.1")

    pm-utils-1.4.1

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
