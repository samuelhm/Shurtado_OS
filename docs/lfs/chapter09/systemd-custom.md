::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 9. System Configuration

-   [Prev](etcshells.md "Creating the /etc/shells File"){accesskey="p"}

    Creating the /etc/shells File

-   [Next](../chapter10/chapter10.md "Making the LFS System Bootable"){accesskey="n"}

    Making the LFS System Bootable

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-config-systemd-custom}9.10. Systemd Usage and Configuration {#systemd-usage-and-configuration .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::: {.sect2 lang="en"}
## 9.10.1. Basic Configuration {#basic-configuration .sect2}

The `/etc/systemd/system.conf`{.filename} file contains a set of options to control basic systemd operations. The default file has all entries commented out with the default settings indicated. This file is where the log level may be changed as well as some basic logging settings. See the [systemd-system.conf(5)](https://man.archlinux.org/man/systemd-system.conf.5){.ulink} manual page for details on each configuration option.
:::

::: {.sect2 lang="en"}
## 9.10.2. Disabling Screen Clearing at Boot Time {#disabling-screen-clearing-at-boot-time .sect2}

The normal behavior for systemd is to clear the screen at the end of the boot sequence. If desired, this behavior may be changed by running the following command:

``` userinput
mkdir -pv /etc/systemd/system/getty@tty1.service.d

cat > /etc/systemd/system/getty@tty1.service.d/noclear.conf << EOF
[Service]
TTYVTDisallocate=no
EOF
```

The boot messages can always be reviewed by using the **`journalctl -b`** command as the `root`{.systemitem} user.
:::

:::: {.sect2 lang="en"}
## []{#systemd-no-tmpfs}9.10.3. Disabling tmpfs for /tmp {#disabling-tmpfs-for-tmp .sect2}

By default, `/tmp`{.filename} is created as a tmpfs. If this is not desired, it can be overridden by executing the following command:

``` userinput
ln -sfv /dev/null /etc/systemd/system/tmp.mount
```

Alternatively, if a separate partition for `/tmp`{.filename} is desired, specify that partition in a `/etc/fstab`{.filename} entry.

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Do not create the symbolic link above if a separate partition is used for `/tmp`{.filename}. This will prevent the root file system (/) from being remounted r/w and make the system unusable when booted.
:::
::::

:::: {.sect2 lang="en"}
## 9.10.4. Configuring Automatic File Creation and Deletion {#configuring-automatic-file-creation-and-deletion .sect2}

There are several services that create or delete files or directories:

::: itemizedlist
-   systemd-tmpfiles-clean.service

-   systemd-tmpfiles-setup-dev.service

-   systemd-tmpfiles-setup.service
:::

The system location for the configuration files is `/usr/lib/tmpfiles.d/*.conf`{.filename}. The local configuration files are in `/etc/tmpfiles.d`{.filename}. Files in `/etc/tmpfiles.d`{.filename} override files with the same name in `/usr/lib/tmpfiles.d`{.filename}. See [tmpfiles.d(5)](https://man.archlinux.org/man/tmpfiles.d.5){.ulink} manual page for file format details.

Note that the syntax for the `/usr/lib/tmpfiles.d/*.conf`{.filename} files can be confusing. For example, the default deletion of files in the /tmp directory is located in `/usr/lib/tmpfiles.d/tmp.conf`{.filename} with the line:

``` screen
q /tmp 1777 root root 10d
```

The type field, q, indicates the creation of a subvolume with quotas which is really only applicable to btrfs filesystems. It references type v which in turn references type d (directory). This then creates the specified directory if it is not present and adjusts the permissions and ownership as specified. Contents of the directory will be subject to time based cleanup if the age argument is specified.

If the default parameters are not desired, then the file should be copied to `/etc/tmpfiles.d`{.filename} and edited as desired. For example:

``` userinput
mkdir -p /etc/tmpfiles.d
cp /usr/lib/tmpfiles.d/tmp.conf /etc/tmpfiles.d
```
::::

::: {.sect2 lang="en"}
## 9.10.5. Overriding Default Services Behavior {#overriding-default-services-behavior .sect2}

The parameters of a unit can be overridden by creating a directory and a configuration file in `/etc/systemd/system`{.filename}. For example:

``` userinput
mkdir -pv /etc/systemd/system/foobar.service.d

cat > /etc/systemd/system/foobar.service.d/foobar.conf << EOF
[Service]
Restart=always
RestartSec=30
EOF
```

See [systemd.unit(5)](https://man.archlinux.org/man/systemd.unit.5){.ulink} manual page for more information. After creating the configuration file, run **`systemctl daemon-reload`** and **`systemctl restart foobar`** to activate the changes to a service.
:::

:::: {.sect2 lang="en"}
## 9.10.6. Debugging the Boot Sequence {#debugging-the-boot-sequence .sect2}

Rather than plain shell scripts used in SysVinit or BSD style init systems, systemd uses a unified format for different types of startup files (or units). The command [**systemctl**]{.command} is used to enable, disable, control state, and obtain status of unit files. Here are some examples of frequently used commands:

::: itemizedlist
-   [**systemctl list-units -t *`<service>`* \[\--all\]**]{.command}: lists loaded unit files of type service.

-   [**systemctl list-units -t *`<target>`* \[\--all\]**]{.command}: lists loaded unit files of type target.

-   [**systemctl show -p Wants *`<multi-user.target>`***]{.command}: shows all units that depend on the multi-user target. Targets are special unit files that are analogous to runlevels under SysVinit.

-   [**systemctl status *`<servicename.service>`***]{.command}: shows the status of the servicename service. The .service extension can be omitted if there are no other unit files with the same name, such as .socket files (which create a listening socket that provides similar functionality to inetd/xinetd).
:::
::::

:::: {.sect2 lang="en"}
## 9.10.7. Working with the Systemd Journal {#working-with-the-systemd-journal .sect2}

Logging on a system booted with systemd is handled with systemd-journald (by default), rather than a typical unix syslog daemon. You can also add a normal syslog daemon and have both operate side by side if desired. The systemd-journald program stores journal entries in a binary format rather than a plain text log file. To assist with parsing the file, the command [**journalctl**]{.command} is provided. Here are some examples of frequently used commands:

::: itemizedlist
-   [**journalctl -r**]{.command}: shows all contents of the journal in reverse chronological order.

-   [**journalctl -u *`UNIT`***]{.command}: shows the journal entries associated with the specified UNIT file.

-   [**journalctl -b\[=ID\] -r**]{.command}: shows the journal entries since last successful boot (or for boot ID) in reverse chronological order.

-   [**journalctl -f**]{.command}: provides functionality similar to tail -f (follow).
:::
::::

:::: {.sect2 lang="en"}
## 9.10.8. Working with Core Dumps {#working-with-core-dumps .sect2}

Core dumps are useful to debug crashed programs, especially when a daemon process crashes. On systemd booted systems the core dumping is handled by [**systemd-coredump**]{.command}. It will log the core dump in the journal and store the core dump itself in `/var/lib/systemd/coredump`{.filename}. To retrieve and process core dumps, the [**coredumpctl**]{.command} tool is provided. Here are some examples of frequently used commands:

::: itemizedlist
-   [**coredumpctl -r**]{.command}: lists all core dumps in reverse chronological order.

-   [**coredumpctl -1 info**]{.command}: shows the information from the last core dump.

-   [**coredumpctl -1 debug**]{.command}: loads the last core dump into [GDB](https://www.linuxfromscratch.org/blfs/view/systemd/general/gdb.html){.ulink}.
:::

Core dumps may use a lot of disk space. The maximum disk space used by core dumps can be limited by creating a configuration file in `/etc/systemd/coredump.conf.d`{.filename}. For example:

``` userinput
mkdir -pv /etc/systemd/coredump.conf.d

cat > /etc/systemd/coredump.conf.d/maxuse.conf << EOF
[Coredump]
MaxUse=5G
EOF
```

See the [systemd-coredump(8)](https://man.archlinux.org/man/systemd-coredump.8){.ulink}, [coredumpctl(1)](https://man.archlinux.org/man/coredumpctl.1){.ulink}, and [coredump.conf.d(5)](https://man.archlinux.org/man/coredump.conf.d.5){.ulink} manual pages for more information.
::::

:::: {.sect2 lang="en"}
## 9.10.9. Long Running Processes {#long-running-processes .sect2}

Beginning with systemd-230, all user processes are killed when a user session is ended, even if nohup is used, or the process uses the `daemon()`{.function} or `setsid()`{.function} functions. This is a deliberate change from a historically permissive environment to a more restrictive one. The new behavior may cause issues if you depend on long running programs (e.g., [**screen**]{.command} or [**tmux**]{.command}) to remain active after ending your user session. There are three ways to enable lingering processes to remain after a user session is ended.

::: itemizedlist
-   [*Enable process lingering for only selected users*]{.emphasis}: Normal users have permission to enable process lingering with the command [**loginctl enable-linger**]{.command} for their own user. System administrators can use the same command with a *`user`* argument to enable for a user. That user can then use the [**systemd-run**]{.command} command to start long running processes. For example: [**systemd-run \--scope \--user /usr/bin/screen**]{.command}. If you enable lingering for your user, the user@.service will remain even after all login sessions are closed, and will automatically start at system boot. This has the advantage of explicitly allowing and disallowing processes to run after the user session has ended, but breaks backwards compatibility with tools like [**nohup**]{.command} and utilities that use `daemon()`{.function}.

-   [*Enable system-wide process lingering*]{.emphasis}: You can set *`KillUserProcesses=no`* in `/etc/systemd/logind.conf`{.filename} to enable process lingering globally for all users. This has the benefit of leaving the old method available to all users at the expense of explicit control.

-   [*Disable at build-time*]{.emphasis}: You can disable lingering by default while building systemd by adding the switch *`-D default-kill-user-processes=false`* to the [**meson**]{.command} command for systemd. This completely disables the ability of systemd to kill user processes at session end.
:::
::::
::::::::::::::::::

::: navfooter
-   [Prev](etcshells.md "Creating the /etc/shells File"){accesskey="p"}

    Creating the /etc/shells File

-   [Next](../chapter10/chapter10.md "Making the LFS System Bootable"){accesskey="n"}

    Making the LFS System Bootable

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
