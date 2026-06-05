<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](nodejs.md "Node.js-24.16.0")

    Node.js-24.16.0

-   [Next](nspr.md "NSPR-4.39")

    NSPR-4.39

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# npth-1.8 {#npth-1.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to NPth {#introduction-to-npth}

The <span class="application">NPth</span> package contains a very portable POSIX/ANSI-C based library for Unix platforms which provides non-preemptive priority-based scheduling for multiple threads of execution (multithreading) inside event-driven applications. All threads run in the same address space of the server application, but each thread has its own individual program-counter, run-time stack, signal mask and errno variable.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/npth/npth-1.8.tar.bz2">https://www.gnupg.org/ftp/gcrypt/npth/npth-1.8.tar.bz2</a>

-   Download MD5 sum: cb4fc0402be5ba67544e499cb2c1a74d

-   Download size: 312 KB

-   Estimated disk space required: 2.9 MB (with checks)

-   Estimated build time: less than 0.1 SBU (with checks)
</div>
</div>

<div class="installation" lang="en">
## Installation of NPth {#installation-of-npth}

Install <span class="application">NPth</span> by running the following commands:

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
**Installed Program:** <span class="segbody">npth-config</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libnpth.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="npth-config"></a><span class="command"><span class="term"><strong>npth-config</strong></span></span>   is a utility used to configure and build applications based on the npth library. It can be used to query the C compiler and linker flags which are required to correctly compile and link the application against the npth library
  <a id="libnpth"></a><span class="term"><code class="filename">libnpth.so</code></span>           contains the API functions used by the New Portable Threads Library
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nodejs.md "Node.js-24.16.0")

    Node.js-24.16.0

-   [Next](nspr.md "NSPR-4.39")

    NSPR-4.39

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
