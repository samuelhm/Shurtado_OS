::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](nss.md "NSS-3.124"){accesskey="p"}

    NSS-3.124

-   [Next](p11-kit.md "p11-kit-0.26.2"){accesskey="n"}

    p11-kit-0.26.2

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#openssh}OpenSSH-10.3p1 {#openssh-10.3p1 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to OpenSSH {#introduction-to-openssh .sect2}

The [OpenSSH]{.application} package contains [**ssh**]{.command} clients and the [**sshd**]{.command} daemon. This is useful for encrypting authentication and subsequent traffic over a network. The [**ssh**]{.command} and [**scp**]{.command} commands are secure implementations of [**telnet**]{.command} and [**rcp**]{.command}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.3p1.tar.gz](https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.3p1.tar.gz){.ulink}

-   Download MD5 sum: 0b5662e0aa255c8d20f18dcca1bda65c

-   Download size: 2.0 MB

-   Estimated disk space required: 84 MB (with tests)

-   Estimated build time: 0.3 SBU (Using parallelism=4; running the tests takes about 11 minutes, irrespective of processor speed)
:::

### OpenSSH Dependencies

#### Optional

[GDB-17.2](../general/gdb.md "GDB-17.2"){.xref} (for tests), [Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref} (PAM configuration files from [Shadow-4.19.4](shadow.md "Shadow-4.19.4"){.xref} are used to create openssh ones), [Xorg Applications](../x/x7app.md "Xorg Applications"){.xref} (or [Xorg build environment](../x/xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref}, see Command Explanations), [MIT Kerberos V5-1.22.2](mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [libedit](https://www.thrysoee.dk/editline/){.ulink}, [LibreSSL Portable](https://www.libressl.org/){.ulink}, [OpenSC](https://github.com/OpenSC/OpenSC/wiki){.ulink}, and [libsectok](http://www.citi.umich.edu/projects/smartcard/sectok.md){.ulink}

#### Optional at runtime (used only to gather entropy)

[Net-tools-2.10](../basicnet/net-tools.md "Net-tools-2.10"){.xref}, and [Sysstat-12.7.9](../general/sysstat.md "Sysstat-12.7.9"){.xref}
:::::

::: {.installation lang="en"}
## Installation of OpenSSH {#installation-of-openssh .sect2}

[OpenSSH]{.application} runs as two processes when connecting to other computers. The first process is a privileged process and controls the issuance of privileges as necessary. The second process communicates with the network. Additional installation steps are necessary to set up the proper environment, which are performed by issuing the following commands as the `root`{.systemitem} user:

``` root
install -v -g sys -m700 -d /var/lib/sshd &&

groupadd -g 50 sshd        &&
useradd  -c 'sshd PrivSep' \
         -d /var/lib/sshd  \
         -g sshd           \
         -s /bin/false     \
         -u 50 sshd
```

Install [OpenSSH]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                            \
            --sysconfdir=/etc/ssh                    \
            --with-privsep-path=/var/lib/sshd        \
            --with-default-path=/usr/bin             \
            --with-superuser-path=/usr/sbin:/usr/bin \
            --with-pid-dir=/run                      &&
make
```

To test the results, issue: [**make -j1 tests**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m755    contrib/ssh-copy-id /usr/bin     &&

install -v -m644    contrib/ssh-copy-id.1 \
                    /usr/share/man/man1              &&
install -v -m755 -d /usr/share/doc/openssh-10.3p1     &&
install -v -m644    INSTALL LICENCE OVERVIEW README* \
                    /usr/share/doc/openssh-10.3p1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--sysconfdir=/etc/ssh`*: This prevents the configuration files from being installed in `/usr/etc`{.filename}.

*`--with-default-path=/usr/bin`* and *`--with-superuser-path=/usr/sbin:/usr/bin`*: These set the `PATH`{.envar} setting to be consistent with the LFS and BLFS [Shadow]{.application} package.

*`--with-pid-dir=/run`*: This prevents [OpenSSH]{.application} from referring to the deprecated `/var/run`{.filename} directory.

`--with-pam`{.option}: This option enables [Linux-PAM]{.application} support in the build. If you use this option, ensure that you create the PAM configuration in the Configuration Information section below.

`--with-xauth=$XORG_PREFIX/bin/xauth`{.option}: This sets the default location for the [**xauth**]{.command} binary for X authentication. The environment variable `XORG_PREFIX`{.envar} should be set following [Xorg build environment](../x/xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref}. This can also be controlled from `sshd_config`{.filename} with the XAuthLocation keyword. You can omit this switch if [**xauth**]{.command} (one of [Xorg Applications](../x/x7app.md "Xorg Applications"){.xref}) is already installed.

`--with-kerberos5=/usr`{.option}: This option is used to include Kerberos 5 support in the build.

`--with-libedit`{.option}: This option enables line editing and history features for [**sftp**]{.command}.
:::

:::::: {.configuration lang="en"}
## Configuring OpenSSH {#configuring-openssh .sect2}

::: {.sect3 lang="en"}
### []{#openssh-config}Config Files {#config-files .sect3}

`~/.ssh/*`{.filename}, `/etc/ssh/ssh_config`{.filename}, and `/etc/ssh/sshd_config`{.filename}

There are no required changes to any of these files. However, you may wish to view the `/etc/ssh/`{.filename} files and make any changes appropriate for the security of your system. One recommended change is that you disable `root`{.systemitem} login via [**ssh**]{.command}. Execute the following command as the `root`{.systemitem} user to disable `root`{.systemitem} login via [**ssh**]{.command}:

``` root
echo "PermitRootLogin no" >> /etc/ssh/sshd_config
```

If you want to be able to log in without typing in your password, first create \~/.ssh/id_rsa and \~/.ssh/id_rsa.pub with [**ssh-keygen**]{.command} and then copy \~/.ssh/id_rsa.pub to \~/.ssh/authorized_keys on the remote computer that you want to log into. You'll need to change REMOTE_USERNAME and REMOTE_HOSTNAME for the username and hostname of the remote computer and you'll also need to enter your password for the ssh-copy-id command to succeed:

``` userinput
ssh-keygen &&
ssh-copy-id -i ~/.ssh/id_ed25519.pub REMOTE_USERNAME@REMOTE_HOSTNAME
```

Once you've got passwordless logins working it's actually more secure than logging in with a password (as the private key is much longer than most people's passwords). If you would like to now disable password logins, as the `root`{.systemitem} user:

``` root
echo "PasswordAuthentication no" >> /etc/ssh/sshd_config &&
echo "KbdInteractiveAuthentication no" >> /etc/ssh/sshd_config
```

If you added [Linux-PAM]{.application} support and you want ssh to use it then you will need to add a configuration file for [sshd]{.application} and enable use of [LinuxPAM]{.application}. Note, ssh only uses PAM to check passwords, if you've disabled password logins these commands are not needed. If you want to use PAM, issue the following commands as the `root`{.systemitem} user:

``` root
sed 's@d/login@d/sshd@g' /etc/pam.d/login > /etc/pam.d/sshd &&
chmod 644 /etc/pam.d/sshd &&
echo "UsePAM yes" >> /etc/ssh/sshd_config
```

Additional configuration information can be found in the man pages for [**sshd**]{.command}, [**ssh**]{.command} and [**ssh-agent**]{.command}.
:::

:::: {.sect3 lang="en"}
### []{#openssh-init} Systemd Unit {#systemd-unit .sect3}

To start the SSH server at system boot, install the `sshd.service`{.filename} unit included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Changing the setting of `ListenAddress`{.option} in `/etc/sshd/sshd_config`{.filename} is unsupported with the BLFS sshd [systemd unit]{.phrase}.
:::

``` root
make install-sshd
```
::::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [scp, sftp, ssh, ssh-add, ssh-agent, ssh-copy-id, ssh-keygen, ssh-keyscan, and sshd]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/ssh, /usr/share/doc/openssh-10.3p1, and /var/lib/sshd]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------
  []{#scp}[[**scp**]{.command}]{.term}                   is a file copy program that acts like [**rcp**]{.command} except that it uses an encrypted protocol
  []{#sftp}[[**sftp**]{.command}]{.term}                 is an FTP-like program that works over the SSH1 and SSH2 protocols
  []{#ssh}[[**ssh**]{.command}]{.term}                   is an [**rlogin**]{.command}/[**rsh**]{.command}-like client program except that it uses an encrypted protocol
  []{#sshd}[[**sshd**]{.command}]{.term}                 is a daemon that listens for [**ssh**]{.command} login requests
  []{#ssh-add}[[**ssh-add**]{.command}]{.term}           is a tool which adds keys to the [**ssh-agent**]{.command}
  []{#ssh-agent}[[**ssh-agent**]{.command}]{.term}       is an authentication agent that can store private keys
  []{#ssh-copy-id}[[**ssh-copy-id**]{.command}]{.term}   is a script that enables logins on remote machines using local keys
  []{#ssh-keygen}[[**ssh-keygen**]{.command}]{.term}     is a key generation tool
  []{#ssh-keyscan}[[**ssh-keyscan**]{.command}]{.term}   is a utility for gathering public host keys from a number of hosts
  ------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](nss.md "NSS-3.124"){accesskey="p"}

    NSS-3.124

-   [Next](p11-kit.md "p11-kit-0.26.2"){accesskey="n"}

    p11-kit-0.26.2

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
