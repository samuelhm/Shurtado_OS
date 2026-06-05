::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](notification-daemon.md "notification-daemon-3.20.0"){accesskey="p"}

    notification-daemon-3.20.0

-   [Next](pm-utils.md "pm-utils-1.4.1"){accesskey="n"}

    pm-utils-1.4.1

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pax}Pax-20240817 {#pax-20240817 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Pax {#introduction-to-pax .sect2}

[pax]{.application} is an archiving utility created by POSIX and defined by the POSIX.1-2001 standard. Rather than sort out the incompatible options that have crept up between [tar]{.application} and [cpio]{.application}, along with their implementations across various versions of UNIX, the IEEE designed a new archive utility. The name [“[pax]{.quote}”]{.quote} is an acronym for portable archive exchange. Furthermore, [“[pax]{.quote}”]{.quote} means [“[peace]{.quote}”]{.quote} in Latin, so its name implies that it shall create peace between the [tar]{.application} and [cpio]{.application} format supporters. The command invocation and command structure is somewhat a unification of both [tar]{.application} and [cpio]{.application}.

[pax]{.application} has been required to be present in LSB conformant systems since LSB version 3.0.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://www.mirbsd.org/MirOS/dist/mir/cpio/paxmirabilis-20240817.tgz](http://www.mirbsd.org/MirOS/dist/mir/cpio/paxmirabilis-20240817.tgz){.ulink}

-   Download MD5 sum: 9a723154a4201a0892b7ff815b6753b5

-   Download size: 180 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::::: {.installation lang="en"}
## Installation of Pax {#installation-of-pax .sect2}

Install pax by running the following commands:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package expands to the directory [*pax*]{.emphasis}.
:::

``` userinput
bash Build.sh
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package also creates hard links from [**pax**]{.command} to the programs [**cpio**]{.command} and [**tar**]{.command} in the build directory. The LFS editors do not recommend that they be installed as they will overwrite the GNU versions of these programs.
:::

``` root
install -v pax /usr/bin &&
install -v -m644 pax.1 /usr/share/man/man1
```
:::::

::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Program:** [pax]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------- ------------------------------------------------------
  []{#pax-prog}[[**pax**]{.command}]{.term}   copies files to and from archives in several formats
  ------------------------------------------- ------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](notification-daemon.md "notification-daemon-3.20.0"){accesskey="p"}

    notification-daemon-3.20.0

-   [Next](pm-utils.md "pm-utils-1.4.1"){accesskey="n"}

    pm-utils-1.4.1

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
