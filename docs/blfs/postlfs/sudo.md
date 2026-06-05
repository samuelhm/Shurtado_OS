<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](stunnel.md "stunnel-5.78")

    stunnel-5.78

-   [Next](tripwire.md "Tripwire-2.4.3.7")

    Tripwire-2.4.3.7

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Sudo-1.9.17p2 {#sudo-1.9.17p2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Sudo {#introduction-to-sudo}

The <span class="application">Sudo</span> package allows a system administrator to give certain users (or groups of users) the ability to run some (or all) commands as <code class="systemitem">root</code> or another user while logging the commands and arguments.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.sudo.ws/dist/sudo-1.9.17p2.tar.gz">https://www.sudo.ws/dist/sudo-1.9.17p2.tar.gz</a>

-   Download MD5 sum: dcbf46f739ae06b076e1a11cbb271a10

-   Download size: 5.2 MB

-   Estimated disk space required: 54 MB (add 10 MB for tests)

-   Estimated build time: 0.2 SBU (with parallelism=4; add 0.1 SBU for tests)
</div>

### Sudo Dependencies

#### Optional

<a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> (that provides a <span class="command"><strong>sendmail</strong></span> command), <a class="ulink" href="https://www.openafs.org/">AFS</a>, <a class="ulink" href="https://github.com/linux-audit/audit-userspace">libaudit</a>, <a class="ulink" href="https://downloads.sourceforge.net/opie/">Opie</a>, and <a class="ulink" href="https://sssd.io/">Sssd</a>
</div>

<div class="installation" lang="en">
## Installation of Sudo {#installation-of-sudo}

First, fix building sudo with openssl-4:

```bash
sed -e 's/\([->.a-zA-Z_]*\)->length/ASN1_STRING_length(\1)/' \
    -i lib/iolog/hostcheck.c
```

Install <span class="application">Sudo</span> by running the following commands:

```bash
./configure --prefix=/usr         \
            --libexecdir=/usr/lib \
            --with-secure-path    \
            --with-env-editor     \
            --docdir=/usr/share/doc/sudo-1.9.17p2 \
            --with-passprompt="[sudo] password for %p: " &&
make
```

To test the results, issue: <span class="command"><strong>env LC_ALL=C make check \|& tee make-check.log</strong></span>. Check the results with <span class="command"><strong>grep failed make-check.log</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--libexecdir=/usr/lib`*: This switch controls where private programs are installed. Everything in that directory is a library, so they belong under <code class="filename">/usr/lib</code> instead of <code class="filename">/usr/libexec</code>.

*`--with-secure-path`*: This switch transparently adds <code class="filename">/sbin</code> and <code class="filename">/usr/sbin</code> directories to the <code class="envar">PATH</code> environment variable.

*`--with-env-editor`*: This switch enables use of the environment variable EDITOR for <span class="command"><strong>visudo</strong></span>.

*`--with-passprompt`*: This switch sets the password prompt. The *`%p`* will be expanded to the name of the user whose password is being requested.

<code class="option">--without-pam</code>: This switch avoids building <span class="application">Linux-PAM</span> support when <span class="application">Linux-PAM</span> is installed on the system.

<code class="option">--with-all-insults</code>: This switch includes all the sudo insult sets. Insults are printed if the user types a bad password, and if enabled in <code class="filename">/etc/sudoers</code>. Use <code class="option">--with-insults</code> to have them enabled by default. Various sets of insults can be selected with some other switches.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There are many options to <span class="application">sudo</span>'s <span class="command"><strong>configure</strong></span> command. Check the <span class="command"><strong>configure --help</strong></span> output for a complete list.
</div>
</div>

<div class="configuration" lang="en">
## Configuring Sudo {#configuring-sudo}

<div class="sect3" lang="en">
### Config File {#config-file}

<code class="filename">/etc/sudoers</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The <code class="filename">sudoers</code> file can be quite complicated. It is composed of two types of entries: aliases (basically variables) and user specifications (which specify who may run what). The installation installs a default configuration that has no privileges installed for any user.

A couple of common configuration changes are to set the path for the super user and to allow members of the wheel group to execute all commands after providing their own credentials. Use the following commands to create the <code class="filename">/etc/sudoers.d/00-sudo</code> configuration file as the <code class="systemitem">root</code> user:

```bash
cat > /etc/sudoers.d/00-sudo << "EOF"
Defaults secure_path="/usr/sbin:/usr/bin"
%wheel ALL=(ALL) ALL
EOF
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

In very simple installations where there is only one user, it may be easier to just edit the <code class="filename">/etc/sudoers</code> file directly. In that case, the <code class="varname">secure_path</code> entry may not be needed and using <span class="command"><strong>sudo -E ...</strong></span> can import the non-privileged user's full environment into the privileged session.

The files in the <code class="filename">/etc/sudoers.d</code> directory are parsed in sorted lexical order. Be careful that entries in an added file do not overwrite previous entries.
</div>

For details, see <span class="command"><strong>man sudoers</strong></span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="application">Sudo</span> developers highly recommend using the <span class="command"><strong>visudo</strong></span> program to edit the <code class="filename">sudoers</code> file. This will provide basic sanity checking like syntax parsing and file permission to avoid some possible mistakes that could lead to a vulnerable configuration.
</div>

If <span class="application">PAM</span> is installed on the system, <span class="application">Sudo</span> is built with <span class="application">PAM</span> support. In that case, issue the following command as the <code class="systemitem">root</code> user to create the <span class="application">PAM</span> configuration file:

```bash
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
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cvtsudoers, sudo, sudo_logsrvd, sudo_sendlog, sudoedit (symlink), sudoreplay, and visudo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">audit_json.so, group_file.so, libsudo_util.so, sudoers.so, sudo_intercept.so, sudo_noexec.so, and system_group.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/sudoers.d, /usr/lib/sudo, /usr/share/doc/sudo-1.9.17p2, and /var/lib/sudo</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
  <a id="cvtsudoers"></a><span class="command"><span class="term"><strong>cvtsudoers</strong></span></span>       converts between sudoers file formats
  <a id="sudo_prog"></a><span class="command"><span class="term"><strong>sudo</strong></span></span>              executes a command as another user as permitted by the <code class="filename">/etc/sudoers</code> configuration file
  <a id="sudo_logsrvd"></a><span class="command"><span class="term"><strong>sudo_logsrvd</strong></span></span>   is a sudo event and I/O log server
  <a id="sudo_sendlog"></a><span class="command"><span class="term"><strong>sudo_sendlog</strong></span></span>   sends sudo I/O logs to the log server
  <a id="sudoedit"></a><span class="command"><span class="term"><strong>sudoedit</strong></span></span>           is a symlink to <span class="command"><strong>sudo</strong></span> that implies the <code class="option">-e</code> option to invoke an editor as another user
  <a id="sudoreplay"></a><span class="command"><span class="term"><strong>sudoreplay</strong></span></span>       is used to play back or list the output logs created by <span class="command"><strong>sudo</strong></span>
  <a id="visudo"></a><span class="command"><span class="term"><strong>visudo</strong></span></span>               allows for safer editing of the <code class="filename">sudoers</code> file
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](stunnel.md "stunnel-5.78")

    stunnel-5.78

-   [Next](tripwire.md "Tripwire-2.4.3.7")

    Tripwire-2.4.3.7

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
