::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](polkit-gnome.md "polkit-gnome-0.105"){accesskey="p"}

    polkit-gnome-0.105

-   [Next](ssh-askpass.md "ssh-askpass-10.3p1"){accesskey="n"}

    ssh-askpass-10.3p1

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#shadow}Shadow-4.19.4 {#shadow-4.19.4 .sect1}

::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Shadow {#introduction-to-shadow .sect2}

[Shadow]{.application} was indeed installed in LFS and there is no reason to reinstall it unless you installed [Linux-PAM]{.application} after your LFS system was completed. With [Linux-PAM]{.application} installed, reinstalling [Shadow]{.application} will allow programs such as [**login**]{.command} and [**su**]{.command} to utilize PAM.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/shadow-maint/shadow/releases/download/4.19.4/shadow-4.19.4.tar.xz](https://github.com/shadow-maint/shadow/releases/download/4.19.4/shadow-4.19.4.tar.xz){.ulink}

-   Download MD5 sum: ed0f3ff4940822ba75a3b0687a9ce93b

-   Download size: 2.2 MB

-   Estimated disk space required: 104 MB

-   Estimated build time: 0.2 SBU
:::

### Shadow Dependencies

#### Required

[Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref}

#### Optional

[libbsd](https://libbsd.freedesktop.org/wiki/){.ulink} and [tcb](https://www.openwall.com/tcb/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Shadow {#installation-of-shadow .sect2}

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

The installation commands shown below are for installations where [Linux-PAM]{.application} has been installed and [Shadow]{.application} is being reinstalled to support the [Linux-PAM]{.application} installation.
:::

Reinstall [Shadow]{.application} by running the following commands:

``` userinput
find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \; &&
find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \; &&

sed -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD YESCRYPT@' \
    -e 's@/var/spool/mail@/var/mail@'                   \
    -e '/PATH=/{s@/sbin:@@;s@/bin:@@}'                  \
    -i etc/login.defs                                   &&

./configure --sysconfdir=/etc   \
            --disable-static    \
            --without-libbsd    \
            --with-{b,yes}crypt &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make exec_prefix=/usr pamddir= install
```

The man pages were installed in LFS, but if reinstallation is desired, run (as the `root`{.systemitem} user):

``` root
make -C man install-man
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i 's/groups\$(EXEEXT) //' src/Makefile.in**]{.command}: This sed is used to suppress the installation of the [**groups**]{.command} program as the version from the [Coreutils]{.application} package installed during LFS is preferred.

[**find man -name Makefile.in -exec ... {} \\;**]{.command}: The first command is used to suppress the installation of the [**groups**]{.command} man pages so the existing ones installed from the [Coreutils]{.application} package are not replaced. The two other commands prevent installation of manual pages that are already installed by [Man-pages]{.application} in LFS.

[**sed -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD YESCRYPT@' -e 's@/var/spool/mail@/var/mail@' -e '/PATH=/{s@/sbin:@@;s@/bin:@@}' -i etc/login.defs**]{.command}: Instead of using the default 'DES' method, this command modifies the installation to use the much more secure 'YESCRYPT' method of hashing passwords, which also allows passwords longer than eight characters. The command also changes the obsolete `/var/spool/mail`{.filename} location for user mailboxes that [Shadow]{.application} uses by default to the `/var/mail`{.filename} location. It also changes the default path to be consistent with that set in LFS.

*`--without-libbsd`*: Prevents looking for the [**readpassphrase**]{.command} function, which can be found only in `libbsd`{.filename}, which we do not have in BLFS. An internal implementation of [**readpassphrase**]{.command} is used instead.

*`pamddir=`*: Prevents installation of the shipped PAM configuration files into `/etc/pam.d`{.filename}. The shipped configuration does not work with the BLFS PAM configuration and we will create these configuration files explicitly.
:::

::::::::::::::::::::::::::::::::::::::::::::::::: {.configuration lang="en"}
## Configuring Linux-PAM to Work with Shadow {#configuring-linux-pam-to-work-with-shadow .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The rest of this page is devoted to configuring [Shadow]{.application} to work properly with [Linux-PAM]{.application}.
:::

::: {.sect3 lang="en"}
### []{#pam.d}Config Files {#config-files .sect3}

`/etc/pam.d/*`{.filename} or alternatively `/etc/pam.conf`{.filename}, `/etc/login.defs`{.filename} and `/etc/security/*`{.filename}
:::

:::::::::::::::::::::::::::::::::::::::::::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Configuring your system to use [Linux-PAM]{.application} can be a complex task. The information below will provide a basic setup so that [Shadow]{.application}'s login and password functionality will work effectively with [Linux-PAM]{.application}. Review the information and links on the [Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref} page for further configuration information. For information specific to integrating [Shadow]{.application}, [Linux-PAM]{.application} and [libpwquality]{.application}, you can visit the following link:

::: itemizedlist
-   [http://web.archive.org/web/20240812102759/https://deer-run.com/users/hal/linux_passwords_pam.html](http://web.archive.org/web/20240812102759/https://deer-run.com/users/hal/linux_passwords_pam.md){.ulink}
:::

:::::: sect4
::::: titlepage


##### []{#pam-login-defs}Configuring /etc/login.defs {#configuring-etclogin.defs .title}


:::::

The [**login**]{.command} program currently performs many functions which [Linux-PAM]{.application} modules should now handle. The following [**sed**]{.command} command will comment out the appropriate lines in `/etc/login.defs`{.filename}, and stop [**login**]{.command} from performing these functions (a backup file named `/etc/login.defs.orig`{.filename} is also created to preserve the original file's contents). Issue the following commands as the `root`{.systemitem} user:

``` root
install -v -m644 /etc/login.defs /etc/login.defs.orig &&
for FUNCTION in FAIL_DELAY               \
                FAILLOG_ENAB             \
                LASTLOG_ENAB             \
                MAIL_CHECK_ENAB          \
                OBSCURE_CHECKS_ENAB      \
                PORTTIME_CHECKS_ENAB     \
                QUOTAS_ENAB              \
                CONSOLE MOTD_FILE        \
                FTMP_FILE NOLOGINS_FILE  \
                ENV_HZ PASS_MIN_LEN      \
                SU_WHEEL_ONLY            \
                PASS_CHANGE_TRIES        \
                PASS_ALWAYS_WARN         \
                CHFN_AUTH ENCRYPT_METHOD \
                ENVIRON_FILE
do
    sed -i "s/^${FUNCTION}/# &/" /etc/login.defs
done
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011192532848}Configuring the /etc/pam.d/ Files {#configuring-the-etcpam.d-files .title}


:::::

As mentioned previously in the [Linux-PAM]{.application} instructions, [Linux-PAM]{.application} has two supported methods for configuration. The commands below assume that you've chosen to use a directory based configuration, where each program has its own configuration file. You can optionally use a single `/etc/pam.conf`{.filename} configuration file by using the text from the files below, and supplying the program name as an additional first field for each line.

As the `root`{.systemitem} user, create the following [Linux-PAM]{.application} configuration files in the `/etc/pam.d/`{.filename} directory (or add the contents to the `/etc/pam.conf`{.filename} file) using the following commands:
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011192525088}'login' {#login .title}


:::::

``` root
cat > /etc/pam.d/login << "EOF"
# Begin /etc/pam.d/login

# Set failure delay before next prompt to 3 seconds
auth      optional    pam_faildelay.so  delay=3000000

# Check to make sure that the user is allowed to login
auth      requisite   pam_nologin.so

# Check to make sure that root is allowed to login
# Disabled by default. You will need to create /etc/securetty
# file for this module to function. See man 5 securetty.
#auth      required    pam_securetty.so

# Additional group memberships - disabled by default
#auth      optional    pam_group.so

# include system auth settings
auth      include     system-auth

# check access for the user
account   required    pam_access.so

# include system account settings
account   include     system-account

# Set default environment variables for the user
session   required    pam_env.so

# Set resource limits for the user
session   required    pam_limits.so

# Display the message of the day - Disabled by default
#session   optional    pam_motd.so

# Check user's mail - Disabled by default
#session   optional    pam_mail.so      standard quiet

# include system session and password settings
session   include     system-session
password  include     system-password

# End /etc/pam.d/login
EOF
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011192520960}'passwd' {#passwd .title}


:::::

``` root
cat > /etc/pam.d/passwd << "EOF"
# Begin /etc/pam.d/passwd

password  include     system-password

# End /etc/pam.d/passwd
EOF
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011192517952}'su' {#su .title}


:::::

``` root
cat > /etc/pam.d/su << "EOF"
# Begin /etc/pam.d/su

# always allow root
auth      sufficient  pam_rootok.so

# Allow users in the wheel group to execute su without a password
# disabled by default
#auth      sufficient  pam_wheel.so trust use_uid

# include system auth settings
auth      include     system-auth

# limit su to users in the wheel group
# disabled by default
#auth      required    pam_wheel.so use_uid

# include system account settings
account   include     system-account

# Set default environment variables for the service user
session   required    pam_env.so

# include system session settings
session   include     system-session

# End /etc/pam.d/su
EOF
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011192515072}'chpasswd' and 'newusers' {#chpasswd-and-newusers .title}


:::::

``` root
cat > /etc/pam.d/chpasswd << "EOF"
# Begin /etc/pam.d/chpasswd

# always allow root
auth      sufficient  pam_rootok.so

# include system auth and account settings
auth      include     system-auth
account   include     system-account
password  include     system-password

# End /etc/pam.d/chpasswd
EOF

sed -e s/chpasswd/newusers/ /etc/pam.d/chpasswd >/etc/pam.d/newusers
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011192511776}'chage' {#chage .title}


:::::

``` root
cat > /etc/pam.d/chage << "EOF"
# Begin /etc/pam.d/chage

# always allow root
auth      sufficient  pam_rootok.so

# include system auth and account settings
auth      include     system-auth
account   include     system-account

# End /etc/pam.d/chage
EOF
```
::::::

::::::: sect4
::::: titlepage


##### []{#idm140011192508640}Other shadow utilities {#other-shadow-utilities .title}


:::::

``` root
for PROGRAM in chfn chgpasswd chsh groupadd groupdel \
               groupmems groupmod useradd userdel usermod
do
    install -v -m644 /etc/pam.d/chage /etc/pam.d/${PROGRAM}
    sed -i "s/chage/$PROGRAM/" /etc/pam.d/${PROGRAM}
done
```

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

At this point, you should do a simple test to see if [Shadow]{.application} is working as expected. Open another terminal and log in as `root`{.systemitem}, and then run [**login**]{.command} and login as another user. If you do not see any errors, then all is well and you should proceed with the rest of the configuration. If you did receive errors, stop now and double check the above configuration files manually. Any error is the sign of an error in the above procedure. You can also run the test suite from the [Linux-PAM]{.application} package to assist you in determining the problem. If you cannot find and fix the error, you should recompile [Shadow]{.application} adding the `--without-libpam`{.option} switch to the [**configure**]{.command} command in the above instructions (also move the `/etc/login.defs.orig`{.filename} backup file to `/etc/login.defs`{.filename}). If you fail to do this and the errors remain, you will be unable to log into your system.
:::
:::::::

:::::: sect4
::::: titlepage


##### []{#pam-access}Configuring Login Access {#configuring-login-access .title}


:::::

Instead of using the `/etc/login.access`{.filename} file for controlling access to the system, [Linux-PAM]{.application} uses the `pam_access.so`{.filename} module along with the `/etc/security/access.conf`{.filename} file. Rename the `/etc/login.access`{.filename} file using the following command:

``` root
if [ -f /etc/login.access ]; then mv -v /etc/login.access{,.NOUSE}; fi
```
::::::

::::::: sect4
::::: titlepage


##### []{#pam-limits}Configuring Resource Limits {#configuring-resource-limits .title}


:::::

Instead of using the `/etc/limits`{.filename} file for limiting usage of system resources, [Linux-PAM]{.application} uses the `pam_limits.so`{.filename} module along with the `/etc/security/limits.conf`{.filename} file. Rename the `/etc/limits`{.filename} file using the following command:

``` root
if [ -f /etc/limits ]; then mv -v /etc/limits{,.NOUSE}; fi
```

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

Be sure to test the login capabilities of the system before logging out. Errors in the configuration can cause a permanent lockout requiring a boot from an external source to correct the problem.
:::
:::::::
::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::

::: {.content lang="en"}
## Contents {#contents .sect2}

A list of the installed files, along with their short descriptions can be found at [../../../../lfs/view/systemd/chapter08/shadow.md#contents-shadow](../../../../lfs/view/systemd/chapter08/shadow.md#contents-shadow){.ulink}.
:::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](polkit-gnome.md "polkit-gnome-0.105"){accesskey="p"}

    polkit-gnome-0.105

-   [Next](ssh-askpass.md "ssh-askpass-10.3p1"){accesskey="n"}

    ssh-askpass-10.3p1

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
