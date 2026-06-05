::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](ssh-askpass.md "ssh-askpass-10.3p1"){accesskey="p"}

    ssh-askpass-10.3p1

-   [Next](sudo.md "Sudo-1.9.17p2"){accesskey="n"}

    Sudo-1.9.17p2

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#stunnel}stunnel-5.78 {#stunnel-5.78 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to stunnel {#introduction-to-stunnel .sect2}

The [stunnel]{.application} package contains a program that allows you to encrypt arbitrary TCP connections inside SSL (Secure Sockets Layer) so you can easily communicate with clients over secure channels. [stunnel]{.application} can also be used to tunnel PPP over network sockets without changes to the server package source code.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.stunnel.org/downloads/archive/5.x/stunnel-5.78.tar.gz](https://www.stunnel.org/downloads/archive/5.x/stunnel-5.78.tar.gz){.ulink}

-   Download MD5 sum: ab2e857720b9477420b17eaefb30d89f

-   Download size: 908 KB

-   Estimated disk space required: 9.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### stunnel Dependencies

#### Optional

[libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, [netcat](https://netcat.sourceforge.net/){.ulink} (required for tests), [tcpwrappers](http://ftp.porcupine.org/pub/security/index.md){.ulink}, and [TOR](https://dist.torproject.org/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of stunnel {#installation-of-stunnel .sect2}

The [**stunnel**]{.command} daemon will be run in a [**chroot**]{.command} jail by an unprivileged user. Create the new user and group using the following commands as the `root`{.systemitem} user:

``` root
groupadd -g 51 stunnel &&
useradd -c "stunnel Daemon" -d /var/lib/stunnel \
        -g stunnel -s /bin/false -u 51 stunnel
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

A signed SSL Certificate and a Private Key is necessary to run the [**stunnel**]{.command} daemon. After the package is installed, there are instructions to generate them. However, if you own or have already created a signed SSL Certificate you wish to use, copy it to `/etc/stunnel/stunnel.pem`{.filename} before starting the build (ensure only `root`{.systemitem} has read and write access). The `.pem`{.filename} file must be formatted as shown below:

``` screen
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
:::

Install [stunnel]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var &&
make
```

If you have installed the optional netcat application, the regression tests can be run with [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make docdir=/usr/share/doc/stunnel-5.78 install
```

Install the included systemd unit by running the following command as the `root`{.systemitem} user:

``` root
install -v -m644 tools/stunnel.service /usr/lib/systemd/system
```

If you do not already have a signed SSL Certificate and Private Key, create the `stunnel.pem`{.filename} file in the `/etc/stunnel`{.filename} directory using the command below. You will be prompted to enter the necessary information. Ensure you reply to the

``` screen
Common Name (FQDN of your server) [localhost]:
```

prompt with the name or IP address you will be using to access the service(s).

To generate a certificate, as the `root`{.systemitem} user, issue:

``` root
make cert
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**make docdir=... install**]{.command}: This command installs the package and changes the documentation installation directory to standard naming conventions.
:::

:::::: {.configuration lang="en"}
## Configuring stunnel {#configuring-stunnel .sect2}

::: {.sect3 lang="en"}
### []{#stunnel-config}Config Files {#config-files .sect3}

`/etc/stunnel/stunnel.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

As the `root`{.systemitem} user, create the directory used for the `.pid`{.filename} file created when the [stunnel]{.application} daemon starts:

``` root
install -v -m750 -o stunnel -g stunnel -d /var/lib/stunnel/run &&
chown stunnel:stunnel /var/lib/stunnel
```

Next, create a basic `/etc/stunnel/stunnel.conf`{.filename} configuration file using the following commands as the `root`{.systemitem} user:

``` root
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

``` screen
[<service>]
accept  = <hostname:portnumber>
connect = <hostname:portnumber>
```

For a full explanation of the commands and syntax used in the configuration file, issue [**man stunnel**]{.command}.
:::

::: {.sect3 lang="en"}
### []{#stunnel-init} Systemd Unit {#systemd-unit .sect3}

To start the [**stunnel**]{.command} daemon at boot, enable the previously installed [systemd]{.application} unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable stunnel
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [stunnel and stunnel3]{.segbody}
:::

::: seg
**Installed Library:** [libstunnel.so]{.segbody}
:::

::: seg
**Installed Directories:** [/{etc,lib,var/lib}/stunnel and /usr/share/doc/stunnel-5.78]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
  []{#stunnel-prog}[[**stunnel**]{.command}]{.term}    is a program designed to work as an SSL encryption wrapper between remote clients and local or remote servers
  []{#stunnel3}[[**stunnel3**]{.command}]{.term}       is a [Perl]{.application} wrapper script to use [**stunnel**]{.command} 3.x syntax with [**stunnel**]{.command} 4.05 or later
  []{#libstunnel}[`libstunnel.so`{.filename}]{.term}   contains the API functions required by [stunnel]{.application}
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](ssh-askpass.md "ssh-askpass-10.3p1"){accesskey="p"}

    ssh-askpass-10.3p1

-   [Next](sudo.md "Sudo-1.9.17p2"){accesskey="n"}

    Sudo-1.9.17p2

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
