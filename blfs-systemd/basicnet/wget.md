::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](samba.md "Samba-4.24.0"){accesskey="p"}

    Samba-4.24.0

-   [Next](wireless-kernel.md "Configuring the Linux Kernel for Wireless"){accesskey="n"}

    Configuring the Linux Kernel for Wireless

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#wget}Wget-1.25.0 {#wget-1.25.0 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Wget {#introduction-to-wget .sect2}

The [Wget]{.application} package contains a utility useful for non-interactive downloading of files from the Web.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/wget/wget-1.25.0.tar.gz](https://ftpmirror.gnu.org/wget/wget-1.25.0.tar.gz){.ulink}

-   Download MD5 sum: c70ba58b36f944e8ba1d655ace552881

-   Download size: 5.0 MB

-   Estimated disk space required: 38 MB (add 27 MB for tests)

-   Estimated build time: 0.3 SBU (add 0.4 SBU for tests)
:::

### Wget Dependencies

#### Recommended

[libpsl-0.21.5](libpsl.md "libpsl-0.21.5"){.xref}

#### Recommended at runtime

[make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}

#### Optional

[GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [HTTP-Daemon-6.17](../general/perl-modules.md#perl-http-daemon "HTTP::Daemon-6.17"){.xref} (for the test suite), [IO-Socket-SSL-2.098](../general/perl-modules.md#perl-io-socket-ssl "IO::Socket::SSL-2.098"){.xref} (for the test suite), [libidn2-2.3.8](../general/libidn2.md "libidn2-2.3.8"){.xref}, [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}, and [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (for the test suite)
:::::

::: {.installation lang="en"}
## Installation of Wget {#installation-of-wget .sect2}

First, make a fix to make the package compatible with OpenSSL 4. The bash variable is for presentation purposes due to the long line.

``` userinput
NEW_LINE='#if !defined OPENSSL_NO_SSL3_METHOD '
NEW_LINE+='&& OPENSSL_VERSION_NUMBER < 0x40000000L'

sed -i "/SSL3/c $NEW_LINE" src/openssl.c

unset NEW_LINE 
```

Install [Wget]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr      \
            --sysconfdir=/etc  \
            --with-ssl=openssl &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--sysconfdir=/etc`*: This relocates the configuration file from `/usr/etc`{.filename} to `/etc`{.filename}.

*`--with-ssl=openssl`*: This allows the program to use openssl instead of [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}.

`--enable-libproxy`{.option}: This switch allows wget to use libproxy for proxy configuration. Use it if you have the [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref} package installed and wish to use a proxy server.

`--enable-valgrind-tests`{.option}: This allows the tests to be run under valgrind.
:::

:::: {.configuration lang="en"}
## Configuring Wget {#configuring-wget .sect2}

::: {.sect3 lang="en"}
### []{#wget-config}Config Files {#config-files .sect3}

`/etc/wgetrc`{.filename} and `~/.wgetrc`{.filename}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [wget]{.segbody}
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

  --------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
  []{#wget-prog}[[**wget**]{.command}]{.term}   retrieves files from the Web using the HTTP, HTTPS and FTP protocols. It is designed to be non-interactive, for background or unattended operations
  --------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](samba.md "Samba-4.24.0"){accesskey="p"}

    Samba-4.24.0

-   [Next](wireless-kernel.md "Configuring the Linux Kernel for Wireless"){accesskey="n"}

    Configuring the Linux Kernel for Wireless

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
