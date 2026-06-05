::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](nfs-utils.md "NFS-Utils-2.9.1"){accesskey="p"}

    NFS-Utils-2.9.1

-   [Next](rpcbind.md "rpcbind-1.2.9"){accesskey="n"}

    rpcbind-1.2.9

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ntp}ntp-4.2.8p18 {#ntp-4.2.8p18 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ntp {#introduction-to-ntp .sect2}

The [ntp]{.application} package contains a client and server to keep the time synchronized between various computers over a network. This package is the official reference implementation of the NTP protocol.

For most systemd installations systemd-timesyncd provides for simple time synchronization. This package is not needed unless you need to run an NTP time Server or want to connect to local hardware clocks

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.eecis.udel.edu/\~ntp/ntp_spool/ntp4/ntp-4.2/ntp-4.2.8p18.tar.gz](https://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-4.2.8p18.tar.gz){.ulink}

-   Download MD5 sum: 516bdabd94ab7c824e9771390761a46c

-   Download size: 6.8 MB

-   Estimated disk space required: 99 MB (with tests)

-   Estimated build time: 0.8 SBU (With tests; both using parallelism=4)
:::

### ntp Dependencies

#### Required

[IO-Socket-SSL-2.098](../general/perl-modules.md#perl-io-socket-ssl "IO::Socket::SSL-2.098"){.xref}

#### Optional

[libcap-2.78 with PAM](../postlfs/libcap.md "libcap-2.78 with PAM"){.xref}, [libevent-2.1.12](libevent.md "libevent-2.1.12"){.xref}, [libedit](https://www.thrysoee.dk/editline/){.ulink}, and [libopts from AutoGen](https://www.gnu.org/software/autogen/){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/ntp](https://wiki.linuxfromscratch.org/blfs/wiki/ntp){.ulink}
:::::

::: {.installation lang="en"}
## Installation of ntp {#installation-of-ntp .sect2}

There should be a dedicated user and group to take control of the [**ntpd**]{.command} daemon after it is started. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -g 87 ntp &&
useradd -c "Network Time Protocol" -d /var/lib/ntp -u 87 \
        -g ntp -s /bin/false ntp
```

First fix build issues identified when glibc-2.43 was introduced:

``` userinput
sed -i 's/getclock/getclock memchr/'               sntp/m4/ntp_libntp.m4 &&
sed -i 's/pthread_detach(NULL)/pthread_detach(0)/' sntp/m4/openldap-thread-check.m4 &&
autoreconf -fiv
```

Then apply an upstream fix to prevent a segfault:

``` userinput
sed -i "/ep.*FAILED/,+4s/ep/ep2/" ntpd/ntp_io.c
```

Install [ntp]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr      \
            --bindir=/usr/sbin \
            --sysconfdir=/etc  \
            --enable-linuxcaps \
            --with-lineeditlibs=readline \
            --docdir=/usr/share/doc/ntp-4.2.8p18 &&
make
```

To test the results, issue: [**make check**]{.command}. Three tests (test-crypto, test-packetHandling, and test-packetProcessing) are known to fail due to using OpenSSL 3.5.2 and later.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -o ntp -g ntp -d /var/lib/ntp
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--bindir=/usr/sbin`*: This parameter places the administrative programs in `/usr/sbin`{.filename}.

*`--enable-linuxcaps`*: ntpd is run as user ntp, so use Linux capabilities for non-root clock control.

*`--with-lineeditlibs=readline`*: This switch enables [Readline]{.application} support for [**ntpdc**]{.command} and [**ntpq**]{.command} programs. If omitted, [libedit]{.application} will be used if installed, otherwise no readline capabilities will be compiled.
:::

:::::: {.configuration lang="en"}
## Configuring ntp {#configuring-ntp .sect2}

::: {.sect3 lang="en"}
### []{#ntp-config}Config Files {#config-files .sect3}

`/etc/ntp.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The following configuration file first defines various ntp servers with open access from different continents. Second, it creates a drift file where [**ntpd**]{.command} stores the frequency offset and a pid file to store the [**ntpd**]{.command} process ID. Since the documentation included with the package is sparse, visit the ntp website at [https://www.ntp.org/](https://www.ntp.org/){.ulink} and [https://www.ntppool.org/](https://www.ntppool.org/){.ulink} for more information.

``` root
cat > /etc/ntp.conf << "EOF"
# Asia
server 0.asia.pool.ntp.org

# Australia
server 0.oceania.pool.ntp.org

# Europe
server 0.europe.pool.ntp.org

# North America
server 0.north-america.pool.ntp.org

# South America
server 2.south-america.pool.ntp.org

driftfile /var/lib/ntp/ntp.drift
pidfile   /run/ntpd.pid
EOF
```

You may wish to add a [“[Security session.]{.quote}”]{.quote} For explanations, see [https://www.eecis.udel.edu/\~mills/ntp/html/accopt.md#restrict](https://www.eecis.udel.edu/~mills/ntp/html/accopt.md#restrict){.ulink}.

``` root
cat >> /etc/ntp.conf << "EOF"
# Security session
restrict    default limited kod nomodify notrap nopeer noquery
restrict -6 default limited kod nomodify notrap nopeer noquery

restrict 127.0.0.1
restrict ::1
EOF
```
:::

::: {.sect3 lang="en"}
### []{#ntp-init}Synchronizing the Time {#synchronizing-the-time .sect3}

There are two options. Option one is to run [**ntpd**]{.command} continuously and allow it to synchronize the time in a gradual manner. The other option is to run [**ntpd**]{.command} periodically (using cron) and update the time each time [**ntpd**]{.command} is scheduled.

If you choose Option one, then install the [`ntpd.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package.

``` root
make install-ntpd
```

In addition, you should disable an incompatible service. As the `root`{.systemitem} user:

``` root
systemctl disable systemd-timesyncd.service
```

If you prefer to run [**ntpd**]{.command} periodically, add the following command to `root`{.systemitem}'s `crontab`{.filename}:

``` screen
ntpd -q
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [calc_tickadj, ntp-keygen, ntp-wait, ntpd, ntpdate, ntpdc, ntpq, ntptime, ntptrace, sntp, tickadj, and update-leap]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/ntp, /usr/share/doc/ntp-4.2.8 and /var/lib/ntp]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#calc_tickadj}[[**calc_tickadj**]{.command}]{.term} | calculates optimal value for tick given ntp drift file                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ntp-keygen}[[**ntp-keygen**]{.command}]{.term}     | generates cryptographic data files used by the NTPv4 authentication and identification schemes                                                                                                                                                                                                                              |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ntp-wait}[[**ntp-wait**]{.command}]{.term}         | is useful at boot time, to delay the boot sequence until [**ntpd**]{.command} has set the time                                                                                                                                                                                                                              |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ntpd}[[**ntpd**]{.command}]{.term}                 | is a ntp daemon that runs in the background and keeps the date and time synchronized based on response from configured ntp servers. It also functions as a ntp server                                                                                                                                                       |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ntpdate}[[**ntpdate**]{.command}]{.term}           | is a client program that sets the date and time based on the response from an ntp server. This command is deprecated                                                                                                                                                                                                        |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ntpdc}[[**ntpdc**]{.command}]{.term}               | is used to query the ntp daemon about its current state and to request changes in that state                                                                                                                                                                                                                                |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ntpq}[[**ntpq**]{.command}]{.term}                 | is a utility program used to monitor [**ntpd**]{.command} operations and determine performance                                                                                                                                                                                                                              |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ntptime}[[**ntptime**]{.command}]{.term}           | reads and displays time-related kernel variables                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ntptrace}[[**ntptrace**]{.command}]{.term}         | traces a chain of ntp servers back to the primary source                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#sntp}[[**sntp**]{.command}]{.term}                 | is a Simple Network Time Protocol (SNTP) client                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#tickadj}[[**tickadj**]{.command}]{.term}           | reads, and optionally modifies, several timekeeping-related variables in older kernels that do not have support for precision timekeeping                                                                                                                                                                                   |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| []{#update-leap}[[**update-leap**]{.command}]{.term}   | is a script to verify and, if necessary, update the leap-second definition file.                                                                                                                                                                                                                                            |
|                                                        |                                                                                                                                                                                                                                                                                                                             |
|                                                        | ::: {.admon .note}                                                                                                                                                                                                                                                                                                          |
|                                                        | ![\[Note\]](../images/note.png)                                                                                                                                                                                                                                                                                             |
|                                                        |                                                                                                                                                                                                                                                                                                                             |
|                                                        | ### Note                                                                                                                                                                                                                                                                                                                    |
|                                                        |                                                                                                                                                                                                                                                                                                                             |
|                                                        | In November 2022, at the 27th General Conference on Weights and Measures, it was decided to abandon the leap second. In addition this script hardcodes a URL for an update file that no longer exists. The last time a leap second was declared was January 2017. This script will probably be removed in a future release. |
|                                                        | :::                                                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](nfs-utils.md "NFS-Utils-2.9.1"){accesskey="p"}

    NFS-Utils-2.9.1

-   [Next](rpcbind.md "rpcbind-1.2.9"){accesskey="n"}

    rpcbind-1.2.9

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
