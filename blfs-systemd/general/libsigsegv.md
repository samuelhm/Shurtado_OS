<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libsigc3.md "libsigc++-3.6.0")

    libsigc++-3.6.0

-   [Next](libssh2.md "libssh2-1.11.1")

    libssh2-1.11.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libsigsegv-2.15 {#libsigsegv-2.15}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libsigsegv {#introduction-to-libsigsegv}

libsigsegv is a library for handling page faults in user mode. A page fault occurs when a program tries to access to a region of memory that is currently not available. Catching and handling a page fault is a useful technique for implementing pageable virtual memory, memory-mapped access to persistent databases, generational garbage collectors, stack overflow handlers, and distributed shared memory.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/libsigsegv/libsigsegv-2.15.tar.gz">https://ftpmirror.gnu.org/libsigsegv/libsigsegv-2.15.tar.gz</a>

-   Download MD5 sum: c2885785b3e5d1c94b1adb22b3002ccc

-   Download size: 484 KB

-   Estimated disk space required: 3.7 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of libsigsegv {#installation-of-libsigsegv}

Install <span class="application">libsigsegv</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-shared`*: This switch ensures that shared libraries are compiled.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsigsegv.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------
  <a id="libsigsegv-lib"></a><span class="term"><code class="filename">libsigsegv.so</code></span>   is a library for handling page faults in user mode
  -------------------------------------------------------- ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libsigc3.md "libsigc++-3.6.0")

    libsigc++-3.6.0

-   [Next](libssh2.md "libssh2-1.11.1")

    libssh2-1.11.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
