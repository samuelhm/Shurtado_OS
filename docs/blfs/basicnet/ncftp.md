<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](cifsutils.md "cifs-utils-7.5")

    cifs-utils-7.5

-   [Next](net-tools.md "Net-tools-2.10")

    Net-tools-2.10

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# NcFTP-3.3.0 {#ncftp-3.3.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to NcFTP {#introduction-to-ncftp}

The <span class="application">NcFTP</span> package contains a powerful and flexible interface to the Internet standard File Transfer Protocol. It is intended to replace or supplement the stock <span class="command"><strong>ftp</strong></span> program.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.ncftp.com/public_ftp/ncftp/ncftp-3.3.0-src.tar.gz">https://www.ncftp.com/public_ftp/ncftp/ncftp-3.3.0-src.tar.gz</a>

-   Download MD5 sum: 43056719c50cae2ed6b614e20c86d37e

-   Download size: 628 KB

-   Estimated disk space required: 13 MB

-   Estimated build time: 0.2 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of NcFTP {#installation-of-ncftp}

To install <span class="application">NcFTP</span>, run the following commands:

```bash
CC=/usr/bin/gcc \
./configure --prefix=/usr --sysconfdir=/etc &&
make -C libncftp shared &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make -C libncftp soinstall &&
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="envar">CC=/usr/bin/gcc</code>. This environment variable ensures that <span class="command"><strong>gcc</strong></span> is used if <a class="xref" href="../general/llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> is installed.

<span class="command"><strong>make -C ... && make ...</strong></span>: These commands make and install the dynamic library <code class="filename">libncftp</code> which is then used to link against when compiling the main program.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ncftp, ncftpbatch, ncftpget, ncftpls, ncftpput, and ncftpspooler</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libncftp.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -------------------------------------------------------------------------
  <a id="ncftp-prog"></a><span class="command"><span class="term"><strong>ncftp</strong></span></span>            is a browser program for File Transfer Protocol
  <a id="ncftpbatch"></a><span class="command"><span class="term"><strong>ncftpbatch</strong></span></span>       is an individual batch FTP job processor
  <a id="ncftpget"></a><span class="command"><span class="term"><strong>ncftpget</strong></span></span>           is an internet file transfer program for scripts used to retrieve files
  <a id="ncftpls"></a><span class="command"><span class="term"><strong>ncftpls</strong></span></span>             is an internet file transfer program for scripts used to list files
  <a id="ncftpput"></a><span class="command"><span class="term"><strong>ncftpput</strong></span></span>           is an internet file transfer program for scripts used to transfer files
  <a id="ncftpspooler"></a><span class="command"><span class="term"><strong>ncftpspooler</strong></span></span>   is a global batch FTP job processor daemon
  -------------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cifsutils.md "cifs-utils-7.5")

    cifs-utils-7.5

-   [Next](net-tools.md "Net-tools-2.10")

    Net-tools-2.10

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
