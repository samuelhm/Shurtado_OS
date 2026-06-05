<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](ssh-askpass.md "ssh-askpass-10.3p1")

    ssh-askpass-10.3p1

-   [Next](sudo.md "Sudo-1.9.17p2")

    Sudo-1.9.17p2

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# stunnel-5.78 {#stunnel-5.78}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to stunnel {#introduction-to-stunnel}

The <span class="application">stunnel</span> package contains a program that allows you to encrypt arbitrary TCP connections inside SSL (Secure Sockets Layer) so you can easily communicate with clients over secure channels. <span class="application">stunnel</span> can also be used to tunnel PPP over network sockets without changes to the server package source code.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.stunnel.org/downloads/archive/5.x/stunnel-5.78.tar.gz">https://www.stunnel.org/downloads/archive/5.x/stunnel-5.78.tar.gz</a>

-   Download MD5 sum: ab2e857720b9477420b17eaefb30d89f

-   Download size: 908 KB

-   Estimated disk space required: 9.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### stunnel Dependencies

#### Optional

<a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="ulink" href="https://netcat.sourceforge.net/">netcat</a> (required for tests), <a class="ulink" href="http://ftp.porcupine.org/pub/security/index.md">tcpwrappers</a>, and <a class="ulink" href="https://dist.torproject.org/">TOR</a>
</div>

<div class="installation" lang="en">
## Installation of stunnel {#installation-of-stunnel}

The <span class="command"><strong>stunnel</strong></span> daemon will be run in a <span class="command"><strong>chroot</strong></span> jail by an unprivileged user. Create the new user and group using the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -g 51 stunnel &&
useradd -c "stunnel Daemon" -d /var/lib/stunnel \
        -g stunnel -s /bin/false -u 51 stunnel
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

A signed SSL Certificate and a Private Key is necessary to run the <span class="command"><strong>stunnel</strong></span> daemon. After the package is installed, there are instructions to generate them. However, if you own or have already created a signed SSL Certificate you wish to use, copy it to <code class="filename">/etc/stunnel/stunnel.pem</code> before starting the build (ensure only <code class="systemitem">root</code> has read and write access). The <code class="filename">.pem</code> file must be formatted as shown below:

```console
-----BEGIN PRIVATE KEY-----
<many encrypted lines of private key>
-----END PRIVATE KEY-----
-----BEGIN CERTIFICATE-----
<many encrypted lines of certificate>
-----END CERTIFICATE-----
-----BEGIN DH PARAMETERS-----
<encrypted lines of dh parms>
-----END DH PARAMETERS-----
```
</div>

Install <span class="application">stunnel</span> by running the following commands:

```bash
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var &&
make
```

If you have installed the optional netcat application, the regression tests can be run with <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make docdir=/usr/share/doc/stunnel-5.78 install
```

Install the included systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
install -v -m644 tools/stunnel.service /usr/lib/systemd/system
```

If you do not already have a signed SSL Certificate and Private Key, create the <code class="filename">stunnel.pem</code> file in the <code class="filename">/etc/stunnel</code> directory using the command below. You will be prompted to enter the necessary information. Ensure you reply to the

```console
Common Name (FQDN of your server) [localhost]:
```

prompt with the name or IP address you will be using to access the service(s).

To generate a certificate, as the <code class="systemitem">root</code> user, issue:

```bash
make cert
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>make docdir=... install</strong></span>: This command installs the package and changes the documentation installation directory to standard naming conventions.
</div>

<div class="configuration" lang="en">
## Configuring stunnel {#configuring-stunnel}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/stunnel/stunnel.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

As the <code class="systemitem">root</code> user, create the directory used for the <code class="filename">.pid</code> file created when the <span class="application">stunnel</span> daemon starts:

```bash
install -v -m750 -o stunnel -g stunnel -d /var/lib/stunnel/run &&
chown stunnel:stunnel /var/lib/stunnel
```

Next, create a basic <code class="filename">/etc/stunnel/stunnel.conf</code> configuration file using the following commands as the <code class="systemitem">root</code> user:

```bash
cat > /etc/stunnel/stunnel.conf << "EOF"
; File: /etc/stunnel/stunnel.conf

; Note: The pid and output locations are relative to the chroot location.

pid    = /run/stunnel.pid
chroot = /var/lib/stunnel
client = no
setuid = stunnel
setgid = stunnel
cert   = /etc/stunnel/stunnel.pem

;debug = 7
;output = stunnel.log

;[https]
;accept  = 443
;connect = 80
;; "TIMEOUTclose = 0" is a workaround for a design flaw in Microsoft SSL
;; Microsoft implementations do not use SSL close-notify alert and thus
;; they are vulnerable to truncation attacks
;TIMEOUTclose = 0

EOF
```

Finally, add the service(s) you wish to encrypt to the configuration file. The format is as follows:

```console
[<service>]
accept  = <hostname:portnumber>
connect = <hostname:portnumber>
```

For a full explanation of the commands and syntax used in the configuration file, issue <span class="command"><strong>man stunnel</strong></span>.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>stunnel</strong></span> daemon at boot, enable the previously installed <span class="application">systemd</span> unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable stunnel
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">stunnel and stunnel3</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libstunnel.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/{etc,lib,var/lib}/stunnel and /usr/share/doc/stunnel-5.78</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
  <a id="stunnel-prog"></a><span class="command"><span class="term"><strong>stunnel</strong></span></span>    is a program designed to work as an SSL encryption wrapper between remote clients and local or remote servers
  <a id="stunnel3"></a><span class="command"><span class="term"><strong>stunnel3</strong></span></span>       is a <span class="application">Perl</span> wrapper script to use <span class="command"><strong>stunnel</strong></span> 3.x syntax with <span class="command"><strong>stunnel</strong></span> 4.05 or later
  <a id="libstunnel"></a><span class="term"><code class="filename">libstunnel.so</code></span>   contains the API functions required by <span class="application">stunnel</span>
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ssh-askpass.md "ssh-askpass-10.3p1")

    ssh-askpass-10.3p1

-   [Next](sudo.md "Sudo-1.9.17p2")

    Sudo-1.9.17p2

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
