::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](cifsutils.md "cifs-utils-7.5"){accesskey="p"}

    cifs-utils-7.5

-   [Next](net-tools.md "Net-tools-2.10"){accesskey="n"}

    Net-tools-2.10

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ncftp}NcFTP-3.3.0 {#ncftp-3.3.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to NcFTP {#introduction-to-ncftp .sect2}

The [NcFTP]{.application} package contains a powerful and flexible interface to the Internet standard File Transfer Protocol. It is intended to replace or supplement the stock [**ftp**]{.command} program.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.ncftp.com/public_ftp/ncftp/ncftp-3.3.0-src.tar.gz](https://www.ncftp.com/public_ftp/ncftp/ncftp-3.3.0-src.tar.gz){.ulink}

-   Download MD5 sum: 43056719c50cae2ed6b614e20c86d37e

-   Download size: 628 KB

-   Estimated disk space required: 13 MB

-   Estimated build time: 0.2 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of NcFTP {#installation-of-ncftp .sect2}

To install [NcFTP]{.application}, run the following commands:

``` userinput
CC=/usr/bin/gcc \
./configure --prefix=/usr --sysconfdir=/etc &&
make -C libncftp shared &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make -C libncftp soinstall &&
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`CC=/usr/bin/gcc`{.envar}. This environment variable ensures that [**gcc**]{.command} is used if [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} is installed.

[**make -C ... && make ...**]{.command}: These commands make and install the dynamic library `libncftp`{.filename} which is then used to link against when compiling the main program.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ncftp, ncftpbatch, ncftpget, ncftpls, ncftpput, and ncftpspooler]{.segbody}
:::

::: seg
**Installed Library:** [libncftp.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -------------------------------------------------------------------------
  []{#ncftp-prog}[[**ncftp**]{.command}]{.term}            is a browser program for File Transfer Protocol
  []{#ncftpbatch}[[**ncftpbatch**]{.command}]{.term}       is an individual batch FTP job processor
  []{#ncftpget}[[**ncftpget**]{.command}]{.term}           is an internet file transfer program for scripts used to retrieve files
  []{#ncftpls}[[**ncftpls**]{.command}]{.term}             is an internet file transfer program for scripts used to list files
  []{#ncftpput}[[**ncftpput**]{.command}]{.term}           is an internet file transfer program for scripts used to transfer files
  []{#ncftpspooler}[[**ncftpspooler**]{.command}]{.term}   is a global batch FTP job processor daemon
  -------------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](cifsutils.md "cifs-utils-7.5"){accesskey="p"}

    cifs-utils-7.5

-   [Next](net-tools.md "Net-tools-2.10"){accesskey="n"}

    Net-tools-2.10

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
