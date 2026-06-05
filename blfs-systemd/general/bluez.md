<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](autofs.md "autofs-5.1.9")

    autofs-5.1.9

-   [Next](bubblewrap.md "Bubblewrap-0.11.2")

    Bubblewrap-0.11.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# BlueZ-5.86 {#bluez-5.86}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to BlueZ {#introduction-to-bluez}

The <span class="application">BlueZ</span> package contains the Bluetooth protocol stack for Linux.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/linux/bluetooth/bluez-5.86.tar.xz">https://www.kernel.org/pub/linux/bluetooth/bluez-5.86.tar.xz</a>

-   Download MD5 sum: 8b5c680289e703dd2fd2a97b999d4e81

-   Download size: 2.2 MB

-   Estimated disk space required: 141 MB (with tests)

-   Estimated build time: 0.8 SBU (using parallelism=4; with tests)
</div>

### BlueZ Dependencies

#### Required

<a class="xref" href="dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, and <a class="xref" href="libical.md" title="libical-4.0.2">libical-4.0.2</a>

#### Recommended

<a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> (to generate man pages)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

If you are building this package to use bluetooth devices (rather than as a build dependency), enable the following options in the kernel configuration, also the options in the <span class="quote">“<span class="quote">Cryptographic API</span>”</span> section if you intend to run the tests, and recompile the kernel if necessary:

```console
General setup --->
  # If it is disabled, [TIMERFD] and [EVENTFD] will be hidden and
  # enabled implicitly.  We DO NOT recommend to enable [EXPERT]
  # unless you are really an expert user:
  [ /*] Configure standard kernel features (expert users) --->          [EXPERT]
    [*] Enable timerfd() system call                                   [TIMERFD]
    [*] Enable eventfd() system call                                   [EVENTFD]

[*] Networking support --->                                                [NET]
  <*/M> Bluetooth subsystem support --->                                    [BT]
    [*]   Bluetooth Classic (BR/EDR) features                         [BT_BREDR]
    <*/M>   RFCOMM protocol support                                  [BT_RFCOMM]
    [*]       RFCOMM TTY support                                 [BT_RFCOMM_TTY]
    <*/M>   BNEP protocol support                                      [BT_BNEP]
    [*]       Multicast filter support                       [BT_BNEP_MC_FILTER]
    [*]       Protocol filter support                     [BT_BNEP_PROTO_FILTER]
    <*/M>   HIDP protocol support                                      [BT_HIDP]
    Bluetooth device drivers --->
      # Select the appropriate drivers for your bluetooth hardware.
      # There are more vendor-specific drivers not listed here:
      < /*/M> HCI USB driver                                       [BT_HCIBTUSB]
      < /*/M> HCI SDIO driver                                     [BT_HCIBTSDIO]
      < /*/M> HCI UART driver                                       [BT_HCIUART]
  <*/M> RF switch subsystem support --->                                [RFKILL]

-*- Cryptographic API --->                                              [CRYPTO]
  Crypto core or helper --->
    <*/M> Userspace cryptographic algorithm configuration          [CRYPTO_USER]
  Block ciphers --->
    <*/M> AES (Advanced Encryption Standard)                        [CRYPTO_AES]
  AEAD (authenticated encryption with associated data) ciphers --->
    <*/M> CCM (Counter with Cipher Block Chaining-MAC)              [CRYPTO_CCM]
  Hashes, digests, and MACs --->
    <*/M> CMAC (Cipher-based MAC)                                  [CRYPTO_CMAC]
  Userspace interface --->
    <*/M> Hash algorithms                                 [CRYPTO_USER_API_HASH]
    <*/M> Symmetric key cipher algorithms             [CRYPTO_USER_API_SKCIPHER]
    <*/M> AEAD cipher algorithms                          [CRYPTO_USER_API_AEAD]
```
</div>

<div class="installation" lang="en">
## Installation of BlueZ {#installation-of-bluez}

First, fix a regression that prevents BlueZ from initializing adapters in the latest release:

```bash
sed -i '4967,4968d' src/adapter.c
```

Install <span class="application">BlueZ</span> by running the following commands:

```bash
./configure --prefix=/usr         \
            --sysconfdir=/etc     \
            --localstatedir=/var  \
            --enable-library      &&
make ICAL_LIBS="-lical -licalvcal"
```

To test the results, issue: **`make check`**.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
ln -svf ../libexec/bluetooth/bluetoothd /usr/sbin
```

Install the main configuration file as the <code class="systemitem">root</code> user:

```bash
install -v -dm555 /etc/bluetooth &&
install -v -m644 src/main.conf /etc/bluetooth/main.conf
```

If desired, install the API documentation as the <code class="systemitem">root</code> user:

```bash
install -v -dm755 /usr/share/doc/bluez-5.86 &&
install -v -m644 doc/*.txt /usr/share/doc/bluez-5.86
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-library`*: This switch enables building the <span class="application">BlueZ</span> 5 compatibility library which is required by some applications.

<code class="option">--disable-manpages</code>: This switch disables generating the manual pages. Add this switch if you don't have <a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> installed.

<span class="command"><strong>ln -svf ../libexec/bluetooth/bluetoothd /usr/sbin</strong></span>: This command makes access to the bluetooth daemon more convenient.
</div>

<div class="configuration" lang="en">
## Configuring BlueZ {#configuring-bluez}

<div class="sect3" lang="en">
### Configuration Files {#configuration-files}

<code class="filename">/etc/bluetooth/main.conf</code> is installed automatically during the installation. Additionally, there are two supplementary configuration files. You can optionally install the following files as the <code class="systemitem">root</code> user:

```bash
cat > /etc/bluetooth/rfcomm.conf << "EOF"
# Start rfcomm.conf
# Set up the RFCOMM configuration of the Bluetooth subsystem in the Linux kernel.
# Use one line per command
# See the rfcomm man page for options


# End of rfcomm.conf
EOF
```

```bash
cat > /etc/bluetooth/uart.conf << "EOF"
# Start uart.conf
# Attach serial devices via UART HCI to BlueZ stack
# Use one line per device
# See the hciattach man page for options

# End of uart.conf
EOF
```
</div>

<div class="sect3" lang="en">
### Systemd Bluez Services {#systemd-bluez-services}

To start the <span class="command"><strong>bluetoothd</strong></span> daemon at boot, enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable bluetooth
```

To start the <span class="command"><strong>obexd</strong></span> daemon for a user session (to support some Bluetooth programs using it), enable the previously installed systemd unit for all users by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable --global obex
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">Systemd</span> will start the Bluetooth daemon only when a bluetooth device is detected on the system.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">bluemoon, bluetoothctl, bluetoothd (symlink), btattach, btmon, hex2hcd, l2ping, l2test, mpris-proxy, and rctest</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libbluetooth.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/bluetooth, /usr/{include,libexec}/bluetooth, and /usr/share/doc/bluez-5.86</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------------
  <a id="bluemoon"></a><span class="command"><span class="term"><strong>bluemoon</strong></span></span>           is a Bluetooth configuration utility
  <a id="bluetoothctl"></a><span class="command"><span class="term"><strong>bluetoothctl</strong></span></span>   is the interactive Bluetooth control program
  <a id="bluetoothd"></a><span class="command"><span class="term"><strong>bluetoothd</strong></span></span>       is the Bluetooth daemon
  <a id="btmon"></a><span class="command"><span class="term"><strong>btmon</strong></span></span>                 provides access to the Bluetooth subsystem monitor infrastructure for reading HCI traces
  <a id="hex2hcd"></a><span class="command"><span class="term"><strong>hex2hcd</strong></span></span>             is used to convert a file needed by Broadcom devices to hcd (Broadcom bluetooth firmware) format
  <a id="l2ping"></a><span class="command"><span class="term"><strong>l2ping</strong></span></span>               is used to send a L2CAP echo request to the Bluetooth MAC address given in dotted hex notation
  <a id="l2test"></a><span class="command"><span class="term"><strong>l2test</strong></span></span>               is a L2CAP testing program
  <a id="rctest"></a><span class="command"><span class="term"><strong>rctest</strong></span></span>               is used to test RFCOMM communications on the Bluetooth stack
  <a id="libbluetooth"></a><span class="term"><code class="filename">libbluetooth.so</code></span>   contains the <span class="application">BlueZ</span> 5 API functions
  -------------------------------------------------------- --------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](autofs.md "autofs-5.1.9")

    autofs-5.1.9

-   [Next](bubblewrap.md "Bubblewrap-0.11.2")

    Bubblewrap-0.11.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
