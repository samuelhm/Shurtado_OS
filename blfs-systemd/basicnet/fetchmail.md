<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 19. Mail/News Clients

-   [Prev](mailnews.md "Mail/News Clients")

    Mail/News Clients

-   [Next](mailx.md "mailx-12.5")

    mailx-12.5

-   [Up](mailnews.md "Chapter 19. Mail/News Clients")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Fetchmail-6.6.3 {#fetchmail-6.6.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Fetchmail {#introduction-to-fetchmail}

The <span class="application">Fetchmail</span> package contains a mail retrieval program. It retrieves mail from remote mail servers and forwards it to the local (client) machine's delivery system, so it can then be read by normal mail user agents.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/fetchmail/fetchmail-6.6.3.tar.xz">https://downloads.sourceforge.net/fetchmail/fetchmail-6.6.3.tar.xz</a>

-   Download MD5 sum: 1fad271c983d20663eded9e80fe678ab

-   Download size: 1.0 MB

-   Estimated disk space required: 12 MB including tests

-   Estimated build time: 0.1 SBU (including tests)
</div>

### Fetchmail Dependencies

#### Recommended

a local MDA (<a class="xref" href="procmail.md" title="Procmail-3.24">Procmail-3.24</a>)

#### Optional

<a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>

#### Optional (for running fetchmailconf)

<a class="xref" href="../general/python3.md" title="Python-3.14.5">Python-3.14.5</a> (built after <a class="xref" href="../general/tk.md" title="Tk-8.6.18">Tk-8.6.18</a>)
</div>

<div class="installation" lang="en">
## Installation of Fetchmail {#installation-of-fetchmail}

Create a dedicated user for the fetchmail program. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
useradd -c "Fetchmail User" -d /dev/null -g nogroup \
        -s /bin/false -u 38 fetchmail
```

Install <span class="application">Fetchmail</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
chown -v fetchmail:nogroup /usr/bin/fetchmail
```
</div>

<div class="configuration" lang="en">
## Configuring Fetchmail {#configuring-fetchmail}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.fetchmailrc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are connecting to a mailserver that supports SSL/TLS-wrapped or "implicit" mode on a dedicated port (default 993) you should use <span class="command"><strong>fetchmail --ssl</strong></span> or add the option 'ssl' in an rcfile.
</div>

```bash
cat > ~/.fetchmailrc << "EOF"

# The logfile needs to exist when fetchmail is invoked, otherwise it will
# dump the details to the screen. As with all logs, you will need to rotate
# or clear it from time to time.
set logfile fetchmail.log
set no bouncemail
# You probably want to set your local username as the postmaster
set postmaster <username>

poll SERVERNAME :
    user <isp_username> pass <password>;
    mda "/usr/bin/procmail -f %F -d %T";
EOF

touch ~/fetchmail.log       &&
chmod -v 0600 ~/.fetchmailrc
```

This is an example configuration that should suffice for most people. You can add as many users and servers as you need using the same syntax.

<span class="command"><strong>man fetchmail</strong></span>: Look for the section near the bottom named <span class="emphasis"><em>CONFIGURATION EXAMPLES</em></span>. It gives some quick examples. There are countless other configuration options once you get used to it.

If you expect to receive very little mail you can invoke fetchmail when you wish to receive any incoming mail. More commonly, it is either invoked in daemon mode with the <code class="literal">-d</code> option either on the command line, or in <code class="filename">.fetchmailrc</code> (see 'DAEMON MODE' in man fetchmailconf), or alternatively it is invoked from a cron job.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fetchmail and fetchmailconf</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="fetchmail-prog"></a><span class="command"><span class="term"><strong>fetchmail</strong></span></span>      when executed as a user, this will source <code class="filename">~/.fetchmailrc</code> and download the appropriate mail
  <a id="fetchmailconf"></a><span class="command"><span class="term"><strong>fetchmailconf</strong></span></span>   is intended to assist you in setting up and editing a <code class="filename">~/.fetchmailrc</code> configuration file, by using a <span class="application">Tk</span> GUI interface. It is written for <span class="application">Python</span> and uses the Tkinter module
  ---------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mailnews.md "Mail/News Clients")

    Mail/News Clients

-   [Next](mailx.md "mailx-12.5")

    mailx-12.5

-   [Up](mailnews.md "Chapter 19. Mail/News Clients")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
