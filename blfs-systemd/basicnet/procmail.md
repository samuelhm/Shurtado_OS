::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 19. Mail/News Clients

-   [Prev](mutt.md "Mutt-2.3.2"){accesskey="p"}

    Mutt-2.3.2

-   [Next](othermn.md "Other Mail and News Programs"){accesskey="n"}

    Other Mail and News Programs

-   [Up](mailnews.md "Chapter 19. Mail/News Clients"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#procmail}Procmail-3.24 {#procmail-3.24 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Procmail {#introduction-to-procmail .sect2}

The [Procmail]{.application} package contains an autonomous mail processor. This is useful for filtering and sorting incoming mail.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/BuGlessRB/procmail/archive/v3.24/procmail-3.24.tar.gz](https://github.com/BuGlessRB/procmail/archive/v3.24/procmail-3.24.tar.gz){.ulink}

-   Download MD5 sum: e38b8739e5c6400e3586c5fd9810c1e0

-   Download size: 296 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/procmail-3.24-consolidated_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/procmail-3.24-consolidated_fixes-1.patch){.ulink}
:::

### Procmail Dependencies

#### Recommended

A [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} that installs sendmail

#### Optional

[libnsl-2.0.1](libnsl.md "libnsl-2.0.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of Procmail {#installation-of-procmail .sect2}

This package does not come with a test suite.

Install [Procmail]{.application} by running the following commands as the `root`{.systemitem} user:

``` root
patch -Np1 -i ../procmail-3.24-consolidated_fixes-1.patch               &&

make CC="gcc -std=gnu17" LOCKINGTEST=/tmp MANDIR=/usr/share/man install &&
make install-suid
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**make LOCKINGTEST=/tmp install**]{.command}: This prevents [**make**]{.command} from asking you where to test file-locking patterns.

[**CC="gcc -std=gnu17"**]{.command}: This sets the C standard to C17 because this package is not compatible with C23, and no fixes are readily available.

[**make install-suid**]{.command}: Modifies permissions of the installed files.
:::

::::: {.configuration lang="en"}
## Configuring Procmail {#configuring-procmail .sect2}

::: {.sect3 lang="en"}
### []{#procmail-config}Config Files {#config-files .sect3}

`/etc/procmailrc`{.filename} and `~/.procmailrc`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Recipes have to be written and placed in `~/.procmailrc`{.filename} for execution. The procmailex man page is the starting place to learn how to write recipes. For additional information, see also [https://pm-doc.sourceforge.net/](https://pm-doc.sourceforge.net/){.ulink}.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [formail, lockfile, mailstat and procmail]{.segbody}
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

  ----------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------
  []{#formail}[[**formail**]{.command}]{.term}          is a filter that can be used to format mail into mailbox format
  []{#lockfile}[[**lockfile**]{.command}]{.term}        is a utility that can lock a file for single use interactively or in a script
  []{#mailstat}[[**mailstat**]{.command}]{.term}        prints a summary report of mail that has been filtered by [**procmail**]{.command} since the last time [**mailstat**]{.command} was ran
  []{#procmail-prog}[[**procmail**]{.command}]{.term}   is an autonomous mail processor. It performs all the functions of an MDA (Mail Delivery Agent)
  ----------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](mutt.md "Mutt-2.3.2"){accesskey="p"}

    Mutt-2.3.2

-   [Next](othermn.md "Other Mail and News Programs"){accesskey="n"}

    Other Mail and News Programs

-   [Up](mailnews.md "Chapter 19. Mail/News Clients"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
