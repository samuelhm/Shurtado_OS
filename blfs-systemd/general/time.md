<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](tidy-html5.md "tidy-html5-5.8.0")

    tidy-html5-5.8.0

-   [Next](tree.md "tree-2.3.2")

    tree-2.3.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Time-1.10 {#time-1.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Time {#introduction-to-time}

The <span class="application">time</span> utility is a program that measures many of the CPU resources, such as time and memory, that other programs use. The GNU version can format the output in arbitrary ways by using a printf-style format string to include various resource measurements.

Although the shell has a builtin command providing similar functionalities, this utility is required by the LSB.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/time/time-1.10.tar.gz">https://ftpmirror.gnu.org/time/time-1.10.tar.gz</a>

-   Download MD5 sum: ded256bf7d215594fb3b51d3d9d74e15

-   Download size: 832 KB

-   Estimated disk space required: 6.2 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of Time {#installation-of-time}

Install <span class="application">Time</span> by running the following commands:

```bash
./configure --prefix=/usr &&
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
**Installed Program:** <span class="segbody">time</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- ------------------------------------------------------
  <a id="time-prog"></a><span class="command"><span class="term"><strong>time</strong></span></span>   reports various statistics about an executed command
  --------------------------------------------- ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tidy-html5.md "tidy-html5-5.8.0")

    tidy-html5-5.8.0

-   [Next](tree.md "tree-2.3.2")

    tree-2.3.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
