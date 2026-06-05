<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](smartmontools.md "smartmontools-7.5")

    smartmontools-7.5

-   [Next](xfsprogs.md "xfsprogs-7.0.1")

    xfsprogs-7.0.1

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sshfs-3.7.6 {#sshfs-3.7.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Sshfs {#introduction-to-sshfs}

The <span class="application">Sshfs</span> package contains a filesystem client based on the SSH File Transfer Protocol. This is useful for mounting a remote computer that you have ssh access to as a local filesystem. This allows you to drag and drop files or run shell commands on the remote files as if they were on your local computer.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libfuse/sshfs/releases/download/sshfs-3.7.6/sshfs-3.7.6.tar.xz">https://github.com/libfuse/sshfs/releases/download/sshfs-3.7.6/sshfs-3.7.6.tar.xz</a>

-   Download MD5 sum: bf45c6ade1bef1f7e1bb2c2f344a0b33

-   Download size: 56 KB

-   Estimated disk space required: 1.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Sshfs Dependencies

#### Required

<a class="xref" href="fuse.md" title="Fuse-3.18.2">Fuse-3.18.2</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, and <a class="xref" href="openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>.

#### Optional

<a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> (required to build the man page)
</div>

<div class="installation" lang="en">
## Installation of Sshfs {#installation-of-sshfs}

Install <span class="application">Sshfs</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="using" lang="en">
## Using Sshfs {#using-sshfs}

To mount an ssh server you need to be able to log into the server. For example, to mount your remote home folder to the local \~/examplepath (the directory must exist and you must have permissions to write to it):

```bash
sshfs example.com:/home/userid ~/examplepath
```

When you've finished work and want to unmount it again:

```bash
fusermount3 -u ~/examplepath
```

You can also mount an <span class="application">sshfs</span> filesystem at boot by adding an entry similar to the following in the <code class="filename">/etc/fstab</code> file:

```console
userid@example.com:/path /media/path fuse.sshfs _netdev,IdentityFile=/home/userid/.ssh/id_rsa 0 0
```

See <span class="command"><strong>man 1 sshfs</strong></span> and <span class="command"><strong>man 8 mount.fuse3</strong></span> for all available mount options.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">sshfs</span>
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

  ----------------------------------------------- -------------------------------------------------------------
  <a id="sshfs-prog"></a><span class="command"><span class="term"><strong>sshfs</strong></span></span>   mounts an <span class="command"><strong>ssh</strong></span> server as a local file system
  ----------------------------------------------- -------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](smartmontools.md "smartmontools-7.5")

    smartmontools-7.5

-   [Next](xfsprogs.md "xfsprogs-7.0.1")

    xfsprogs-7.0.1

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
