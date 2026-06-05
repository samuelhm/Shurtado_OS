::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](lsb-tools.md "LSB-Tools-0.12"){accesskey="p"}

    LSB-Tools-0.12

-   [Next](mc.md "MC-4.8.33"){accesskey="n"}

    MC-4.8.33

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#logrotate}Logrotate-3.22.0 {#logrotate-3.22.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Logrotate {#introduction-to-logrotate .sect2}

The [logrotate]{.application} package allows automatic rotation, compression, removal, and mailing of log files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/logrotate/logrotate/releases/download/3.22.0/logrotate-3.22.0.tar.xz](https://github.com/logrotate/logrotate/releases/download/3.22.0/logrotate-3.22.0.tar.xz){.ulink}

-   Download MD5 sum: 2386501a53ff086f44eeada2b27d50b8

-   Download size: 172 KB

-   Estimated disk space required: 2.6 MB (add 38 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.1 SBU for tests)
:::

### Logrotate Dependencies

#### Required

[popt-1.19](popt.md "Popt-1.19"){.xref}

#### Optional

An [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of Logrotate {#installation-of-logrotate .sect2}

Install [logrotate]{.application} by running the following command:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make test**]{.command}. Two tests fail if an MTA is not installed.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.configuration lang="en"}
## Configuring Logrotate {#configuring-logrotate .sect2}

[Logrotate]{.application} needs a configuration file, which must be passed as an argument to the command when executed. Create the file as the `root`{.systemitem} user:

``` root
cat > /etc/logrotate.conf << EOF
# Begin /etc/logrotate.conf

# Rotate log files weekly
weekly

# Don't mail logs to anybody
nomail

# If the log file is empty, it will not be rotated
notifempty

# Number of backups that will be kept
# This will keep the 2 newest backups only
rotate 2

# Create new empty files after rotating old ones
# This will create empty log files, with owner
# set to root, group set to sys, and permissions 664
create 0664 root sys

# Compress the backups with gzip
compress

# No packages own lastlog or wtmp -- rotate them here
/var/log/wtmp {
    monthly
    create 0664 root utmp
    rotate 1
}

/var/log/lastlog {
    monthly
    rotate 1
}

# Some packages drop log rotation info in this directory
# so we include any file in it.
include /etc/logrotate.d

# End /etc/logrotate.conf
EOF

chmod -v 0644 /etc/logrotate.conf
```

Now create the `/etc/logrotate.d`{.filename} directory as the `root`{.systemitem} user:

``` root
mkdir -p /etc/logrotate.d
```

At this point additional log rotation commands can be entered, typically in the `/etc/logrotate.d`{.filename} directory. For example:

``` userinput
cat > /etc/logrotate.d/sys.log << EOF
/var/log/sys.log {
   # If the log file is larger than 100kb, rotate it
   size   100k
   rotate 5
   weekly
   postrotate
      /bin/killall -HUP syslogd
   endscript
}
EOF

chmod -v 0644 /etc/logrotate.d/sys.log
```

You can designate multiple files in one entry:

``` userinput
cat > /etc/logrotate.d/example.log << EOF
file1
file2
file3 {
   ...
   postrotate
    ...
   endscript
}
EOF

chmod -v 0644 /etc/logrotate.d/example.log
```

You can use in the same line the list of files: file1 file2 file3. See the logrotate man page or [https://www.techrepublic.com/article/manage-linux-log-files-with-logrotate/](https://www.techrepublic.com/article/manage-linux-log-files-with-logrotate/){.ulink} for more examples.

The command [**logrotate /etc/logrotate.conf**]{.command} can be run manually, however, the command should be run daily. Other useful commands are [**logrotate -d /etc/logrotate.conf**]{.command} for debugging purposes and [**logrotate -f /etc/logrotate.conf**]{.command} forcing the logrotate commands to be run immediately. Combining the previous options `-df`{.option}, you can debug the effect of the force command. When debugging, the commands are only simulated and are not actually run. As a result, errors about files not existing will eventually appear because the files are not actually created.

To run the [**logrotate**]{.command} command daily, [execute]{.phrase} the following commands, as the `root`{.systemitem} user, to create a [systemd timer to run daily at 3:00 A.M. (local time):]{.phrase}

``` root
cat > /usr/lib/systemd/system/logrotate.service << "EOF" &&
[Unit]
Description=Runs the logrotate command
Documentation=man:logrotate(8)
DefaultDependencies=no
After=local-fs.target
Before=shutdown.target

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/sbin/logrotate /etc/logrotate.conf
EOF
cat > /usr/lib/systemd/system/logrotate.timer << "EOF" &&
[Unit]
Description=Runs the logrotate command daily at 3:00 AM

[Timer]
OnCalendar=*-*-* 3:00:00
Persistent=true

[Install]
WantedBy=timers.target
EOF
systemctl enable logrotate.timer
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [logrotate]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ---------------------------------------------------------------------------
  []{#logrotate-prog}[[**logrotate**]{.command}]{.term}   performs the log maintenance functions defined in the configuration files
  ------------------------------------------------------- ---------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lsb-tools.md "LSB-Tools-0.12"){accesskey="p"}

    LSB-Tools-0.12

-   [Next](mc.md "MC-4.8.33"){accesskey="n"}

    MC-4.8.33

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
