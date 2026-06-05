<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libsigsegv.md "libsigsegv-2.15")

    libsigsegv-2.15

-   [Next](libstatgrab.md "libstatgrab-0.92.1")

    libstatgrab-0.92.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libssh2-1.11.1 {#libssh2-1.11.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libssh2 {#introduction-to-libssh2}

<span class="application">Libssh2</span> package is a client-side C library implementing the SSH2 protocol.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.libssh2.org/download/libssh2-1.11.1.tar.gz">https://www.libssh2.org/download/libssh2-1.11.1.tar.gz</a>

-   Download MD5 sum: 38857d10b5c5deb198d6989dacace2e6

-   Download size: 1.0 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### libssh2 Dependencies

#### Optional

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> (can be used instead of the <span class="command"><strong>configure</strong></span> script), <a class="xref" href="libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a> (can be used instead of OpenSSL), <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a> (for some tests), and <a class="ulink" href="https://www.docker.com">Docker</a> (for some tests)
</div>

<div class="installation" lang="en">
## Installation of libssh2 {#installation-of-libssh2}

Install <span class="application">libssh2</span> by running the following commands:

```bash
./configure --prefix=/usr          \
            --disable-docker-tests \
            --disable-static       &&
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

*`--disable-docker-tests`*: Disable the tests requiring Docker, which is beyond the scope of BLFS. Remove this switch if you've installed Docker and you wish to run the test suite.

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
**Installed Library:** <span class="segbody">libssh2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------
  <a id="libssh2-lib"></a><span class="term"><code class="filename">libssh2.so</code></span>   contains functions to use the SSH2 protocol
  -------------------------------------------------- ---------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libsigsegv.md "libsigsegv-2.15")

    libsigsegv-2.15

-   [Next](libstatgrab.md "libstatgrab-0.92.1")

    libstatgrab-0.92.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
