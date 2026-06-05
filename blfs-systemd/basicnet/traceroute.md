::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](nmap.md "Nmap-7.99"){accesskey="p"}

    Nmap-7.99

-   [Next](whois.md "Whois-5.6.6"){accesskey="n"}

    Whois-5.6.6

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#traceroute}Traceroute-2.1.6 {#traceroute-2.1.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Traceroute {#introduction-to-traceroute .sect2}

The [Traceroute]{.application} package contains a program which is used to display the network route that packets take to reach a specified host. This is a standard network troubleshooting tool. If you find yourself unable to connect to another system, traceroute can help pinpoint the problem.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package overwrites the version of [**traceroute**]{.command} that was installed in the inetutils package in LFS. This version is more powerful and allows many more options than the standard version.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/traceroute/traceroute-2.1.6.tar.gz](https://downloads.sourceforge.net/traceroute/traceroute-2.1.6.tar.gz){.ulink}

-   Download MD5 sum: 94b41044978f4f57c373adc5a32c42d7

-   Download size: 76 KB

-   Estimated disk space required: 624 KB

-   Estimated build time: less than 0.1 SBU
:::
::::::

::: {.installation lang="en"}
## Installation of Traceroute {#installation-of-traceroute .sect2}

Install [Traceroute]{.application} by running the following commands:

``` userinput
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make prefix=/usr install                                 &&
ln -sv -f traceroute /usr/bin/traceroute6                &&
ln -sv -f traceroute.8 /usr/share/man/man8/traceroute6.8 &&
rm -fv /usr/share/man/man1/traceroute.1
```

The traceroute.1 file that was installed in LFS by inetutils is no longer relevant. This package overwrites that version of traceroute and installs the man page in man chapter 8.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [traceroute and traceroute6 (symlink)]{.segbody}
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

  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#traceroute-prog}[[**traceroute**]{.command}]{.term}     does basically what it says: it traces the route your packets take from the host you are working on to another host on a network, showing all the intermediate hops (gateways) along the way
  []{#traceroute6-prog}[[**traceroute6**]{.command}]{.term}   is equivalent to [**traceroute -6**]{.command}
  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](nmap.md "Nmap-7.99"){accesskey="p"}

    Nmap-7.99

-   [Next](whois.md "Whois-5.6.6"){accesskey="n"}

    Whois-5.6.6

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
