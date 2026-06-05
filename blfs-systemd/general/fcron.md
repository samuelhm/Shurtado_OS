::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](dbus.md "dbus-1.16.2"){accesskey="p"}

    dbus-1.16.2

-   [Next](gpm.md "GPM-1.20.7"){accesskey="n"}

    GPM-1.20.7

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fcron}Fcron-3.4.0 {#fcron-3.4.0 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Fcron {#introduction-to-fcron .sect2}

The [Fcron]{.application} package contains a periodical command scheduler which aims at replacing [Vixie Cron]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://fcron.free.fr/archives/fcron-3.4.0.src.tar.gz](http://fcron.free.fr/archives/fcron-3.4.0.src.tar.gz){.ulink}

-   Download MD5 sum: 5732a766df42a090749c0c96a6afd42b

-   Download size: 608 KB

-   Estimated disk space required: 4.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### Fcron Dependencies

#### Optional

An [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref}, [text editor](../postlfs/editors.md){.ulink} (default is [**vi**]{.command} from the [Vim-9.2.0567](../postlfs/vim.md "Vim-9.2.0567"){.xref} package), [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, and [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Fcron {#installation-of-fcron .sect2}

For security reasons, an unprivileged user and group for [Fcron]{.application} should be created (perform as the `root`{.systemitem} user):

``` root
groupadd -g 22 fcron &&
useradd -d /dev/null -c "Fcron User" -g fcron -s /bin/false -u 22 fcron
```

Now fix some locations hard coded in the documentation:

``` userinput
find doc -type f -exec sed -i 's:/usr/local::g' {} \;
```

Install [Fcron]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --without-sendmail   \
            --with-piddir=/run   \
            --with-boot-install=no &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

DESTDIR install must be done as `root`{.systemitem} user. Furthermore, if PAM configuration files should be installed in `/etc/pam.d`{.filename}, you have to create this directory in the DESTDIR before doing the install.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--without-sendmail`*: By default, [Fcron]{.application} will attempt to use the [**sendmail**]{.command} command from an [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} package to email you the results of the [**fcron**]{.command} script. This switch is used to disable default email notification. Omit the switch to enable the default. Alternatively, you can use the `--with-sendmail=`{.option}*`</path/to/MTA command>`* to use a different mailer command.

*`--with-boot-install=no`*: This prevents installation of the bootscript included with the package.

*`--with-piddir=/run`*: This fixes the systemd unit to use the proper directory for PID files so that systemctl does not hang and the unit starts correctly.

`--with-editor=`{.option}*`</path/to/editor>`*: This switch allows you to set the default text editor.

`--with-dsssl-dir=`{.option}*`</path/to/dsssl-stylesheets>`*: May be used if you have [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref} installed. Currently, the dsssl stylesheets are located at `/usr/share/sgml/docbook/dsssl-stylesheets-1.79`{.filename}.
:::

:::::: {.configuration lang="en"}
## Configuring Fcron {#configuring-fcron .sect2}

::: {.sect3 lang="en"}
### []{#fcron-config}Config Files {#config-files .sect3}

`/etc/fcron.conf`{.filename}, `/etc/fcron.allow`{.filename}, and `/etc/fcron.deny`{.filename}
:::

::: {.sect3 lang="en"}
### []{#run-parts}Configuration Information {#configuration-information .sect3}

There are no required changes in any of the config files. Configuration information can be found in the man page for `fcron.conf`{.filename}.

[**fcron**]{.command} scripts are written using [**fcrontab**]{.command}. Refer to the [**fcrontab**]{.command} man page for proper parameters to address your situation.

[]{#fcron-pam} If [Linux-PAM]{.application} is installed, two PAM configuration files are installed in `etc/pam.d`{.filename}. Alternatively if `etc/pam.d`{.filename} is not used, the installation will append two configuration sections to the existing `/etc/pam.conf`{.filename} file. You should ensure the files match your preferences. Modify them as required to suit your needs.

#### Periodic Jobs

If you would like to set up a periodic hierarchy for the root user, first issue the following commands (as the `root`{.systemitem} user) to create the `/usr/bin/run-parts`{.filename} script:

``` root
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

Next, create the directory layout for the periodic jobs (again as the `root`{.systemitem} user):

``` root
install -vdm754 /etc/cron.{hourly,daily,weekly,monthly}
```

Finally, add the [**run-parts**]{.command} to the system fcrontab (while still the `root`{.systemitem} user):

``` root
cat > /var/spool/fcron/systab.orig << "EOF"
&bootrun 01 * * * * root run-parts /etc/cron.hourly
&bootrun 02 4 * * * root run-parts /etc/cron.daily
&bootrun 22 4 * * 0 root run-parts /etc/cron.weekly
&bootrun 42 4 1 * * root run-parts /etc/cron.monthly
EOF
```
:::

::: {.sect3 lang="en"}
### []{#fcron-init} Systemd Unit {#systemd-unit .sect3}

Enable [fcron]{.application} to start at boot using the previously installed systemd unit.

``` root
systemctl enable fcron
```

Finally, again as the `root`{.systemitem} user, start fcron and generate the `/var/spool/fcron/systab`{.filename} file:

``` root
systemctl start fcron &&
fcrontab -z -u systab
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fcron, fcrondyn, fcronsighup, and fcrontab]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/fcron-3.4.0 and /var/spool/fcron]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------------------------------------
  []{#fcron-prog}[[**fcron**]{.command}]{.term}          is the scheduling daemon
  []{#fcrondyn}[[**fcrondyn**]{.command}]{.term}         is a user tool intended to interact with a running [**fcron**]{.command} daemon
  []{#fcronsighup}[[**fcronsighup**]{.command}]{.term}   instructs [**fcron**]{.command} to reread the [Fcron]{.application} tables
  []{#fcrontab}[[**fcrontab**]{.command}]{.term}         is a program used to install, edit, list and remove the tables used by [**fcron**]{.command}
  ------------------------------------------------------ ----------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](dbus.md "dbus-1.16.2"){accesskey="p"}

    dbus-1.16.2

-   [Next](gpm.md "GPM-1.20.7"){accesskey="n"}

    GPM-1.20.7

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
