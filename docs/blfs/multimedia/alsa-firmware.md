<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-tools.md "alsa-tools-1.2.15")

    alsa-tools-1.2.15

-   [Next](audiofile.md "AudioFile-0.3.6")

    AudioFile-0.3.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# alsa-firmware-1.2.4 {#alsa-firmware-1.2.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ALSA Firmware {#introduction-to-alsa-firmware}

The <span class="application">ALSA Firmware</span> package contains firmware for certain sound cards.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.alsa-project.org/files/pub/firmware/alsa-firmware-1.2.4.tar.bz2">https://www.alsa-project.org/files/pub/firmware/alsa-firmware-1.2.4.tar.bz2</a>

-   Download MD5 sum: ee6c1d24a1a4ac1d86992b408ed710a2

-   Download size: 4.9 MB

-   Estimated disk space required: 39 MB

-   Estimated build time: less than 0.1 SBU
</div>

### ALSA Firmware Dependencies

#### Required

<a class="xref" href="alsa-tools.md" title="alsa-tools-1.2.15">alsa-tools-1.2.15</a>

#### Optional

<a class="ulink" href="http://www.pjrc.com/tech/8051/">AS31</a> (for rebuilding the firmware from source)
</div>

<div class="installation" lang="en">
## Installation of ALSA Firmware {#installation-of-alsa-firmware}

The <span class="application">ALSA Firmware</span> package is only needed by those with advanced requirements for their sound card. See the README for configure options.

Install <span class="application">ALSA Firmware</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
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
**Installed Directories:** <span class="segbody">Several directories in /lib/firmware and /usr/share/alsa/firmware</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](alsa-tools.md "alsa-tools-1.2.15")

    alsa-tools-1.2.15

-   [Next](audiofile.md "AudioFile-0.3.6")

    AudioFile-0.3.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
