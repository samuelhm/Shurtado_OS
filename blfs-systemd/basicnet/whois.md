::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](traceroute.md "Traceroute-2.1.6"){accesskey="p"}

    Traceroute-2.1.6

-   [Next](wireshark.md "Wireshark-4.6.6"){accesskey="n"}

    Wireshark-4.6.6

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#whois}Whois-5.6.6 {#whois-5.6.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Whois {#introduction-to-whois .sect2}

[Whois]{.application} is a client-side application which queries the whois directory service for information pertaining to a particular domain name. This package will install two programs by default: [**whois**]{.command} and [**mkpasswd**]{.command}. The [**mkpasswd**]{.command} command is also installed by the expect package in LFS.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/rfc1036/whois/archive/v5.6.6/whois-5.6.6.tar.gz](https://github.com/rfc1036/whois/archive/v5.6.6/whois-5.6.6.tar.gz){.ulink}

-   Download MD5 sum: a2a62d1184603d4f32e9934c7642b0ad

-   Download size: 108 KB

-   Estimated disk space required: 2.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### Whois Dependencies

#### Optional

[libidn-1.43](../general/libidn.md "libidn-1.43"){.xref} or [libidn2-2.3.8](../general/libidn2.md "libidn2-2.3.8"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of Whois {#installation-of-whois .sect2}

Build the application with:

``` userinput
make
```

You can install the [**whois**]{.command} program, the [**mkpasswd**]{.command} program, and the locale files independently. Control your choice of what is installed with the following commands issued as the `root`{.systemitem} user:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Installing this version of [**mkpasswd**]{.command} will overwrite the same command installed in LFS.
:::

``` root
make prefix=/usr install-whois
make prefix=/usr install-mkpasswd
make prefix=/usr install-pos
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [whois and mkpasswd]{.segbody}
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

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------
  []{#whois-prog}[[**whois**]{.command}]{.term}          is a client-side application which queries the whois directory service for information pertaining to a particular domain name
  []{#mkpasswd-whois}[[**mkpasswd**]{.command}]{.term}   generates a new password, and optionally applies it to a user
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](traceroute.md "Traceroute-2.1.6"){accesskey="p"}

    Traceroute-2.1.6

-   [Next](wireshark.md "Wireshark-4.6.6"){accesskey="n"}

    Wireshark-4.6.6

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
