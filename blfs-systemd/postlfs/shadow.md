<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](polkit-gnome.md "polkit-gnome-0.105")

    polkit-gnome-0.105

-   [Next](ssh-askpass.md "ssh-askpass-10.3p1")

    ssh-askpass-10.3p1

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Shadow-4.19.4 {#shadow-4.19.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Shadow {#introduction-to-shadow}

<span class="application">Shadow</span> was indeed installed in LFS and there is no reason to reinstall it unless you installed <span class="application">Linux-PAM</span> after your LFS system was completed. With <span class="application">Linux-PAM</span> installed, reinstalling <span class="application">Shadow</span> will allow programs such as <span class="command"><strong>login</strong></span> and <span class="command"><strong>su</strong></span> to utilize PAM.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/shadow-maint/shadow/releases/download/4.19.4/shadow-4.19.4.tar.xz">https://github.com/shadow-maint/shadow/releases/download/4.19.4/shadow-4.19.4.tar.xz</a>

-   Download MD5 sum: ed0f3ff4940822ba75a3b0687a9ce93b

-   Download size: 2.2 MB

-   Estimated disk space required: 104 MB

-   Estimated build time: 0.2 SBU
</div>

### Shadow Dependencies

#### Required

<a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>

#### Optional

<a class="ulink" href="https://libbsd.freedesktop.org/wiki/">libbsd</a> and <a class="ulink" href="https://www.openwall.com/tcb/">tcb</a>
</div>

<div class="installation" lang="en">
## Installation of Shadow {#installation-of-shadow}

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

The installation commands shown below are for installations where <span class="application">Linux-PAM</span> has been installed and <span class="application">Shadow</span> is being reinstalled to support the <span class="application">Linux-PAM</span> installation.
</div>

Reinstall <span class="application">Shadow</span> by running the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
make exec_prefix=/usr pamddir= install
```

The man pages were installed in LFS, but if reinstallation is desired, run (as the <code class="systemitem">root</code> user):

```bash
make -C man install-man
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i 's/groups\$(EXEEXT) //' src/Makefile.in</strong></span>: This sed is used to suppress the installation of the <span class="command"><strong>groups</strong></span> program as the version from the <span class="application">Coreutils</span> package installed during LFS is preferred.

<span class="command"><strong>find man -name Makefile.in -exec ... {} \\;</strong></span>: The first command is used to suppress the installation of the <span class="command"><strong>groups</strong></span> man pages so the existing ones installed from the <span class="application">Coreutils</span> package are not replaced. The two other commands prevent installation of manual pages that are already installed by <span class="application">Man-pages</span> in LFS.

<span class="command"><strong>sed -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD YESCRYPT@' -e 's@/var/spool/mail@/var/mail@' -e '/PATH=/{s@/sbin:@@;s@/bin:@@}' -i etc/login.defs</strong></span>: Instead of using the default 'DES' method, this command modifies the installation to use the much more secure 'YESCRYPT' method of hashing passwords, which also allows passwords longer than eight characters. The command also changes the obsolete <code class="filename">/var/spool/mail</code> location for user mailboxes that <span class="application">Shadow</span> uses by default to the <code class="filename">/var/mail</code> location. It also changes the default path to be consistent with that set in LFS.

*`--without-libbsd`*: Prevents looking for the <span class="command"><strong>readpassphrase</strong></span> function, which can be found only in <code class="filename">libbsd</code>, which we do not have in BLFS. An internal implementation of <span class="command"><strong>readpassphrase</strong></span> is used instead.

*`pamddir=`*: Prevents installation of the shipped PAM configuration files into <code class="filename">/etc/pam.d</code>. The shipped configuration does not work with the BLFS PAM configuration and we will create these configuration files explicitly.
</div>

<div class="configuration" lang="en">
## Configuring Linux-PAM to Work with Shadow {#configuring-linux-pam-to-work-with-shadow}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The rest of this page is devoted to configuring <span class="application">Shadow</span> to work properly with <span class="application">Linux-PAM</span>.
</div>

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/pam.d/*</code> or alternatively <code class="filename">/etc/pam.conf</code>, <code class="filename">/etc/login.defs</code> and <code class="filename">/etc/security/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Configuring your system to use <span class="application">Linux-PAM</span> can be a complex task. The information below will provide a basic setup so that <span class="application">Shadow</span>'s login and password functionality will work effectively with <span class="application">Linux-PAM</span>. Review the information and links on the <a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> page for further configuration information. For information specific to integrating <span class="application">Shadow</span>, <span class="application">Linux-PAM</span> and <span class="application">libpwquality</span>, you can visit the following link:

<div class="itemizedlist">
-   <a class="ulink" href="http://web.archive.org/web/20240812102759/https://deer-run.com/users/hal/linux_passwords_pam.md">http://web.archive.org/web/20240812102759/https://deer-run.com/users/hal/linux_passwords_pam.html</a>
</div>

<div class="sect4">
<div class="titlepage">


##### Configuring /etc/login.defs {#configuring-etclogin.defs}


</div>

The <span class="command"><strong>login</strong></span> program currently performs many functions which <span class="application">Linux-PAM</span> modules should now handle. The following <span class="command"><strong>sed</strong></span> command will comment out the appropriate lines in <code class="filename">/etc/login.defs</code>, and stop <span class="command"><strong>login</strong></span> from performing these functions (a backup file named <code class="filename">/etc/login.defs.orig</code> is also created to preserve the original file's contents). Issue the following commands as the <code class="systemitem">root</code> user:

```bash
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
</div>

<div class="sect4">
<div class="titlepage">


##### Configuring the /etc/pam.d/ Files {#configuring-the-etcpam.d-files}


</div>

As mentioned previously in the <span class="application">Linux-PAM</span> instructions, <span class="application">Linux-PAM</span> has two supported methods for configuration. The commands below assume that you've chosen to use a directory based configuration, where each program has its own configuration file. You can optionally use a single <code class="filename">/etc/pam.conf</code> configuration file by using the text from the files below, and supplying the program name as an additional first field for each line.

As the <code class="systemitem">root</code> user, create the following <span class="application">Linux-PAM</span> configuration files in the <code class="filename">/etc/pam.d/</code> directory (or add the contents to the <code class="filename">/etc/pam.conf</code> file) using the following commands:
</div>

<div class="sect4">
<div class="titlepage">


##### 'login' {#login}


</div>

```bash
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
</div>

<div class="sect4">
<div class="titlepage">


##### 'passwd' {#passwd}


</div>

```bash
cat > /etc/pam.d/passwd << "EOF"
# Begin /etc/pam.d/passwd

password  include     system-password

# End /etc/pam.d/passwd
EOF
```
</div>

<div class="sect4">
<div class="titlepage">


##### 'su' {#su}


</div>

```bash
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
</div>

<div class="sect4">
<div class="titlepage">


##### 'chpasswd' and 'newusers' {#chpasswd-and-newusers}


</div>

```bash
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
</div>

<div class="sect4">
<div class="titlepage">


##### 'chage' {#chage}


</div>

```bash
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
</div>

<div class="sect4">
<div class="titlepage">


##### Other shadow utilities {#other-shadow-utilities}


</div>

```bash
for PROGRAM in chfn chgpasswd chsh groupadd groupdel \
               groupmems groupmod useradd userdel usermod
do
    install -v -m644 /etc/pam.d/chage /etc/pam.d/${PROGRAM}
    sed -i "s/chage/$PROGRAM/" /etc/pam.d/${PROGRAM}
done
```

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

At this point, you should do a simple test to see if <span class="application">Shadow</span> is working as expected. Open another terminal and log in as <code class="systemitem">root</code>, and then run <span class="command"><strong>login</strong></span> and login as another user. If you do not see any errors, then all is well and you should proceed with the rest of the configuration. If you did receive errors, stop now and double check the above configuration files manually. Any error is the sign of an error in the above procedure. You can also run the test suite from the <span class="application">Linux-PAM</span> package to assist you in determining the problem. If you cannot find and fix the error, you should recompile <span class="application">Shadow</span> adding the <code class="option">--without-libpam</code> switch to the <span class="command"><strong>configure</strong></span> command in the above instructions (also move the <code class="filename">/etc/login.defs.orig</code> backup file to <code class="filename">/etc/login.defs</code>). If you fail to do this and the errors remain, you will be unable to log into your system.
</div>
</div>

<div class="sect4">
<div class="titlepage">


##### Configuring Login Access {#configuring-login-access}


</div>

Instead of using the <code class="filename">/etc/login.access</code> file for controlling access to the system, <span class="application">Linux-PAM</span> uses the <code class="filename">pam_access.so</code> module along with the <code class="filename">/etc/security/access.conf</code> file. Rename the <code class="filename">/etc/login.access</code> file using the following command:

```bash
if [ -f /etc/login.access ]; then mv -v /etc/login.access{,.NOUSE}; fi
```
</div>

<div class="sect4">
<div class="titlepage">


##### Configuring Resource Limits {#configuring-resource-limits}


</div>

Instead of using the <code class="filename">/etc/limits</code> file for limiting usage of system resources, <span class="application">Linux-PAM</span> uses the <code class="filename">pam_limits.so</code> module along with the <code class="filename">/etc/security/limits.conf</code> file. Rename the <code class="filename">/etc/limits</code> file using the following command:

```bash
if [ -f /etc/limits ]; then mv -v /etc/limits{,.NOUSE}; fi
```

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

Be sure to test the login capabilities of the system before logging out. Errors in the configuration can cause a permanent lockout requiring a boot from an external source to correct the problem.
</div>
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

A list of the installed files, along with their short descriptions can be found at <a class="ulink" href="../../../../lfs/view/systemd/chapter08/shadow.md#contents-shadow">../../../../lfs/view/systemd/chapter08/shadow.md#contents-shadow</a>.
</div>
</div>

<div class="navfooter">
-   [Prev](polkit-gnome.md "polkit-gnome-0.105")

    polkit-gnome-0.105

-   [Next](ssh-askpass.md "ssh-askpass-10.3p1")

    ssh-askpass-10.3p1

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
