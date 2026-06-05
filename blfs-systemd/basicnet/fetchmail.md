::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 19. Mail/News Clients

-   [Prev](mailnews.md "Mail/News Clients"){accesskey="p"}

    Mail/News Clients

-   [Next](mailx.md "mailx-12.5"){accesskey="n"}

    mailx-12.5

-   [Up](mailnews.md "Chapter 19. Mail/News Clients"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fetchmail}Fetchmail-6.6.3 {#fetchmail-6.6.3 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Fetchmail {#introduction-to-fetchmail .sect2}

The [Fetchmail]{.application} package contains a mail retrieval program. It retrieves mail from remote mail servers and forwards it to the local (client) machine's delivery system, so it can then be read by normal mail user agents.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/fetchmail/fetchmail-6.6.3.tar.xz](https://downloads.sourceforge.net/fetchmail/fetchmail-6.6.3.tar.xz){.ulink}

-   Download MD5 sum: 1fad271c983d20663eded9e80fe678ab

-   Download size: 1.0 MB

-   Estimated disk space required: 12 MB including tests

-   Estimated build time: 0.1 SBU (including tests)
:::

### Fetchmail Dependencies

#### Recommended

a local MDA ([Procmail-3.24](procmail.md "Procmail-3.24"){.xref})

#### Optional

[MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}

#### Optional (for running fetchmailconf)

[Python-3.14.5](../general/python3.md "Python-3.14.5"){.xref} (built after [Tk-8.6.18](../general/tk.md "Tk-8.6.18"){.xref})
:::::

::: {.installation lang="en"}
## Installation of Fetchmail {#installation-of-fetchmail .sect2}

Create a dedicated user for the fetchmail program. Issue the following commands as the `root`{.systemitem} user:

``` root
useradd -c "Fetchmail User" -d /dev/null -g nogroup \
        -s /bin/false -u 38 fetchmail
```

Install [Fetchmail]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
chown -v fetchmail:nogroup /usr/bin/fetchmail
```
:::

:::::: {.configuration lang="en"}
## Configuring Fetchmail {#configuring-fetchmail .sect2}

::: {.sect3 lang="en"}
### []{#fetchmail-config}Config Files {#config-files .sect3}

`~/.fetchmailrc`{.filename}
:::

:::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are connecting to a mailserver that supports SSL/TLS-wrapped or "implicit" mode on a dedicated port (default 993) you should use [**fetchmail --ssl**]{.command} or add the option 'ssl' in an rcfile.
:::

``` userinput
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

[**man fetchmail**]{.command}: Look for the section near the bottom named [*CONFIGURATION EXAMPLES*]{.emphasis}. It gives some quick examples. There are countless other configuration options once you get used to it.

If you expect to receive very little mail you can invoke fetchmail when you wish to receive any incoming mail. More commonly, it is either invoked in daemon mode with the `-d`{.literal} option either on the command line, or in `.fetchmailrc`{.filename} (see 'DAEMON MODE' in man fetchmailconf), or alternatively it is invoked from a cron job.
::::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fetchmail and fetchmailconf]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#fetchmail-prog}[[**fetchmail**]{.command}]{.term}      when executed as a user, this will source `~/.fetchmailrc`{.filename} and download the appropriate mail
  []{#fetchmailconf}[[**fetchmailconf**]{.command}]{.term}   is intended to assist you in setting up and editing a `~/.fetchmailrc`{.filename} configuration file, by using a [Tk]{.application} GUI interface. It is written for [Python]{.application} and uses the Tkinter module
  ---------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](mailnews.md "Mail/News Clients"){accesskey="p"}

    Mail/News Clients

-   [Next](mailx.md "mailx-12.5"){accesskey="n"}

    mailx-12.5

-   [Up](mailnews.md "Chapter 19. Mail/News Clients"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
