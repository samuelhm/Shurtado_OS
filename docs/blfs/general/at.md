<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](acpid.md "acpid-2.0.34")

    acpid-2.0.34

-   [Next](autofs.md "autofs-5.1.9")

    autofs-5.1.9

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# at-3.2.5 {#at-3.2.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to at {#introduction-to-at}

The <span class="application">at</span> package provides delayed job execution and batch processing. It is required for Linux Standards Base (LSB) conformance.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/at/at_3.2.5.orig.tar.gz">https://anduin.linuxfromscratch.org/BLFS/at/at_3.2.5.orig.tar.gz</a>

-   Download MD5 sum: ca3657a1c90d7c3d252e0bc17feddc6e

-   Download size: 130 KB

-   Estimated disk space required: 1.9 MB (including tests)

-   Estimated build time: less than 0.1 SBU
</div>

### at Dependencies

#### Required

An <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a>

#### Optional

<a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>
</div>

<div class="installation" lang="en">
## Installation of at {#installation-of-at}

Before building <span class="application">at</span>, as the <code class="systemitem">root</code> user you should create the group and user <code class="systemitem">atd</code> which will run the <span class="command"><strong>atd</strong></span> daemon:

```bash
groupadd -g 17 atd                                                  &&
useradd -d /dev/null -c "atd daemon" -g atd -s /bin/false -u 17 atd
```

Install <span class="application">at</span> with the following commands:

```bash
./configure --with-daemon_username=atd        \
            --with-daemon_groupname=atd       \
            SENDMAIL=/usr/sbin/sendmail       \
            --with-jobdir=/var/spool/atjobs   \
            --with-atspool=/var/spool/atspool \
            --with-systemdsystemunitdir=/lib/systemd/system &&
make -j1
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install docdir=/usr/share/doc/at-3.2.5 \
             atdocdir=/usr/share/doc/at-3.2.5
```
</div>

<div class="configuration" lang="en">
## Configuring at {#configuring-at}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/at.allow</code> and <code class="filename">/etc/at.deny</code> determines who can submit jobs via at or batch.
</div>

<div class="sect3" lang="en">
### Linux PAM Configuration {#linux-pam-configuration}

If <span class="application">At</span> has been built with <span class="application">Linux PAM</span> support, you need to create a <span class="application">PAM</span> configuration file, to get it working correctly with BLFS.

Issue the following commands as the <code class="systemitem">root</code> user to create the configuration file for <span class="application">Linux PAM</span>:

```bash
cat > /etc/pam.d/atd << "EOF"
# Begin /etc/pam.d/atd

auth     required pam_unix.so
account  required pam_unix.so
password required pam_unix.so
session  required pam_unix.so

# End /etc/pam.d/atd
EOF
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>atd</strong></span> daemon at boot, enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable atd
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">at, atd, atq (symlink), atrm (symlink), atrun, and batch</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/at-3.2.5</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------ -------------------------------------------------------------------
  <a id="at-prog"></a><span class="command"><span class="term"><strong>at</strong></span></span>    queues, examines or deletes jobs for later execution
  <a id="atd"></a><span class="command"><span class="term"><strong>atd</strong></span></span>       is the daemon that runs jobs queued for later execution
  <a id="atq"></a><span class="command"><span class="term"><strong>atq</strong></span></span>       lists the user's pending jobs, or all jobs, if superuser
  <a id="atrm"></a><span class="command"><span class="term"><strong>atrm</strong></span></span>     deletes jobs, identified by their job number
  <a id="atrun"></a><span class="command"><span class="term"><strong>atrun</strong></span></span>   runs jobs queued for later execution
  <a id="batch"></a><span class="command"><span class="term"><strong>batch</strong></span></span>   is a script that executes commands when system load levels permit
  ------------------------------------------ -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](acpid.md "acpid-2.0.34")

    acpid-2.0.34

-   [Next](autofs.md "autofs-5.1.9")

    autofs-5.1.9

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
