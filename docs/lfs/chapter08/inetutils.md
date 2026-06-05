::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](expat.md "Expat-2.8.1"){accesskey="p"}

    Expat-2.8.1

-   [Next](less.md "Less-702"){accesskey="n"}

    Less-702

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-inetutils}8.42. Inetutils-2.8 {#inetutils-2.8 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Inetutils package contains programs for basic networking.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.3 SBU]{.segbody}
:::

::: seg
**Required disk space:** [38 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.42.1. Installation of Inetutils {#installation-of-inetutils .sect2}

First, make the package build with gcc-14.1 or later:

``` userinput
sed -i 's/def HAVE_TERMCAP_TGETENT/ 1/' telnet/telnet.c
```

Prepare Inetutils for compilation:

``` userinput
./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers
```

::: variablelist
**The meaning of the configure options:**

[*`--disable-logger`*]{.term}

:   This option prevents Inetutils from installing the [**logger**]{.command} program, which is used by scripts to pass messages to the System Log Daemon. Do not install it because Util-linux installs a more recent version.

[*`--disable-whois`*]{.term}

:   This option disables the building of the Inetutils [**whois**]{.command} client, which is out of date. Instructions for a better [**whois**]{.command} client are in the BLFS book.

[*`--disable-r*`*]{.term}

:   These parameters disable building obsolete programs that should not be used due to security issues. The functions provided by these programs can be provided by the [openssh]{.application} package in the BLFS book.

[*`--disable-servers`*]{.term}

:   This disables the installation of the various network servers included as part of the Inetutils package. These servers are deemed not appropriate in a basic LFS system. Some are insecure by nature and are only considered safe on trusted networks. Note that better replacements are available for many of these servers.
:::

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```

Move a program to the proper location:

``` userinput
mv -v /usr/{,s}bin/ifconfig
```
::::

::::::: {.content lang="en"}
## []{#contents-inetutils}8.42.2. Contents of Inetutils {#contents-of-inetutils .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed programs:** [dnsdomainname, ftp, ifconfig, hostname, ping, ping6, talk, telnet, tftp, and traceroute]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#dnsdomainname}[[**dnsdomainname**]{.command}]{.term}   Show the system\'s DNS domain name
  []{#ftp}[[**ftp**]{.command}]{.term}                       Is the file transfer protocol program
  []{#hostname}[[**hostname**]{.command}]{.term}             Reports or sets the name of the host
  []{#ifconfig}[[**ifconfig**]{.command}]{.term}             Manages network interfaces
  []{#ping}[[**ping**]{.command}]{.term}                     Sends echo-request packets and reports how long the replies take
  []{#ping6}[[**ping6**]{.command}]{.term}                   A version of [**ping**]{.command} for IPv6 networks
  []{#talk}[[**talk**]{.command}]{.term}                     Is used to chat with another user
  []{#telnet}[[**telnet**]{.command}]{.term}                 An interface to the TELNET protocol
  []{#tftp}[[**tftp**]{.command}]{.term}                     A trivial file transfer program
  []{#traceroute}[[**traceroute**]{.command}]{.term}         Traces the route your packets take from the host you are working on to another host on a network, showing all the intermediate hops (gateways) along the way
  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::
:::::::::::::::

::: navfooter
-   [Prev](expat.md "Expat-2.8.1"){accesskey="p"}

    Expat-2.8.1

-   [Next](less.md "Less-702"){accesskey="n"}

    Less-702

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
