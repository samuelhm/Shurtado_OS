<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](dbus.md "dbus-1.16.2")

    dbus-1.16.2

-   [Next](gpm.md "GPM-1.20.7")

    GPM-1.20.7

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Fcron-3.4.0 {#fcron-3.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Fcron {#introduction-to-fcron}

The <span class="application">Fcron</span> package contains a periodical command scheduler which aims at replacing <span class="application">Vixie Cron</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://fcron.free.fr/archives/fcron-3.4.0.src.tar.gz">http://fcron.free.fr/archives/fcron-3.4.0.src.tar.gz</a>

-   Download MD5 sum: 5732a766df42a090749c0c96a6afd42b

-   Download size: 608 KB

-   Estimated disk space required: 4.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Fcron Dependencies

#### Optional

An <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a>, <a class="ulink" href="../postlfs/editors.md">text editor</a> (default is <span class="command"><strong>vi</strong></span> from the <a class="xref" href="../postlfs/vim.md" title="Vim-9.2.0567">Vim-9.2.0567</a> package), <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, and <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>
</div>

<div class="installation" lang="en">
## Installation of Fcron {#installation-of-fcron}

For security reasons, an unprivileged user and group for <span class="application">Fcron</span> should be created (perform as the <code class="systemitem">root</code> user):

```bash
groupadd -g 22 fcron &&
useradd -d /dev/null -c "Fcron User" -g fcron -s /bin/false -u 22 fcron
```

Now fix some locations hard coded in the documentation:

```bash
find doc -type f -exec sed -i 's:/usr/local::g' {} \;
```

Install <span class="application">Fcron</span> by running the following commands:

```bash
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --without-sendmail   \
            --with-piddir=/run   \
            --with-boot-install=no &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

DESTDIR install must be done as <code class="systemitem">root</code> user. Furthermore, if PAM configuration files should be installed in <code class="filename">/etc/pam.d</code>, you have to create this directory in the DESTDIR before doing the install.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--without-sendmail`*: By default, <span class="application">Fcron</span> will attempt to use the <span class="command"><strong>sendmail</strong></span> command from an <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> package to email you the results of the <span class="command"><strong>fcron</strong></span> script. This switch is used to disable default email notification. Omit the switch to enable the default. Alternatively, you can use the <code class="option">--with-sendmail=</code>*`</path/to/MTA command>`* to use a different mailer command.

*`--with-boot-install=no`*: This prevents installation of the bootscript included with the package.

*`--with-piddir=/run`*: This fixes the systemd unit to use the proper directory for PID files so that systemctl does not hang and the unit starts correctly.

<code class="option">--with-editor=</code>*`</path/to/editor>`*: This switch allows you to set the default text editor.

<code class="option">--with-dsssl-dir=</code>*`</path/to/dsssl-stylesheets>`*: May be used if you have <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a> installed. Currently, the dsssl stylesheets are located at <code class="filename">/usr/share/sgml/docbook/dsssl-stylesheets-1.79</code>.
</div>

<div class="configuration" lang="en">
## Configuring Fcron {#configuring-fcron}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/fcron.conf</code>, <code class="filename">/etc/fcron.allow</code>, and <code class="filename">/etc/fcron.deny</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

There are no required changes in any of the config files. Configuration information can be found in the man page for <code class="filename">fcron.conf</code>.

<span class="command"><strong>fcron</strong></span> scripts are written using <span class="command"><strong>fcrontab</strong></span>. Refer to the <span class="command"><strong>fcrontab</strong></span> man page for proper parameters to address your situation.

<a id="fcron-pam"></a> If <span class="application">Linux-PAM</span> is installed, two PAM configuration files are installed in <code class="filename">etc/pam.d</code>. Alternatively if <code class="filename">etc/pam.d</code> is not used, the installation will append two configuration sections to the existing <code class="filename">/etc/pam.conf</code> file. You should ensure the files match your preferences. Modify them as required to suit your needs.

#### Periodic Jobs

If you would like to set up a periodic hierarchy for the root user, first issue the following commands (as the <code class="systemitem">root</code> user) to create the <code class="filename">/usr/bin/run-parts</code> script:

```bash
cat > /usr/bin/run-parts << "EOF" &&
#!/bin/sh
# run-parts:  Runs all the scripts found in a directory.
# from Slackware, by Patrick J. Volkerding with ideas borrowed
# from the Red Hat and Debian versions of this utility.

# keep going when something fails
set +e

if [ $# -lt 1 ]; then
  echo "Usage: run-parts <directory>"
  exit 1
fi

if [ ! -d $1 ]; then
  echo "Not a directory: $1"
  echo "Usage: run-parts <directory>"
  exit 1
fi

# There are several types of files that we would like to
# ignore automatically, as they are likely to be backups
# of other scripts:
IGNORE_SUFFIXES="~ ^ , .bak .new .rpmsave .rpmorig .rpmnew .swp"

# Main loop:
for SCRIPT in $1/* ; do
  # If this is not a regular file, skip it:
  if [ ! -f $SCRIPT ]; then
    continue
  fi
  # Determine if this file should be skipped by suffix:
  SKIP=false
  for SUFFIX in $IGNORE_SUFFIXES ; do
    if [ ! "$(basename $SCRIPT $SUFFIX)" = "$(basename $SCRIPT)" ]; then
      SKIP=true
      break
    fi
  done
  if [ "$SKIP" = "true" ]; then
    continue
  fi
  # If we've made it this far, then run the script if it's executable:
  if [ -x $SCRIPT ]; then
    $SCRIPT || echo "$SCRIPT failed."
  fi
done

exit 0
EOF
chmod -v 755 /usr/bin/run-parts
```

Next, create the directory layout for the periodic jobs (again as the <code class="systemitem">root</code> user):

```bash
install -vdm754 /etc/cron.{hourly,daily,weekly,monthly}
```

Finally, add the <span class="command"><strong>run-parts</strong></span> to the system fcrontab (while still the <code class="systemitem">root</code> user):

```bash
cat > /var/spool/fcron/systab.orig << "EOF"
&bootrun 01 * * * * root run-parts /etc/cron.hourly
&bootrun 02 4 * * * root run-parts /etc/cron.daily
&bootrun 22 4 * * 0 root run-parts /etc/cron.weekly
&bootrun 42 4 1 * * root run-parts /etc/cron.monthly
EOF
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

Enable <span class="application">fcron</span> to start at boot using the previously installed systemd unit.

```bash
systemctl enable fcron
```

Finally, again as the <code class="systemitem">root</code> user, start fcron and generate the <code class="filename">/var/spool/fcron/systab</code> file:

```bash
systemctl start fcron &&
fcrontab -z -u systab
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fcron, fcrondyn, fcronsighup, and fcrontab</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/fcron-3.4.0 and /var/spool/fcron</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------------------------------------
  <a id="fcron-prog"></a><span class="command"><span class="term"><strong>fcron</strong></span></span>          is the scheduling daemon
  <a id="fcrondyn"></a><span class="command"><span class="term"><strong>fcrondyn</strong></span></span>         is a user tool intended to interact with a running <span class="command"><strong>fcron</strong></span> daemon
  <a id="fcronsighup"></a><span class="command"><span class="term"><strong>fcronsighup</strong></span></span>   instructs <span class="command"><strong>fcron</strong></span> to reread the <span class="application">Fcron</span> tables
  <a id="fcrontab"></a><span class="command"><span class="term"><strong>fcrontab</strong></span></span>         is a program used to install, edit, list and remove the tables used by <span class="command"><strong>fcron</strong></span>
  ------------------------------------------------------ ----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dbus.md "dbus-1.16.2")

    dbus-1.16.2

-   [Next](gpm.md "GPM-1.20.7")

    GPM-1.20.7

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
