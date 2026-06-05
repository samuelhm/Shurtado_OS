<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](ntp.md "ntp-4.2.8p18")

    ntp-4.2.8p18

-   [Next](rsync.md "rsync-3.4.3")

    rsync-3.4.3

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# rpcbind-1.2.9 {#rpcbind-1.2.9}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to rpcbind {#introduction-to-rpcbind}

The <span class="application">rpcbind</span> program is a replacement for <span class="application">portmap</span>. It is required for import or export of Network File System (NFS) shared directories.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/rpcbind/rpcbind-1.2.9.tar.bz2">https://downloads.sourceforge.net/rpcbind/rpcbind-1.2.9.tar.bz2</a>

-   Download MD5 sum: f4c2d1f279aadee20871c9d7c0fc9fc5

-   Download size: 128 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU
</div>

### rpcbind Dependencies

#### Required

<a class="xref" href="libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>
</div>

<div class="installation" lang="en">
## Installation of rpcbind {#installation-of-rpcbind}

There should be a dedicated user and group to take control of the <span class="command"><strong>rpcbind</strong></span> daemon after it is started. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -g 28 rpc &&
useradd -c "RPC Bind Daemon Owner" -d /dev/null -g rpc \
        -s /bin/false -u 28 rpc
```

In order to get <span class="application">rpcbind</span> to work properly, first fix the package to use correct service name:

```bash
sed -i "/servname/s:rpcbind:sunrpc:" src/rpcbind.c
```

Install <span class="application">rpcbind</span> by running the following commands:

```bash
./configure --prefix=/usr       \
            --bindir=/usr/sbin  \
            --enable-warmstarts \
            --with-rpcuser=rpc  &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Still as the <code class="systemitem">root</code> user, silence a warning that is emitted by the systemd unit:

```bash
echo 'RPCBIND_OPTIONS=""' > /etc/rpcbind.conf
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-rpcuser=rpc`*: This switch is used so the <span class="command"><strong>rpcbind</strong></span> daemon will run as an unprivileged user instead of the <code class="systemitem">root</code> user.
</div>

<div class="configuration" lang="en">
## Configuring rpcbind {#configuring-rpcbind}

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

Enable the systemd unit installed with the package:

```bash
systemctl enable rpcbind
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">rpcbind and rpcinfo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="rpcbind-prog"></a><span class="command"><span class="term"><strong>rpcbind</strong></span></span>   is a server that converts RPC program numbers into universal addresses. It must be running on the host to be able to make RPC calls on a server on that machine
  <a id="rpcinfo"></a><span class="command"><span class="term"><strong>rpcinfo</strong></span></span>        makes an RPC call to an RPC server and reports data according to the requested options
  --------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ntp.md "ntp-4.2.8p18")

    ntp-4.2.8p18

-   [Next](rsync.md "rsync-3.4.3")

    rsync-3.4.3

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
