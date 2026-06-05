::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](stunnel.md "stunnel-5.78"){accesskey="p"}

    stunnel-5.78

-   [Next](tripwire.md "Tripwire-2.4.3.7"){accesskey="n"}

    Tripwire-2.4.3.7

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sudo}Sudo-1.9.17p2 {#sudo-1.9.17p2 .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Sudo {#introduction-to-sudo .sect2}

The [Sudo]{.application} package allows a system administrator to give certain users (or groups of users) the ability to run some (or all) commands as `root`{.systemitem} or another user while logging the commands and arguments.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.sudo.ws/dist/sudo-1.9.17p2.tar.gz](https://www.sudo.ws/dist/sudo-1.9.17p2.tar.gz){.ulink}

-   Download MD5 sum: dcbf46f739ae06b076e1a11cbb271a10

-   Download size: 5.2 MB

-   Estimated disk space required: 54 MB (add 10 MB for tests)

-   Estimated build time: 0.2 SBU (with parallelism=4; add 0.1 SBU for tests)
:::

### Sudo Dependencies

#### Optional

[Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref}, [MIT Kerberos V5-1.22.2](mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} (that provides a [**sendmail**]{.command} command), [AFS](https://www.openafs.org/){.ulink}, [libaudit](https://github.com/linux-audit/audit-userspace){.ulink}, [Opie](https://downloads.sourceforge.net/opie/){.ulink}, and [Sssd](https://sssd.io/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Sudo {#installation-of-sudo .sect2}

First, fix building sudo with openssl-4:

``` userinput
sed -e 's/\([->.a-zA-Z_]*\)->length/ASN1_STRING_length(\1)/' \
    -i lib/iolog/hostcheck.c
```

Install [Sudo]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr         \
            --libexecdir=/usr/lib \
            --with-secure-path    \
            --with-env-editor     \
            --docdir=/usr/share/doc/sudo-1.9.17p2 \
            --with-passprompt="[sudo] password for %p: " &&
make
```

To test the results, issue: [**env LC_ALL=C make check \|& tee make-check.log**]{.command}. Check the results with [**grep failed make-check.log**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--libexecdir=/usr/lib`*: This switch controls where private programs are installed. Everything in that directory is a library, so they belong under `/usr/lib`{.filename} instead of `/usr/libexec`{.filename}.

*`--with-secure-path`*: This switch transparently adds `/sbin`{.filename} and `/usr/sbin`{.filename} directories to the `PATH`{.envar} environment variable.

*`--with-env-editor`*: This switch enables use of the environment variable EDITOR for [**visudo**]{.command}.

*`--with-passprompt`*: This switch sets the password prompt. The *`%p`* will be expanded to the name of the user whose password is being requested.

`--without-pam`{.option}: This switch avoids building [Linux-PAM]{.application} support when [Linux-PAM]{.application} is installed on the system.

`--with-all-insults`{.option}: This switch includes all the sudo insult sets. Insults are printed if the user types a bad password, and if enabled in `/etc/sudoers`{.filename}. Use `--with-insults`{.option} to have them enabled by default. Various sets of insults can be selected with some other switches.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There are many options to [sudo]{.application}'s [**configure**]{.command} command. Check the [**configure --help**]{.command} output for a complete list.
:::
::::

::::::: {.configuration lang="en"}
## Configuring Sudo {#configuring-sudo .sect2}

::: {.sect3 lang="en"}
### []{#sudo-config}Config File {#config-file .sect3}

`/etc/sudoers`{.filename}
:::

::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The `sudoers`{.filename} file can be quite complicated. It is composed of two types of entries: aliases (basically variables) and user specifications (which specify who may run what). The installation installs a default configuration that has no privileges installed for any user.

A couple of common configuration changes are to set the path for the super user and to allow members of the wheel group to execute all commands after providing their own credentials. Use the following commands to create the `/etc/sudoers.d/00-sudo`{.filename} configuration file as the `root`{.systemitem} user:

``` root
cat > /etc/sudoers.d/00-sudo << "EOF"
Defaults secure_path="/usr/sbin:/usr/bin"
%wheel ALL=(ALL) ALL
EOF
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In very simple installations where there is only one user, it may be easier to just edit the `/etc/sudoers`{.filename} file directly. In that case, the `secure_path`{.varname} entry may not be needed and using [**sudo -E ...**]{.command} can import the non-privileged user's full environment into the privileged session.

The files in the `/etc/sudoers.d`{.filename} directory are parsed in sorted lexical order. Be careful that entries in an added file do not overwrite previous entries.
:::

For details, see [**man sudoers**]{.command}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [Sudo]{.application} developers highly recommend using the [**visudo**]{.command} program to edit the `sudoers`{.filename} file. This will provide basic sanity checking like syntax parsing and file permission to avoid some possible mistakes that could lead to a vulnerable configuration.
:::

If [PAM]{.application} is installed on the system, [Sudo]{.application} is built with [PAM]{.application} support. In that case, issue the following command as the `root`{.systemitem} user to create the [PAM]{.application} configuration file:

``` root
cat > /etc/pam.d/sudo << "EOF"
# Begin /etc/pam.d/sudo

# include the default auth settings
auth      include     system-auth

# include the default account settings
account   include     system-account

# Set default environment variables for the service user
session   required    pam_env.so

# include system session defaults
session   include     system-session

# End /etc/pam.d/sudo
EOF
chmod 644 /etc/pam.d/sudo
```
:::::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cvtsudoers, sudo, sudo_logsrvd, sudo_sendlog, sudoedit (symlink), sudoreplay, and visudo]{.segbody}
:::

::: seg
**Installed Libraries:** [audit_json.so, group_file.so, libsudo_util.so, sudoers.so, sudo_intercept.so, sudo_noexec.so, and system_group.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/sudoers.d, /usr/lib/sudo, /usr/share/doc/sudo-1.9.17p2, and /var/lib/sudo]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
  []{#cvtsudoers}[[**cvtsudoers**]{.command}]{.term}       converts between sudoers file formats
  []{#sudo_prog}[[**sudo**]{.command}]{.term}              executes a command as another user as permitted by the `/etc/sudoers`{.filename} configuration file
  []{#sudo_logsrvd}[[**sudo_logsrvd**]{.command}]{.term}   is a sudo event and I/O log server
  []{#sudo_sendlog}[[**sudo_sendlog**]{.command}]{.term}   sends sudo I/O logs to the log server
  []{#sudoedit}[[**sudoedit**]{.command}]{.term}           is a symlink to [**sudo**]{.command} that implies the `-e`{.option} option to invoke an editor as another user
  []{#sudoreplay}[[**sudoreplay**]{.command}]{.term}       is used to play back or list the output logs created by [**sudo**]{.command}
  []{#visudo}[[**visudo**]{.command}]{.term}               allows for safer editing of the `sudoers`{.filename} file
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](stunnel.md "stunnel-5.78"){accesskey="p"}

    stunnel-5.78

-   [Next](tripwire.md "Tripwire-2.4.3.7"){accesskey="n"}

    Tripwire-2.4.3.7

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
