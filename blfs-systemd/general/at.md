::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](acpid.md "acpid-2.0.34"){accesskey="p"}

    acpid-2.0.34

-   [Next](autofs.md "autofs-5.1.9"){accesskey="n"}

    autofs-5.1.9

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#at}at-3.2.5 {#at-3.2.5 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to at {#introduction-to-at .sect2}

The [at]{.application} package provides delayed job execution and batch processing. It is required for Linux Standards Base (LSB) conformance.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/at/at_3.2.5.orig.tar.gz](https://anduin.linuxfromscratch.org/BLFS/at/at_3.2.5.orig.tar.gz){.ulink}

-   Download MD5 sum: ca3657a1c90d7c3d252e0bc17feddc6e

-   Download size: 130 KB

-   Estimated disk space required: 1.9 MB (including tests)

-   Estimated build time: less than 0.1 SBU
:::

### at Dependencies

#### Required

An [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref}

#### Optional

[Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of at {#installation-of-at .sect2}

Before building [at]{.application}, as the `root`{.systemitem} user you should create the group and user `atd`{.systemitem} which will run the [**atd**]{.command} daemon:

``` root
groupadd -g 17 atd                                                  &&
useradd -d /dev/null -c "atd daemon" -g atd -s /bin/false -u 17 atd
```

Install [at]{.application} with the following commands:

``` userinput
./configure --with-daemon_username=atd        \
            --with-daemon_groupname=atd       \
            SENDMAIL=/usr/sbin/sendmail       \
            --with-jobdir=/var/spool/atjobs   \
            --with-atspool=/var/spool/atspool \
            --with-systemdsystemunitdir=/lib/systemd/system &&
make -j1
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install docdir=/usr/share/doc/at-3.2.5 \
             atdocdir=/usr/share/doc/at-3.2.5
```
:::

:::::: {.configuration lang="en"}
## Configuring at {#configuring-at .sect2}

::: {.sect3 lang="en"}
### []{#at-config}Config Files {#config-files .sect3}

`/etc/at.allow`{.filename} and `/etc/at.deny`{.filename} determines who can submit jobs via at or batch.
:::

::: {.sect3 lang="en"}
### Linux PAM Configuration {#linux-pam-configuration .sect3}

If [At]{.application} has been built with [Linux PAM]{.application} support, you need to create a [PAM]{.application} configuration file, to get it working correctly with BLFS.

Issue the following commands as the `root`{.systemitem} user to create the configuration file for [Linux PAM]{.application}:

``` root
cat > /etc/pam.d/atd << "EOF"
# Begin /etc/pam.d/atd

auth     required pam_unix.so
account  required pam_unix.so
password required pam_unix.so
session  required pam_unix.so

# End /etc/pam.d/atd
EOF
```
:::

::: {.sect3 lang="en"}
### []{#at-init} Systemd Unit {#systemd-unit .sect3}

To start the [**atd**]{.command} daemon at boot, enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable atd
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [at, atd, atq (symlink), atrm (symlink), atrun, and batch]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/at-3.2.5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ -------------------------------------------------------------------
  []{#at-prog}[[**at**]{.command}]{.term}    queues, examines or deletes jobs for later execution
  []{#atd}[[**atd**]{.command}]{.term}       is the daemon that runs jobs queued for later execution
  []{#atq}[[**atq**]{.command}]{.term}       lists the user's pending jobs, or all jobs, if superuser
  []{#atrm}[[**atrm**]{.command}]{.term}     deletes jobs, identified by their job number
  []{#atrun}[[**atrun**]{.command}]{.term}   runs jobs queued for later execution
  []{#batch}[[**batch**]{.command}]{.term}   is a script that executes commands when system load levels permit
  ------------------------------------------ -------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](acpid.md "acpid-2.0.34"){accesskey="p"}

    acpid-2.0.34

-   [Next](autofs.md "autofs-5.1.9"){accesskey="n"}

    autofs-5.1.9

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
