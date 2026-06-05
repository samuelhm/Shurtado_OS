<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](nss.md "NSS-3.124")

    NSS-3.124

-   [Next](p11-kit.md "p11-kit-0.26.2")

    p11-kit-0.26.2

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# OpenSSH-10.3p1 {#openssh-10.3p1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to OpenSSH {#introduction-to-openssh}

The <span class="application">OpenSSH</span> package contains <span class="command"><strong>ssh</strong></span> clients and the <span class="command"><strong>sshd</strong></span> daemon. This is useful for encrypting authentication and subsequent traffic over a network. The <span class="command"><strong>ssh</strong></span> and <span class="command"><strong>scp</strong></span> commands are secure implementations of <span class="command"><strong>telnet</strong></span> and <span class="command"><strong>rcp</strong></span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.3p1.tar.gz">https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.3p1.tar.gz</a>

-   Download MD5 sum: 0b5662e0aa255c8d20f18dcca1bda65c

-   Download size: 2.0 MB

-   Estimated disk space required: 84 MB (with tests)

-   Estimated build time: 0.3 SBU (Using parallelism=4; running the tests takes about 11 minutes, irrespective of processor speed)
</div>

### OpenSSH Dependencies

#### Optional

<a class="xref" href="../general/gdb.md" title="GDB-17.2">GDB-17.2</a> (for tests), <a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> (PAM configuration files from <a class="xref" href="shadow.md" title="Shadow-4.19.4">Shadow-4.19.4</a> are used to create openssh ones), <a class="xref" href="../x/x7app.md" title="Xorg Applications">Xorg Applications</a> (or <a class="xref" href="../x/xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a>, see Command Explanations), <a class="xref" href="mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="ulink" href="https://www.thrysoee.dk/editline/">libedit</a>, <a class="ulink" href="https://www.libressl.org/">LibreSSL Portable</a>, <a class="ulink" href="https://github.com/OpenSC/OpenSC/wiki">OpenSC</a>, and <a class="ulink" href="http://www.citi.umich.edu/projects/smartcard/sectok.md">libsectok</a>

#### Optional at runtime (used only to gather entropy)

<a class="xref" href="../basicnet/net-tools.md" title="Net-tools-2.10">Net-tools-2.10</a>, and <a class="xref" href="../general/sysstat.md" title="Sysstat-12.7.9">Sysstat-12.7.9</a>
</div>

<div class="installation" lang="en">
## Installation of OpenSSH {#installation-of-openssh}

<span class="application">OpenSSH</span> runs as two processes when connecting to other computers. The first process is a privileged process and controls the issuance of privileges as necessary. The second process communicates with the network. Additional installation steps are necessary to set up the proper environment, which are performed by issuing the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -g sys -m700 -d /var/lib/sshd &&

groupadd -g 50 sshd        &&
useradd  -c 'sshd PrivSep' \
         -d /var/lib/sshd  \
         -g sshd           \
         -s /bin/false     \
         -u 50 sshd
```

Install <span class="application">OpenSSH</span> by running the following commands:

```bash
./configure --prefix=/usr                            \
            --sysconfdir=/etc/ssh                    \
            --with-privsep-path=/var/lib/sshd        \
            --with-default-path=/usr/bin             \
            --with-superuser-path=/usr/sbin:/usr/bin \
            --with-pid-dir=/run                      &&
make
```

To test the results, issue: <span class="command"><strong>make -j1 tests</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m755    contrib/ssh-copy-id /usr/bin     &&

install -v -m644    contrib/ssh-copy-id.1 \
                    /usr/share/man/man1              &&
install -v -m755 -d /usr/share/doc/openssh-10.3p1     &&
install -v -m644    INSTALL LICENCE OVERVIEW README* \
                    /usr/share/doc/openssh-10.3p1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--sysconfdir=/etc/ssh`*: This prevents the configuration files from being installed in <code class="filename">/usr/etc</code>.

*`--with-default-path=/usr/bin`* and *`--with-superuser-path=/usr/sbin:/usr/bin`*: These set the <code class="envar">PATH</code> setting to be consistent with the LFS and BLFS <span class="application">Shadow</span> package.

*`--with-pid-dir=/run`*: This prevents <span class="application">OpenSSH</span> from referring to the deprecated <code class="filename">/var/run</code> directory.

<code class="option">--with-pam</code>: This option enables <span class="application">Linux-PAM</span> support in the build. If you use this option, ensure that you create the PAM configuration in the Configuration Information section below.

<code class="option">--with-xauth=$XORG_PREFIX/bin/xauth</code>: This sets the default location for the <span class="command"><strong>xauth</strong></span> binary for X authentication. The environment variable <code class="envar">XORG_PREFIX</code> should be set following <a class="xref" href="../x/xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a>. This can also be controlled from <code class="filename">sshd_config</code> with the XAuthLocation keyword. You can omit this switch if <span class="command"><strong>xauth</strong></span> (one of <a class="xref" href="../x/x7app.md" title="Xorg Applications">Xorg Applications</a>) is already installed.

<code class="option">--with-kerberos5=/usr</code>: This option is used to include Kerberos 5 support in the build.

<code class="option">--with-libedit</code>: This option enables line editing and history features for <span class="command"><strong>sftp</strong></span>.
</div>

<div class="configuration" lang="en">
## Configuring OpenSSH {#configuring-openssh}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.ssh/*</code>, <code class="filename">/etc/ssh/ssh_config</code>, and <code class="filename">/etc/ssh/sshd_config</code>

There are no required changes to any of these files. However, you may wish to view the <code class="filename">/etc/ssh/</code> files and make any changes appropriate for the security of your system. One recommended change is that you disable <code class="systemitem">root</code> login via <span class="command"><strong>ssh</strong></span>. Execute the following command as the <code class="systemitem">root</code> user to disable <code class="systemitem">root</code> login via <span class="command"><strong>ssh</strong></span>:

```bash
echo "PermitRootLogin no" >> /etc/ssh/sshd_config
```

If you want to be able to log in without typing in your password, first create \~/.ssh/id_rsa and \~/.ssh/id_rsa.pub with <span class="command"><strong>ssh-keygen</strong></span> and then copy \~/.ssh/id_rsa.pub to \~/.ssh/authorized_keys on the remote computer that you want to log into. You'll need to change REMOTE_USERNAME and REMOTE_HOSTNAME for the username and hostname of the remote computer and you'll also need to enter your password for the ssh-copy-id command to succeed:

```bash
ssh-keygen &&
ssh-copy-id -i ~/.ssh/id_ed25519.pub REMOTE_USERNAME@REMOTE_HOSTNAME
```

Once you've got passwordless logins working it's actually more secure than logging in with a password (as the private key is much longer than most people's passwords). If you would like to now disable password logins, as the <code class="systemitem">root</code> user:

```bash
echo "PasswordAuthentication no" >> /etc/ssh/sshd_config &&
echo "KbdInteractiveAuthentication no" >> /etc/ssh/sshd_config
```

If you added <span class="application">Linux-PAM</span> support and you want ssh to use it then you will need to add a configuration file for <span class="application">sshd</span> and enable use of <span class="application">LinuxPAM</span>. Note, ssh only uses PAM to check passwords, if you've disabled password logins these commands are not needed. If you want to use PAM, issue the following commands as the <code class="systemitem">root</code> user:

```bash
sed 's@d/login@d/sshd@g' /etc/pam.d/login > /etc/pam.d/sshd &&
chmod 644 /etc/pam.d/sshd &&
echo "UsePAM yes" >> /etc/ssh/sshd_config
```

Additional configuration information can be found in the man pages for <span class="command"><strong>sshd</strong></span>, <span class="command"><strong>ssh</strong></span> and <span class="command"><strong>ssh-agent</strong></span>.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the SSH server at system boot, install the <code class="filename">sshd.service</code> unit included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Changing the setting of <code class="option">ListenAddress</code> in <code class="filename">/etc/sshd/sshd_config</code> is unsupported with the BLFS sshd <span class="phrase">systemd unit</span>.
</div>

```bash
make install-sshd
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">scp, sftp, ssh, ssh-add, ssh-agent, ssh-copy-id, ssh-keygen, ssh-keyscan, and sshd</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/ssh, /usr/share/doc/openssh-10.3p1, and /var/lib/sshd</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------
  <a id="scp"></a><span class="command"><span class="term"><strong>scp</strong></span></span>                   is a file copy program that acts like <span class="command"><strong>rcp</strong></span> except that it uses an encrypted protocol
  <a id="sftp"></a><span class="command"><span class="term"><strong>sftp</strong></span></span>                 is an FTP-like program that works over the SSH1 and SSH2 protocols
  <a id="ssh"></a><span class="command"><span class="term"><strong>ssh</strong></span></span>                   is an <span class="command"><strong>rlogin</strong></span>/<span class="command"><strong>rsh</strong></span>-like client program except that it uses an encrypted protocol
  <a id="sshd"></a><span class="command"><span class="term"><strong>sshd</strong></span></span>                 is a daemon that listens for <span class="command"><strong>ssh</strong></span> login requests
  <a id="ssh-add"></a><span class="command"><span class="term"><strong>ssh-add</strong></span></span>           is a tool which adds keys to the <span class="command"><strong>ssh-agent</strong></span>
  <a id="ssh-agent"></a><span class="command"><span class="term"><strong>ssh-agent</strong></span></span>       is an authentication agent that can store private keys
  <a id="ssh-copy-id"></a><span class="command"><span class="term"><strong>ssh-copy-id</strong></span></span>   is a script that enables logins on remote machines using local keys
  <a id="ssh-keygen"></a><span class="command"><span class="term"><strong>ssh-keygen</strong></span></span>     is a key generation tool
  <a id="ssh-keyscan"></a><span class="command"><span class="term"><strong>ssh-keyscan</strong></span></span>   is a utility for gathering public host keys from a number of hosts
  ------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nss.md "NSS-3.124")

    NSS-3.124

-   [Next](p11-kit.md "p11-kit-0.26.2")

    p11-kit-0.26.2

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
