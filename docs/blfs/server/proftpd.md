<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 20. Major Servers

-   [Prev](kea.md "Kea 3.0.2 DHCP Server")

    Kea 3.0.2 DHCP Server

-   [Next](mail.md "Mail Server Software")

    Mail Server Software

-   [Up](majorservers.md "Chapter 20. Major Servers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ProFTPD-1.3.9a {#proftpd-1.3.9a}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ProFTPD {#introduction-to-proftpd}

The <span class="application">ProFTPD</span> package contains a secure and highly configurable FTP daemon. This is useful for serving large file archives over a network.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/proftpd/proftpd/archive/v1.3.9a/proftpd-1.3.9a.tar.gz">https://github.com/proftpd/proftpd/archive/v1.3.9a/proftpd-1.3.9a.tar.gz</a>

-   Download MD5 sum: 9333020093faae6f02532c6e27078ebb

-   Download size: 19 MB

-   Estimated disk space required: 74 MB

-   Estimated build time: 0.3 SBU
</div>

### ProFTPD Dependencies

#### Optional

<a class="xref" href="../postlfs/libcap.md" title="libcap-2.78 with PAM">libcap-2.78 with PAM</a>, <a class="xref" href="../general/libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>, <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, and <a class="ulink" href="https://metacpan.org/pod/Net::SSH2">Net::SSH2</a>
</div>

<div class="installation" lang="en">
## Installation of ProFTPD {#installation-of-proftpd}

For security reasons, you should install <span class="application">ProFTPD</span> using an unprivileged user and group. As the <code class="systemitem">root</code> user:

```bash
groupadd -g 46 proftpd                             &&
useradd -c proftpd -d /srv/ftp -g proftpd \
        -s /usr/bin/proftpdshell -u 46 proftpd     &&

install -v -d -m775 -o proftpd -g proftpd /srv/ftp &&
ln -v -s /usr/bin/false /usr/bin/proftpdshell      &&
echo /usr/bin/proftpdshell >> /etc/shells
```

Install <span class="application">ProFTPD</span> as an unprivileged user by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/run &&
make
```

This packages does not come with a usable test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                                   &&
install -d -m755 /usr/share/doc/proftpd-1.3.9a &&
cp -Rv doc/*     /usr/share/doc/proftpd-1.3.9a
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>install -v -d -m775 -o proftpd -g proftpd /srv/ftp</strong></span>: Create the home directory for <span class="application">ProFTPD</span>.

<span class="command"><strong>ln -v -s /usr/bin/false /usr/bin/proftpdshell</strong></span>: Set the default shell as a link to an invalid shell.

<span class="command"><strong>echo /usr/bin/proftpdshell \>\> /etc/shells</strong></span>: Fake a valid shell for compatibility purposes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The above two commands can be omitted if the following directive is placed in the configuration file:

```console
RequireValidShell off
```

By default, proftpd will require that users logging in have valid shells. The RequireValidShell directive turns off this requirement. This is only recommended if you are setting up your FTP server exclusively for anonymous downloads.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Support for most of the dependency packages requires using options passed to the <span class="command"><strong>configure</strong></span> script. View the output from <span class="command"><strong>./configure --help</strong></span> for complete information about enabling dependency packages.
</div>
</div>

<div class="configuration" lang="en">
## Configuring ProFTPD {#configuring-proftpd}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/proftpd.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

This is a simple, download-only sample configuration. See the <span class="application">ProFTPD</span> documentation in <code class="filename">/usr/share/doc/proftpd</code> and consult the website at <a class="ulink" href="http://www.proftpd.org/">http://www.proftpd.org/</a> for example configurations.

```bash
cat > /etc/proftpd.conf << "EOF"
# This is a basic ProFTPD configuration file
# It establishes a single server and a single anonymous login.

ServerName                      "ProFTPD Default Installation"
ServerType                      standalone
DefaultServer                   on

# Port 21 is the standard FTP port.
Port                            21
# Umask 022 is a good standard umask to prevent new dirs and files
# from being group and world writable.
Umask                           022

# To prevent DoS attacks, set the maximum number of child processes
# to 30.  If you need to allow more than 30 concurrent connections
# at once, simply increase this value.  Note that this ONLY works
# in standalone mode, in inetd mode you should use an inetd server
# that allows you to limit maximum number of processes per service

MaxInstances                    30

# Set the user and group that the server normally runs at.
User                            proftpd
Group                           proftpd

# To cause every FTP user to be "jailed" (chrooted) into their home
# directory, uncomment this line.
#DefaultRoot ~


# Normally, files should be overwritable.
<Directory /*>
  AllowOverwrite                on
</Directory>

# A basic anonymous configuration, no upload directories.
<Anonymous ~proftpd>
  User                          proftpd
  Group                         proftpd
  # Clients should be able to login with "anonymous" as well as "proftpd"
  UserAlias                     anonymous proftpd

  # Limit the maximum number of anonymous logins
  MaxClients                    10

  # 'welcome.msg' should be displayed at login, and '.message' displayed
  # in each newly chdired directory.
  DisplayLogin                  welcome.msg
  DisplayChdir                  .message

  # Limit WRITE everywhere in the anonymous chroot
  <Limit WRITE>
    DenyAll
  </Limit>
</Anonymous>
EOF
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

Install the <span class="phrase"><code class="filename">proftpd.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-proftpd
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ftpasswd, ftpcount, ftpdctl, ftpmail, ftpquota, ftpscrub, ftpshut, ftptop, ftpwho, in.proftpd (symlink to proftpd), proftpd, and prxs</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/{include,lib}/proftpd, /usr/share/doc/proftpd-1.3.9a, and /srv/ftp</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
  <a id="proftpd-prog"></a><span class="command"><span class="term"><strong>proftpd</strong></span></span>   is the FTP daemon
  <a id="ftpcount"></a><span class="command"><span class="term"><strong>ftpcount</strong></span></span>      shows the current number of connections
  <a id="ftpdctl"></a><span class="command"><span class="term"><strong>ftpdctl</strong></span></span>        is used to control the proftpd daemon while it is running
  <a id="ftpasswd"></a><span class="command"><span class="term"><strong>ftpasswd</strong></span></span>      is a Perl script designed to create and manage AuthUserFiles and AuthGroupFiles of the correct format for proftpd
  <a id="ftpmail"></a><span class="command"><span class="term"><strong>ftpmail</strong></span></span>        is a Perl script for sending email based on the proftpd TransferLog
  <a id="ftpquota"></a><span class="command"><span class="term"><strong>ftpquota</strong></span></span>      is a Perl script designed to create and manage limits and tally files for the mod_quotatab + mod_quotatab_file module combination for proftpd
  <a id="ftpscrub"></a><span class="command"><span class="term"><strong>ftpscrub</strong></span></span>      provides a way to scrub the scoreboard file on demand
  <a id="ftpshut"></a><span class="command"><span class="term"><strong>ftpshut</strong></span></span>        shuts down all <span class="application">proftpd</span> servers at a given time
  <a id="ftptop"></a><span class="command"><span class="term"><strong>ftptop</strong></span></span>          displays running status on connections
  <a id="ftpwho"></a><span class="command"><span class="term"><strong>ftpwho</strong></span></span>          shows current process information for each session
  <a id="prxs"></a><span class="command"><span class="term"><strong>prxs</strong></span></span>              is a Perl script designed to compile and install third-party modules, from source code, as DSO modules for the installed proftpd
  --------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kea.md "Kea 3.0.2 DHCP Server")

    Kea 3.0.2 DHCP Server

-   [Next](mail.md "Mail Server Software")

    Mail Server Software

-   [Up](majorservers.md "Chapter 20. Major Servers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
