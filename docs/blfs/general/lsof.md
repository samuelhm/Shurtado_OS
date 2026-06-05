<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](iso-codes.md "ISO Codes-4.20.1")

    ISO Codes-4.20.1

-   [Next](pinentry.md "pinentry-1.3.2")

    pinentry-1.3.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lsof-4.99.6 {#lsof-4.99.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lsof {#introduction-to-lsof}

The <span class="application">lsof</span> package is useful to LiSt Open Files for a given running application or process.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lsof-org/lsof/releases/download/4.99.6/lsof-4.99.6.tar.gz">https://github.com/lsof-org/lsof/releases/download/4.99.6/lsof-4.99.6.tar.gz</a>

-   Download MD5 sum: cae73a994aa9c075252b99bb6a613eaa

-   Download size: 1.1 MB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: 0.6 SBU (with tests)
</div>

### lsof Dependencies

#### Required

<a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>

#### Optional

<a class="xref" href="../basicnet/nmap.md" title="Nmap-7.99">Nmap-7.99</a> (with a symbolic link <span class="command"><strong>nc</strong></span> pointing to <span class="command"><strong>ncat</strong></span> in <code class="filename">/usr/bin</code>; used in tests)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

To run the tests, the following option should be enabled in the kernel configuration:

```console
General setup --->
  [*] POSIX Message Queues                                        [POSIX_MQUEUE]
```
</div>

<div class="installation" lang="en">
## Installation of lsof {#installation-of-lsof}

Install <span class="application">lsof</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

The tests should be run as the <code class="systemitem">root</code> user. They require that the POSIX message queues are enabled in the kernel, and that <a class="xref" href="../basicnet/nmap.md" title="Nmap-7.99">Nmap-7.99</a> be installed with a symbolic link <code class="filename">/usr/bin/nc</code> pointing to <span class="command"><strong>ncat</strong></span>.

```bash
make check
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">lsof</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">liblsof.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- -----------------------------------------------------------
  <a id="lsof-app"></a><span class="command"><span class="term"><strong>lsof</strong></span></span>     lists open files for running processes
  <a id="liblsof"></a><span class="term"><code class="filename">liblsof.so</code></span>   contains an interface for applications to list open files
  ---------------------------------------------- -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](iso-codes.md "ISO Codes-4.20.1")

    ISO Codes-4.20.1

-   [Next](pinentry.md "pinentry-1.3.2")

    pinentry-1.3.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
