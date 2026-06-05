::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 19. Mail/News Clients

-   [Prev](mailx.md "mailx-12.5"){accesskey="p"}

    mailx-12.5

-   [Next](procmail.md "Procmail-3.24"){accesskey="n"}

    Procmail-3.24

-   [Up](mailnews.md "Chapter 19. Mail/News Clients"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mutt}Mutt-2.3.2 {#mutt-2.3.2 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Mutt {#introduction-to-mutt .sect2}

The [Mutt]{.application} package contains a Mail User Agent. This is useful for reading, writing, replying to, saving, and deleting your email.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://ftp.mutt.org/pub/mutt/mutt-2.3.2.tar.gz](http://ftp.mutt.org/pub/mutt/mutt-2.3.2.tar.gz){.ulink}

-   Download MD5 sum: 50f395705c3da65d4592119e982a7a23

-   Download size: 5.3 MB

-   Estimated disk space required: 39 MB

-   Estimated build time: 0.2 SBU
:::

### Mutt Dependencies

#### Recommended (for a text version of the manual)

[Lynx-2.9.3](lynx.md "Lynx-2.9.3"){.xref}, or [Links-2.30](links.md "Links-2.30"){.xref} (or [W3m](https://w3m.sourceforge.net/){.ulink}, or [ELinks](http://elinks.or.cz){.ulink}) - please read the Note.

#### Optional

[Aspell-0.60.8.2](../general/aspell.md "Aspell-0.60.8.2"){.xref}, [Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref}, [GDB-17.2](../general/gdb.md "GDB-17.2"){.xref}, [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [gpgme-2.1.0](../postlfs/gpgme.md "gpgme-2.1.0"){.xref}, [libidn-1.43](../general/libidn.md "libidn-1.43"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, an [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} (that provides a [**sendmail**]{.command} command), [slang-2.3.3](../general/slang.md "slang-2.3.3"){.xref}, [libgssapi](http://www.citi.umich.edu/projects/nfsv4/linux/){.ulink}, [Mixmaster](https://mixmaster.sourceforge.net/){.ulink}, [QDBM](https://dbmx.net/qdbm/){.ulink} or [Tokyo Cabinet](https://dbmx.net/tokyocabinet/){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/mutt](https://wiki.linuxfromscratch.org/blfs/wiki/mutt){.ulink}
:::::

::::: {.installation lang="en"}
## Installation of Mutt {#installation-of-mutt .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[Mutt]{.application} ships with an HTML version of its manual, but the text version is no longer provided because differences in the formatting from different text browsers compared to the shipped version caused complaints. To get a text file, the following are used in order of preference: [lynx]{.application} with overstriking (backspaces) for emphasis, [w3m]{.application} or [elinks]{.application}: the latter two apparently provide plain text. Plain text is generally preferred unless reading the HTML manual, so the instructions below use [lynx]{.application} if available, or else [links]{.application} to produce plain text.
:::

[Mutt]{.application} requires a group named `mail`{.systemitem}. You can add this group, if it does not exist, with this command (as the `root`{.systemitem} user):

``` userinput
groupadd -g 34 mail
```

If you did not install an [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref}, you need to modify the ownership of `/var/mail`{.filename} with this command:

``` root
chgrp -v mail /var/mail
```

Install [Mutt]{.application} by running the following commands:

To ensure that a plain text manual is created when using [lynx]{.application} or to otherwise use [links]{.application} to produce it (instead of [elinks]{.application}), run the following command:

``` userinput
sed  -e 's/ -with_backspaces//' \
     -e 's/elinks/links/'       \
     -e 's/-no-numbering -no-references//' \
     -i doc/Makefile.in
```

Now configure and build the application:

``` userinput
./configure --prefix=/usr                           \
            --sysconfdir=/etc                       \
            --with-docdir=/usr/share/doc/mutt-2.3.2 \
            --with-ssl                              \
            --enable-external-dotlock               \
            --enable-pop                            \
            --enable-imap                           \
            --enable-hcache                         \
            --enable-sidebar                        &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you used a DESTDIR method to only install to a temporary location as a regular user (as part of a package management process), you will need to run the following as the `root`{.systemitem} user after completing the real install:

``` userinput
chown root:mail /usr/bin/mutt_dotlock &&
chmod -v 2755 /usr/bin/mutt_dotlock
```

An info file is now installed, so you will also need to recreate the `/usr/share/info/dir`{.filename} as described when [Texinfo]{.application} was installed in LFS.
:::
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... -e 's/ -with_backspaces//' ...**]{.command}: This turns off the backspaces used for overstriking when [lynx]{.application} is used, resulting in readable plain text when using [**view**]{.command}.

[**sed ... -e 's/elinks/links/' ...**]{.command}: This allows [**links**]{.command} to be run instead of [**elinks**]{.command} which is not in the book.

[**sed ... -e 's/-no-numbering -no-references//' ...**]{.command}: This removes switches which are not understood by [**links**]{.command}.

*`--enable-external-dotlock`*: In some circumstances the mutt-dotlock program is not created. This switch ensures it is always created.

*`--enable-pop`*: This switch enables POP3 support.

*`--enable-imap`*: This switch enables IMAP support.

*`--enable-hcache`*: This switch enables header caching.

*`--enable-sidebar`*: This switch enables support for the sidebar (a list of mailboxes). It is off by default, but can be turned on by [**:set sidebar_visible**]{.command} in mutt (and off again with ':unset'), or it can be enabled in `~/.muttrc`{.filename}.

*`--with-ssl`*: This parameter adds SSL/TLS support from openssl in POP3/IMAP/SMTP.

`--enable-autocrypt --with-sqlite3`{.option}: These two switches add support for passive protection against data collection, using gnupg and gpgme (gpgme is enabled by autocrypt). See [The Manual](http://www.mutt.org/doc/manual/#autocryptdoc){.ulink}.

`--enable-gpgme`{.option}: This switch enables GPG support through the GPGME package. Use this switch if you want GPG support in Mutt.

`--enable-smtp`{.option}: This switch enables SMTP relay support.

`--with-idn2`{.option}: Use this parameter if both libidn and libidn2 have been installed, and you wish to use libidn2 here.

`--with-sasl`{.option}: This parameter adds authentication support from [Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref} in POP3/IMAP/SMTP if they are enabled. Depending on the server configuration, this may not be needed for POP3 or IMAP. However, it is needed for SMTP authentication.

`--with-gss`{.option}: This parameter adds authentication support for Kerberos. If you need to use this support, make sure that [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} is installed and configured correctly, and then use this option while building this package.
:::

::::: {.configuration lang="en"}
## Configuring Mutt {#configuring-mutt .sect2}

::: {.sect3 lang="en"}
### []{#mutt-config}Config Files {#config-files .sect3}

`/etc/Muttrc`{.filename}, `~/.muttrc`{.filename}, `/etc/mime.types`{.filename}, and `~/.mime.types`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

No changes in these files are necessary to begin using [Mutt]{.application}. When you are ready to make changes, the man page for `muttrc`{.filename} is a good starting place.

In order to utilize [GnuPG]{.application}, use the following command:

``` userinput
cat /usr/share/doc/mutt-2.3.2/samples/gpg.rc >> ~/.muttrc
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [flea, mutt, mutt_dotlock, muttbug, pgpewrap, mutt_pgpring, and smime_keys]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/mutt-2.3.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#flea}[[**flea**]{.command}]{.term}                   is a script showing where to report bugs
  []{#mutt-prog}[[**mutt**]{.command}]{.term}              is a Mail User Agent (MUA) which enables you to read, write and delete your email
  []{#mutt_dotlock}[[**mutt_dotlock**]{.command}]{.term}   implements the mail spool file lock
  []{#muttbug}[[**muttbug**]{.command}]{.term}             is a script identical to [**flea**]{.command}
  []{#pgpewrap}[[**pgpewrap**]{.command}]{.term}           prepares a command line for the [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref} utilities
  []{#mutt_pgpring}[[**pgpring**]{.command}]{.term}        is a key ring dumper for [PGP](https://www.openpgp.org/about/){.ulink}. It is not needed for [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref}
  []{#smime_keys}[[**smime_keys**]{.command}]{.term}       manages a keystore for S/MIME certificates
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](mailx.md "mailx-12.5"){accesskey="p"}

    mailx-12.5

-   [Next](procmail.md "Procmail-3.24"){accesskey="n"}

    Procmail-3.24

-   [Up](mailnews.md "Chapter 19. Mail/News Clients"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
