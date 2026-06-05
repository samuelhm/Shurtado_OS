<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](intltool.md "Intltool-0.51.0")

    Intltool-0.51.0

-   [Next](lsof.md "lsof-4.99.6")

    lsof-4.99.6

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ISO Codes-4.20.1 {#iso-codes-4.20.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ISO Codes {#introduction-to-iso-codes}

The <span class="application">ISO Codes</span> package contains a list of country, language and currency names and it is used as a central database for accessing this data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/v4.20.1/iso-codes-v4.20.1.tar.gz">https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/v4.20.1/iso-codes-v4.20.1.tar.gz</a>

-   Download MD5 sum: a8f16a62662ec13e55ca255a7c036ee3

-   Download size: 16 MB

-   Estimated disk space required: 114 MB

-   Estimated build time: less than 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of ISO Codes {#installation-of-iso-codes}

Install <span class="application">ISO Codes</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/iso-codes, /usr/share/xml/iso-codes</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](intltool.md "Intltool-0.51.0")

    Intltool-0.51.0

-   [Next](lsof.md "lsof-4.99.6")

    lsof-4.99.6

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
