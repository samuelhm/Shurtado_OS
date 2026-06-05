<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](nfs-utils.md "NFS-Utils-2.9.1")

    NFS-Utils-2.9.1

-   [Next](rpcbind.md "rpcbind-1.2.9")

    rpcbind-1.2.9

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ntp-4.2.8p18 {#ntp-4.2.8p18}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ntp {#introduction-to-ntp}

The <span class="application">ntp</span> package contains a client and server to keep the time synchronized between various computers over a network. This package is the official reference implementation of the NTP protocol.

For most systemd installations systemd-timesyncd provides for simple time synchronization. This package is not needed unless you need to run an NTP time Server or want to connect to local hardware clocks

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-4.2/ntp-4.2.8p18.tar.gz">https://www.eecis.udel.edu/\~ntp/ntp_spool/ntp4/ntp-4.2/ntp-4.2.8p18.tar.gz</a>

-   Download MD5 sum: 516bdabd94ab7c824e9771390761a46c

-   Download size: 6.8 MB

-   Estimated disk space required: 99 MB (with tests)

-   Estimated build time: 0.8 SBU (With tests; both using parallelism=4)
</div>

### ntp Dependencies

#### Required

<a class="xref" href="../general/perl-modules.md#perl-io-socket-ssl" title="IO::Socket::SSL-2.098">IO-Socket-SSL-2.098</a>

#### Optional

<a class="xref" href="../postlfs/libcap.md" title="libcap-2.78 with PAM">libcap-2.78 with PAM</a>, <a class="xref" href="libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>, <a class="ulink" href="https://www.thrysoee.dk/editline/">libedit</a>, and <a class="ulink" href="https://www.gnu.org/software/autogen/">libopts from AutoGen</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/ntp">https://wiki.linuxfromscratch.org/blfs/wiki/ntp</a>
</div>

<div class="installation" lang="en">
## Installation of ntp {#installation-of-ntp}

There should be a dedicated user and group to take control of the <span class="command"><strong>ntpd</strong></span> daemon after it is started. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -g 87 ntp &&
useradd -c "Network Time Protocol" -d /var/lib/ntp -u 87 \
        -g ntp -s /bin/false ntp
```

First fix build issues identified when glibc-2.43 was introduced:

```bash
sed -i 's/getclock/getclock memchr/'               sntp/m4/ntp_libntp.m4 &&
sed -i 's/pthread_detach(NULL)/pthread_detach(0)/' sntp/m4/openldap-thread-check.m4 &&
autoreconf -fiv
```

Then apply an upstream fix to prevent a segfault:

```bash
sed -i "/ep.*FAILED/,+4s/ep/ep2/" ntpd/ntp_io.c
```

Install <span class="application">ntp</span> by running the following commands:

```bash
./configure --prefix=/usr      \
            --bindir=/usr/sbin \
            --sysconfdir=/etc  \
            --enable-linuxcaps \
            --with-lineeditlibs=readline \
            --docdir=/usr/share/doc/ntp-4.2.8p18 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. Three tests (test-crypto, test-packetHandling, and test-packetProcessing) are known to fail due to using OpenSSL 3.5.2 and later.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -o ntp -g ntp -d /var/lib/ntp
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--bindir=/usr/sbin`*: This parameter places the administrative programs in <code class="filename">/usr/sbin</code>.

*`--enable-linuxcaps`*: ntpd is run as user ntp, so use Linux capabilities for non-root clock control.

*`--with-lineeditlibs=readline`*: This switch enables <span class="application">Readline</span> support for <span class="command"><strong>ntpdc</strong></span> and <span class="command"><strong>ntpq</strong></span> programs. If omitted, <span class="application">libedit</span> will be used if installed, otherwise no readline capabilities will be compiled.
</div>

<div class="configuration" lang="en">
## Configuring ntp {#configuring-ntp}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/ntp.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The following configuration file first defines various ntp servers with open access from different continents. Second, it creates a drift file where <span class="command"><strong>ntpd</strong></span> stores the frequency offset and a pid file to store the <span class="command"><strong>ntpd</strong></span> process ID. Since the documentation included with the package is sparse, visit the ntp website at <a class="ulink" href="https://www.ntp.org/">https://www.ntp.org/</a> and <a class="ulink" href="https://www.ntppool.org/">https://www.ntppool.org/</a> for more information.

```bash
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

You may wish to add a <span class="quote">“<span class="quote">Security session.</span>”</span> For explanations, see <a class="ulink" href="https://www.eecis.udel.edu/~mills/ntp/html/accopt.md#restrict">https://www.eecis.udel.edu/\~mills/ntp/html/accopt.md#restrict</a>.

```bash
cat >> /etc/ntp.conf << "EOF"
# Security session
restrict    default limited kod nomodify notrap nopeer noquery
restrict -6 default limited kod nomodify notrap nopeer noquery

restrict 127.0.0.1
restrict ::1
EOF
```
</div>

<div class="sect3" lang="en">
### Synchronizing the Time {#synchronizing-the-time}

There are two options. Option one is to run <span class="command"><strong>ntpd</strong></span> continuously and allow it to synchronize the time in a gradual manner. The other option is to run <span class="command"><strong>ntpd</strong></span> periodically (using cron) and update the time each time <span class="command"><strong>ntpd</strong></span> is scheduled.

If you choose Option one, then install the <span class="phrase"><code class="filename">ntpd.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package.

```bash
make install-ntpd
```

In addition, you should disable an incompatible service. As the <code class="systemitem">root</code> user:

```bash
systemctl disable systemd-timesyncd.service
```

If you prefer to run <span class="command"><strong>ntpd</strong></span> periodically, add the following command to <code class="systemitem">root</code>'s <code class="filename">crontab</code>:

```console
ntpd -q
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">calc_tickadj, ntp-keygen, ntp-wait, ntpd, ntpdate, ntpdc, ntpq, ntptime, ntptrace, sntp, tickadj, and update-leap</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/ntp, /usr/share/doc/ntp-4.2.8 and /var/lib/ntp</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="calc_tickadj"></a><span class="command"><span class="term"><strong>calc_tickadj</strong></span></span> | calculates optimal value for tick given ntp drift file                                                                                                                                                                                                                                                                      |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="ntp-keygen"></a><span class="command"><span class="term"><strong>ntp-keygen</strong></span></span>     | generates cryptographic data files used by the NTPv4 authentication and identification schemes                                                                                                                                                                                                                              |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="ntp-wait"></a><span class="command"><span class="term"><strong>ntp-wait</strong></span></span>         | is useful at boot time, to delay the boot sequence until <span class="command"><strong>ntpd</strong></span> has set the time                                                                                                                                                                                                                              |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="ntpd"></a><span class="command"><span class="term"><strong>ntpd</strong></span></span>                 | is a ntp daemon that runs in the background and keeps the date and time synchronized based on response from configured ntp servers. It also functions as a ntp server                                                                                                                                                       |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="ntpdate"></a><span class="command"><span class="term"><strong>ntpdate</strong></span></span>           | is a client program that sets the date and time based on the response from an ntp server. This command is deprecated                                                                                                                                                                                                        |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="ntpdc"></a><span class="command"><span class="term"><strong>ntpdc</strong></span></span>               | is used to query the ntp daemon about its current state and to request changes in that state                                                                                                                                                                                                                                |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="ntpq"></a><span class="command"><span class="term"><strong>ntpq</strong></span></span>                 | is a utility program used to monitor <span class="command"><strong>ntpd</strong></span> operations and determine performance                                                                                                                                                                                                                              |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="ntptime"></a><span class="command"><span class="term"><strong>ntptime</strong></span></span>           | reads and displays time-related kernel variables                                                                                                                                                                                                                                                                            |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="ntptrace"></a><span class="command"><span class="term"><strong>ntptrace</strong></span></span>         | traces a chain of ntp servers back to the primary source                                                                                                                                                                                                                                                                    |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="sntp"></a><span class="command"><span class="term"><strong>sntp</strong></span></span>                 | is a Simple Network Time Protocol (SNTP) client                                                                                                                                                                                                                                                                             |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="tickadj"></a><span class="command"><span class="term"><strong>tickadj</strong></span></span>           | reads, and optionally modifies, several timekeeping-related variables in older kernels that do not have support for precision timekeeping                                                                                                                                                                                   |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| <a id="update-leap"></a><span class="command"><span class="term"><strong>update-leap</strong></span></span>   | is a script to verify and, if necessary, update the leap-second definition file.                                                                                                                                                                                                                                            |
|                                                        |                                                                                                                                                                                                                                                                                                                             |
|                                                        | ::: {.admon .note}                                                                                                                                                                                                                                                                                                          |
|                                                        | ![\[Note\]](../images/note.png)                                                                                                                                                                                                                                                                                             |
|                                                        |                                                                                                                                                                                                                                                                                                                             |
|                                                        | ### Note                                                                                                                                                                                                                                                                                                                    |
|                                                        |                                                                                                                                                                                                                                                                                                                             |
|                                                        | In November 2022, at the 27th General Conference on Weights and Measures, it was decided to abandon the leap second. In addition this script hardcodes a URL for an update file that no longer exists. The last time a leap second was declared was January 2017. This script will probably be removed in a future release. |
|                                                        | :::                                                                                                                                                                                                                                                                                                                         |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nfs-utils.md "NFS-Utils-2.9.1")

    NFS-Utils-2.9.1

-   [Next](rpcbind.md "rpcbind-1.2.9")

    rpcbind-1.2.9

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
