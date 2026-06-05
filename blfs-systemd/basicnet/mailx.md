::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 19. Mail/News Clients

-   [Prev](fetchmail.md "Fetchmail-6.6.3"){accesskey="p"}

    Fetchmail-6.6.3

-   [Next](mutt.md "Mutt-2.3.2"){accesskey="n"}

    Mutt-2.3.2

-   [Up](mailnews.md "Chapter 19. Mail/News Clients"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mailx}mailx-12.5 {#mailx-12.5 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Heirloom mailx {#introduction-to-heirloom-mailx .sect2}

The [Heirloom mailx]{.application} package (formerly known as the [Nail]{.application} package) contains [**mailx**]{.command}, a command-line Mail User Agent derived from Berkeley Mail. It is intended to provide the functionality of the POSIX [**mailx**]{.command} command with additional support for MIME messages, IMAP (including caching), POP3, SMTP, S/MIME, message threading/sorting, scoring, and filtering. [Heirloom mailx]{.application} is especially useful for writing scripts and batch processing.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/mailx/heirloom-mailx_12.5.orig.tar.gz](https://anduin.linuxfromscratch.org/BLFS/mailx/heirloom-mailx_12.5.orig.tar.gz){.ulink}

-   Download MD5 sum: 29a6033ef1412824d02eb9d9213cb1f2

-   Download size: 317 KB

-   Estimated disk space required: 3.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/heirloom-mailx-12.5-fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/heirloom-mailx-12.5-fixes-1.patch){.ulink}
:::

### Heirloom mailx Dependencies

#### Optional

[nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} (for IMAP GSSAPI authentication), and an [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref}
::::::

:::: {.installation lang="en"}
## Installation of Heirloom mailx {#installation-of-heirloom-mailx .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
:::

Install [Heirloom mailx]{.application} by running the following commands.

``` userinput
patch -Np1 -i ../heirloom-mailx-12.5-fixes-1.patch &&

sed 's@<openssl@<openssl-1.0/openssl@' \
    -i openssl.c fio.c makeconfig      &&

make -j1 LDFLAGS+="-L /usr/lib/openssl/" \
         SENDMAIL=/usr/sbin/sendmail
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make PREFIX=/usr UCBINSTALL=/usr/bin/install install &&

ln -v -sf mailx /usr/bin/mail &&
ln -v -sf mailx /usr/bin/nail &&

install -v -m755 -d     /usr/share/doc/heirloom-mailx-12.5 &&
install -v -m644 README /usr/share/doc/heirloom-mailx-12.5
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**make SENDMAIL=/usr/sbin/sendmail**]{.command}: This changes the default MTA path of sendmail to `/usr/sbin/sendmail`{.filename}, instead of using `/usr/lib/sendmail`{.filename}.

[**make PREFIX=/usr UCBINSTALL=/usr/bin/install install**]{.command}: This changes the default installation path from `/usr/local`{.filename} and the default [**install**]{.command} command path from `/usr/ucb`{.filename}.
:::

::::: {.configuration lang="en"}
## Configuring Heirloom mailx {#configuring-heirloom-mailx .sect2}

::: {.sect3 lang="en"}
### []{#mailx-config}Config Files {#config-files .sect3}

`/etc/nail.rc`{.filename} and `~/.mailrc`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

For displaying mail, [mailx]{.application} uses a pager program. Since the default of [**pg**]{.command} is not available on a LFS system, you need to specify which pager [**mailx**]{.command} is supposed to use. By default, the [**more**]{.command} and the more comfortable [**less**]{.command} commands are installed. If the `PAGER`{.envar} environment variable is not set in `/etc/profile`{.filename} or `~/.bash_profile`{.filename}, or if it should be set to another pager specifically for reading mails, it can be set system wide in `/etc/nail.rc`{.filename} as the `root`{.systemitem} user:

``` userinput
echo "set PAGER=<more|less>" >> /etc/nail.rc
```

or for the current user in `~/.mailrc`{.filename}:

``` userinput
echo "set PAGER=<more|less>" >> ~/.mailrc
```

Other interesting options to set in the config files might be EDITOR and MAILDIR.

If the default editor is not set in the environment for other packages, it can be set by running the following command as the `root`{.systemitem} user:

``` userinput
echo "set EDITOR=<vim|nano|...>" >> /etc/nail.rc
```

Depending on which kind of [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} is installed, it might be necessary to set the MAILDIR variable so that [mailx]{.application} is able to find mail as the `root`{.systemitem} user:

``` userinput
echo "set MAILDIR=Maildir" >> /etc/nail.rc
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mail, mailx and nail]{.segbody}
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

  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  []{#mailx-prog}[[**mailx**]{.command}]{.term}   is a command-line mail user agent compatible with the [**mailx**]{.command} command found on commercial UNIX variants
  []{#mail-mailx}[[**mail**]{.command}]{.term}    is a symbolic link to [**mailx**]{.command}
  []{#nail-mailx}[[**nail**]{.command}]{.term}    is a symbolic link to [**mailx**]{.command}
  ----------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](fetchmail.md "Fetchmail-6.6.3"){accesskey="p"}

    Fetchmail-6.6.3

-   [Next](mutt.md "Mutt-2.3.2"){accesskey="n"}

    Mutt-2.3.2

-   [Up](mailnews.md "Chapter 19. Mail/News Clients"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
