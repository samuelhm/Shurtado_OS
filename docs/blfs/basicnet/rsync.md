<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](rpcbind.md "rpcbind-1.2.9")

    rpcbind-1.2.9

-   [Next](samba.md "Samba-4.24.0")

    Samba-4.24.0

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# rsync-3.4.3 {#rsync-3.4.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to rsync {#introduction-to-rsync}

The <span class="application">rsync</span> package contains the <span class="command"><strong>rsync</strong></span> utility. This is useful for synchronizing large file archives over a network.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.samba.org/ftp/rsync/src/rsync-3.4.3.tar.gz">https://www.samba.org/ftp/rsync/src/rsync-3.4.3.tar.gz</a>

-   Download MD5 sum: 1c53fa0fd42ba4700ba6fa96a0b5bbb6

-   Download size: 1.2 MB

-   Estimated disk space required: 13 MB (with tests; add 52 MB for HTML API documentation)

-   Estimated build time: 0.6 SBU (with tests)
</div>

### rsync Dependencies

#### Recommended

<a class="xref" href="../general/popt.md" title="Popt-1.19">popt-1.19</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="ulink" href="https://cyan4973.github.io/xxHash/">xxhash</a>
</div>

<div class="installation" lang="en">
## Installation of rsync {#installation-of-rsync}

For security reasons, running the <span class="application">rsync</span> server as an unprivileged user and group is encouraged. If you intend to run <span class="command"><strong>rsync</strong></span> as a daemon, create the <code class="systemitem">rsyncd</code> user and group with the following commands issued by the <code class="systemitem">root</code> user:

```bash
groupadd -g 48 rsyncd &&
useradd -c "rsyncd Daemon" -m -d /home/rsync -g rsyncd \
    -s /bin/false -u 48 rsyncd
```

Install <span class="application">rsync</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-xxhash \
            --without-included-zlib &&
make
```

If you have <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed and wish to build HTML API documentation, issue:

```bash
doxygen
```

To run the tests, issue:

```bash
make check
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the documentation, install it using the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d          /usr/share/doc/rsync-3.4.3/api &&
install -v -m644 dox/html/*  /usr/share/doc/rsync-3.4.3/api
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-xxhash`*: This switch disables advanced xxhash checksum support. Remove this switch if you have installed <a class="ulink" href="https://cyan4973.github.io/xxHash/">xxhash</a>.

*`--without-included-zlib`*: This switch enables compilation with the system-installed zlib library.
</div>

<div class="configuration" lang="en">
## Configuring rsync {#configuring-rsync}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/rsyncd.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

For client access to remote files, you may need to install the <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a> package to connect to the remote server.

This is a simple download-only configuration to set up running <span class="command"><strong>rsync</strong></span> as a server. See the <a class="ulink" href="https://man.archlinux.org/man/rsyncd.conf.5">rsyncd.conf(5)</a> man-page for additional options (i.e., user authentication).

```bash
cat > /etc/rsyncd.conf << "EOF"
# This is a basic rsync configuration file
# It exports a single module without user authentication.

motd file = /home/rsync/welcome.msg
use chroot = yes

[localhost]
    path = /home/rsync
    comment = Default rsync module
    read only = yes
    list = yes
    uid = rsyncd
    gid = rsyncd

EOF
```

You can find additional configuration information and general documentation about <span class="command"><strong>rsync</strong></span> at <a class="ulink" href="https://rsync.samba.org/documentation.md">https://rsync.samba.org/documentation.html</a>.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

Note that you only need to start the <span class="application">rsync</span> server if you want to provide an <span class="application">rsync</span> archive on your local machine. You don't need this <span class="phrase">unit</span> to run the <span class="application">rsync</span> client.

Install the <span class="phrase"><code class="filename">rsyncd.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package.

```bash
make install-rsyncd
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package comes with two types of units: A service file and a socket file. The service file will start rsync daemon once at boot and it will keep running until the system shuts down. The socket file will make systemd listen on rsync port (Default 873, needs to be edited for anything else) and will start rsync daemon when something tries to connect to that port and stop the daemon when the connection is terminated. This is called socket activation and is analogous to using <span class="application">{,x}inetd</span> on a SysVinit based system.

By default, the first method is used - rsync daemon is started at boot and stopped at shutdown. If the socket method is desired, you need to run as the <code class="systemitem">root</code> user:

```bash
systemctl stop rsyncd &&
systemctl disable rsyncd &&
systemctl enable rsyncd.socket &&
systemctl start rsyncd.socket
```

Note that socket method is only useful for remote backups. For local backups you'll need the service method.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">rsync and rsync-ssl</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">Optionally, /usr/share/doc/rsync-3.4.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="rsync-prog"></a><span class="command"><span class="term"><strong>rsync</strong></span></span>      is a replacement for <span class="command"><strong>rcp</strong></span> (and <span class="command"><strong>scp</strong></span>) that has many more features. It uses the <span class="quote">“<span class="quote">rsync algorithm</span>”</span> which provides a very fast method of syncing remote files. It does this by sending just the differences in the files across the link, without requiring that both sets of files are present at one end of the link beforehand
  <a id="rsync-ssl"></a><span class="command"><span class="term"><strong>rsync-ssl</strong></span></span>   is a helper script used when connecting to an rsync daemon that has SSL support built in
  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](rpcbind.md "rpcbind-1.2.9")

    rpcbind-1.2.9

-   [Next](samba.md "Samba-4.24.0")

    Samba-4.24.0

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
