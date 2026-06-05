<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libunwind.md "libunwind-1.8.3")

    libunwind-1.8.3

-   [Next](libusb.md "libusb-1.0.30")

    libusb-1.0.30

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# liburcu-0.15.6 {#liburcu-0.15.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to liburcu {#introduction-to-liburcu}

The <span class="application">userspace-rcu</span> package provides a set of userspace RCU (read-copy-update) libraries. These data synchronization libraries provide read-side access which scales linearly with the number of cores. It does so by allowing multiples copies of a given data structure to live at the same time, and by monitoring the data structure accesses to detect grace periods after which memory reclamation is possible.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://lttng.org/files/urcu/userspace-rcu-0.15.6.tar.bz2">https://lttng.org/files/urcu/userspace-rcu-0.15.6.tar.bz2</a>

-   Download MD5 sum: 08ad35d135f3797d572bc2aa9129abf5

-   Download size: 672 KB

-   Estimated disk space required: 26 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of liburcu {#installation-of-liburcu}

Install <span class="application">liburcu</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/liburcu-0.15.6 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Libraries:** <span class="segbody">liburcu.so, liburcu-bp.so, liburcu-cds.so, liburcu-common.so, liburcu-mb.so, liburcu-memb.so, liburcu-qsbr.so, and liburcu-signal.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/urcu and /usr/share/doc/liburcu-0.15.6</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libunwind.md "libunwind-1.8.3")

    libunwind-1.8.3

-   [Next](libusb.md "libusb-1.0.30")

    libusb-1.0.30

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
