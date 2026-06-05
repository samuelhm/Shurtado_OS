<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](lsb-tools.md "LSB-Tools-0.12")

    LSB-Tools-0.12

-   [Next](mc.md "MC-4.8.33")

    MC-4.8.33

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Logrotate-3.22.0 {#logrotate-3.22.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Logrotate {#introduction-to-logrotate}

The <span class="application">logrotate</span> package allows automatic rotation, compression, removal, and mailing of log files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/logrotate/logrotate/releases/download/3.22.0/logrotate-3.22.0.tar.xz">https://github.com/logrotate/logrotate/releases/download/3.22.0/logrotate-3.22.0.tar.xz</a>

-   Download MD5 sum: 2386501a53ff086f44eeada2b27d50b8

-   Download size: 172 KB

-   Estimated disk space required: 2.6 MB (add 38 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.1 SBU for tests)
</div>

### Logrotate Dependencies

#### Required

<a class="xref" href="popt.md" title="Popt-1.19">popt-1.19</a>

#### Optional

An <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of Logrotate {#installation-of-logrotate}

Install <span class="application">logrotate</span> by running the following command:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>. Two tests fail if an MTA is not installed.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="configuration" lang="en">
## Configuring Logrotate {#configuring-logrotate}

<span class="application">Logrotate</span> needs a configuration file, which must be passed as an argument to the command when executed. Create the file as the <code class="systemitem">root</code> user:

```bash
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

Now create the <code class="filename">/etc/logrotate.d</code> directory as the <code class="systemitem">root</code> user:

```bash
mkdir -p /etc/logrotate.d
```

At this point additional log rotation commands can be entered, typically in the <code class="filename">/etc/logrotate.d</code> directory. For example:

```bash
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

```bash
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

You can use in the same line the list of files: file1 file2 file3. See the logrotate man page or <a class="ulink" href="https://www.techrepublic.com/article/manage-linux-log-files-with-logrotate/">https://www.techrepublic.com/article/manage-linux-log-files-with-logrotate/</a> for more examples.

The command <span class="command"><strong>logrotate /etc/logrotate.conf</strong></span> can be run manually, however, the command should be run daily. Other useful commands are <span class="command"><strong>logrotate -d /etc/logrotate.conf</strong></span> for debugging purposes and <span class="command"><strong>logrotate -f /etc/logrotate.conf</strong></span> forcing the logrotate commands to be run immediately. Combining the previous options <code class="option">-df</code>, you can debug the effect of the force command. When debugging, the commands are only simulated and are not actually run. As a result, errors about files not existing will eventually appear because the files are not actually created.

To run the <span class="command"><strong>logrotate</strong></span> command daily, <span class="phrase">execute</span> the following commands, as the <code class="systemitem">root</code> user, to create a <span class="phrase">systemd timer to run daily at 3:00 A.M. (local time):</span>

```bash
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
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">logrotate</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- ---------------------------------------------------------------------------
  <a id="logrotate-prog"></a><span class="command"><span class="term"><strong>logrotate</strong></span></span>   performs the log maintenance functions defined in the configuration files
  ------------------------------------------------------- ---------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lsb-tools.md "LSB-Tools-0.12")

    LSB-Tools-0.12

-   [Next](mc.md "MC-4.8.33")

    MC-4.8.33

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
