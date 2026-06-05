::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](libxcrypt.md "Libxcrypt-4.5.2"){accesskey="p"}

    Libxcrypt-4.5.2

-   [Next](gcc.md "GCC-16.1.0"){accesskey="n"}

    GCC-16.1.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-shadow}8.29. Shadow-4.19.4 {#shadow-4.19.4 .sect1}

::::::::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Shadow package contains programs for handling passwords in a secure way.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [115 MB]{.segbody}
:::
:::::
::::::
:::::::

::::::: {.installation lang="en"}
## 8.29.1. Installation of Shadow {#installation-of-shadow .sect2}

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

If you\'ve installed Linux-PAM, you should follow [the BLFS instructions](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/shadow.html){.ulink} instead of this page to build, rebuild, upgrade shadow.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you would like to enforce the use of strong passwords, [install and configure Linux-PAM](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/linux-pam.html){.ulink} first. Then [install and configure shadow with the PAM support](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/shadow.html){.ulink}. Finally [install libpwquality and configure PAM to use it](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/libpwquality.html){.ulink}.
:::

Prevent the installation of manual pages that were already installed in [Section 8.3, "Man-pages-6.18"](man-pages.md "8.3. Man-pages-6.18"){.xref}:

``` userinput
find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;
```

[]{#shadow-login_defs}Instead of using the default [*crypt*]{.emphasis} method, use the much more secure [*YESCRYPT*]{.emphasis} method of password encryption, which also allows passwords longer than 8 characters. It is also necessary to change the obsolete `/var/spool/mail`{.filename} location for user mailboxes that Shadow uses by default to the `/var/mail`{.filename} location used currently. And, remove `/bin`{.filename} and `/sbin`{.filename} from the `PATH`{.envar}, since they are simply symlinks to their counterparts in `/usr`{.filename}.

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Including `/bin`{.filename} and/or `/sbin`{.filename} in the `PATH`{.envar} variable may cause some BLFS packages fail to build, so don\'t do that in the `.bashrc`{.filename} file or anywhere else.
:::

``` userinput
sed -e 's:#ENCRYPT_METHOD DES:ENCRYPT_METHOD YESCRYPT:' \
    -e 's:/var/spool/mail:/var/mail:'                   \
    -e '/PATH=/{s@/sbin:@@;s@/bin:@@}'                  \
    -i etc/login.defs
```

Prepare Shadow for compilation:

``` userinput
touch /usr/bin/passwd
./configure --sysconfdir=/etc   \
            --disable-static    \
            --with-{b,yes}crypt \
            --without-libbsd    \
            --disable-logind    \
            --with-group-name-max-length=32
```

::: variablelist
**The meaning of the new configuration options:**

[[**touch /usr/bin/passwd**]{.command}]{.term}

:   The file `/usr/bin/passwd`{.filename} needs to exist because its location is hardcoded in some programs; if it does not already exist, the installation script will create it in the wrong place.

[*`--with-{b,yes}crypt`*]{.term}

:   The shell expands this to two switches, *`--with-bcrypt`* and *`--with-yescrypt`*. They allow shadow to use the Bcrypt and Yescrypt algorithms implemented by [Libxcrypt]{.application} for hashing passwords. These algorithms are more secure (in particular, much more resistant to GPU-based attacks) than the traditional SHA algorithms.

[*`--with-group-name-max-length=32`*]{.term}

:   The longest permissible user name is 32 characters. Make the maximum length of a group name the same.

[*`--disable-logind`*]{.term}

:   This option makes Shadow (specifically, the [**login**]{.command} and [**who**]{.command} programs) use the `/run/utmp`{.filename} file instead of logind to track the active login sessions, as logind isn\'t available yet in the incomplete LFS system. But as we\'ve discussed in [Section 7.6, "Creating Essential Files and Symlinks"](../chapter07/createfiles.md "7.6. Creating Essential Files and Symlinks"){.xref}, the `/run/utmp`{.filename} file format will be completely broken after year 2038. The LFS editors will attempt to resolve the issue before that year.

[*`--without-libbsd`*]{.term}

:   Do not use the readpassphrase function from libbsd which is not in LFS. Use the internal copy instead.
:::

Compile the package:

``` userinput
make
```

This package does not come with a test suite.

Install the package:

``` userinput
make exec_prefix=/usr install
make -C man install-man
```
:::::::

:::: {.configuration lang="en"}
## []{#conf-shadow}8.29.2. Configuring Shadow {#configuring-shadow .sect2}

This package contains utilities to add, modify, and delete users and groups; set and change their passwords; and perform other administrative tasks. For a full explanation of what [*password shadowing*]{.emphasis} means, see the `doc/HOWTO`{.filename} file within the unpacked source tree. If you use Shadow support, keep in mind that programs which need to verify passwords (display managers, FTP programs, pop3 daemons, etc.) must be Shadow-compliant. That is, they must be able to work with shadowed passwords.

To enable shadowed passwords, run the following command:

``` userinput
pwconv
```

To enable shadowed group passwords, run:

``` userinput
grpconv
```

Shadow\'s default configuration for the [**useradd**]{.command} utility needs some explanation. First, the default action for the [**useradd**]{.command} utility is to create the user and a group with the same name as the user. By default the user ID (UID) and group ID (GID) numbers will begin at 1000. This means if you don\'t pass extra parameters to [**useradd**]{.command}, each user will be a member of a unique group on the system. If this behavior is undesirable, you\'ll need to pass either the *`-g`* or *`-N`* parameter to [**useradd**]{.command}, or else change the setting of *`USERGROUPS_ENAB`* in `/etc/login.defs`{.filename}. See [useradd(8)](https://man.archlinux.org/man/useradd.8){.ulink} for more information.

Second, to change the default parameters, the file `/etc/default/useradd`{.filename} must be created and tailored to suit your particular needs. Create it with:

``` userinput
mkdir -p /etc/default
useradd -D --gid 999
```

::: variablelist
**`/etc/default/useradd`{.filename} parameter explanations**

[*`GROUP=999`*]{.term}

:   This parameter sets the beginning of the group numbers used in the `/etc/group`{.filename} file. The particular value 999 comes from the *`--gid`* parameter above. You may set it to any desired value. Note that [**useradd**]{.command} will never reuse a UID or GID. If the number identified in this parameter is used, it will use the next available number. Note also that if you don\'t have a group with an ID equal to this number on your system, then the first time you use [**useradd**]{.command} without the *`-g`* parameter, an error message will be generated---`useradd: unknown GID 999`{.computeroutput}, even though the account has been created correctly. That is why we created the group `users`{.systemitem} with this group ID in [Section 7.6, "Creating Essential Files and Symlinks."](../chapter07/createfiles.md "7.6. Creating Essential Files and Symlinks"){.xref}

[*`CREATE_MAIL_SPOOL=yes`*]{.term}

:   This parameter causes [**useradd**]{.command} to create a mailbox file for each new user. [**useradd**]{.command} will assign the group ownership of this file to the `mail`{.systemitem} group with 0660 permissions. If you would rather not create these files, issue the following command:

    ``` userinput
    sed -i '/MAIL/s/yes/no/' /etc/default/useradd
    ```
:::
::::

::: {.configuration lang="en"}
## 8.29.3. Setting the Root Password {#setting-the-root-password .sect2}

Choose a password for user [*root*]{.emphasis} and set it by running:

``` userinput
passwd root
```
:::

::::::::: {.content lang="en"}
## []{#contents-shadow}8.29.4. Contents of Shadow {#contents-of-shadow .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [chage, chfn, chgpasswd, chpasswd, chsh, expiry, faillog, getsubids, gpasswd, groupadd, groupdel, groupmems, groupmod, grpck, grpconv, grpunconv, login, logoutd, newgidmap, newgrp, newuidmap, newusers, nologin, passwd, pwck, pwconv, pwunconv, sg (link to newgrp), su, useradd, userdel, usermod, vigr (link to vipw), and vipw]{.segbody}
:::

::: seg
**Installed directories:** [/etc/default and /usr/include/shadow]{.segbody}
:::

::: seg
**Installed libraries:** [libsubid.so]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------
  []{#chage}[[**chage**]{.command}]{.term}           Used to change the maximum number of days between obligatory password changes
  []{#chfn}[[**chfn**]{.command}]{.term}             Used to change a user\'s full name and other information
  []{#chgpasswd}[[**chgpasswd**]{.command}]{.term}   Used to update group passwords in batch mode
  []{#chpasswd}[[**chpasswd**]{.command}]{.term}     Used to update user passwords in batch mode
  []{#chsh}[[**chsh**]{.command}]{.term}             Used to change a user\'s default login shell
  []{#expiry}[[**expiry**]{.command}]{.term}         Checks and enforces the current password expiration policy
  []{#faillog}[[**faillog**]{.command}]{.term}       Is used to examine the log of login failures, to set a maximum number of failures before an account is blocked, and to reset the failure count
  []{#getsubids}[[**getsubids**]{.command}]{.term}   Is used to list the subordinate id ranges for a user
  []{#gpasswd}[[**gpasswd**]{.command}]{.term}       Is used to add and delete members and administrators to groups
  []{#groupadd}[[**groupadd**]{.command}]{.term}     Creates a group with the given name
  []{#groupdel}[[**groupdel**]{.command}]{.term}     Deletes the group with the given name
  []{#groupmems}[[**groupmems**]{.command}]{.term}   Allows a user to administer his/her own group membership list without the requirement of super user privileges.
  []{#groupmod}[[**groupmod**]{.command}]{.term}     Is used to modify the given group\'s name or GID
  []{#grpck}[[**grpck**]{.command}]{.term}           Verifies the integrity of the group files `/etc/group`{.filename} and `/etc/gshadow`{.filename}
  []{#grpconv}[[**grpconv**]{.command}]{.term}       Creates or updates the shadow group file from the normal group file
  []{#grpunconv}[[**grpunconv**]{.command}]{.term}   Updates `/etc/group`{.filename} from `/etc/gshadow`{.filename} and then deletes the latter
  []{#login}[[**login**]{.command}]{.term}           Is used by the system to let users sign on
  []{#logoutd}[[**logoutd**]{.command}]{.term}       Is a daemon used to enforce restrictions on log-on time and ports
  []{#newgidmap}[[**newgidmap**]{.command}]{.term}   Is used to set the gid mapping of a user namespace
  []{#newgrp}[[**newgrp**]{.command}]{.term}         Is used to change the current GID during a login session
  []{#newuidmap}[[**newuidmap**]{.command}]{.term}   Is used to set the uid mapping of a user namespace
  []{#newusers}[[**newusers**]{.command}]{.term}     Is used to create or update an entire series of user accounts
  []{#nologin}[[**nologin**]{.command}]{.term}       Displays a message saying an account is not available; it is designed to be used as the default shell for disabled accounts
  []{#passwd}[[**passwd**]{.command}]{.term}         Is used to change the password for a user or group account
  []{#pwck}[[**pwck**]{.command}]{.term}             Verifies the integrity of the password files `/etc/passwd`{.filename} and `/etc/shadow`{.filename}
  []{#pwconv}[[**pwconv**]{.command}]{.term}         Creates or updates the shadow password file from the normal password file
  []{#pwunconv}[[**pwunconv**]{.command}]{.term}     Updates `/etc/passwd`{.filename} from `/etc/shadow`{.filename} and then deletes the latter
  []{#sg}[[**sg**]{.command}]{.term}                 Executes a given command while the user\'s GID is set to that of the given group
  []{#su}[[**su**]{.command}]{.term}                 Runs a shell with substitute user and group IDs
  []{#useradd}[[**useradd**]{.command}]{.term}       Creates a new user with the given name, or updates the default new-user information
  []{#userdel}[[**userdel**]{.command}]{.term}       Deletes the specified user account
  []{#usermod}[[**usermod**]{.command}]{.term}       Is used to modify the given user\'s login name, user identification (UID), shell, initial group, home directory, etc.
  []{#vigr}[[**vigr**]{.command}]{.term}             Edits the `/etc/group`{.filename} or `/etc/gshadow`{.filename} files
  []{#vipw}[[**vipw**]{.command}]{.term}             Edits the `/etc/passwd`{.filename} or `/etc/shadow`{.filename} files
  []{#libsubid}[`libsubid`{.filename}]{.term}        library to handle subordinate id ranges for users and groups
  -------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::

::: navfooter
-   [Prev](libxcrypt.md "Libxcrypt-4.5.2"){accesskey="p"}

    Libxcrypt-4.5.2

-   [Next](gcc.md "GCC-16.1.0"){accesskey="n"}

    GCC-16.1.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
