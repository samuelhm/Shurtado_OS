::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](autofs.md "autofs-5.1.9"){accesskey="p"}

    autofs-5.1.9

-   [Next](bubblewrap.md "Bubblewrap-0.11.2"){accesskey="n"}

    Bubblewrap-0.11.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#bluez}BlueZ-5.86 {#bluez-5.86 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to BlueZ {#introduction-to-bluez .sect2}

The [BlueZ]{.application} package contains the Bluetooth protocol stack for Linux.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/linux/bluetooth/bluez-5.86.tar.xz](https://www.kernel.org/pub/linux/bluetooth/bluez-5.86.tar.xz){.ulink}

-   Download MD5 sum: 8b5c680289e703dd2fd2a97b999d4e81

-   Download size: 2.2 MB

-   Estimated disk space required: 141 MB (with tests)

-   Estimated build time: 0.8 SBU (using parallelism=4; with tests)
:::

### BlueZ Dependencies

#### Required

[dbus-1.16.2](dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}, and [libical-4.0.2](libical.md "libical-4.0.2"){.xref}

#### Recommended

[docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref} (to generate man pages)
:::::

::: {.kernel lang="en"}
## []{#bluez-kernel}Kernel Configuration {#kernel-configuration .sect2}

If you are building this package to use bluetooth devices (rather than as a build dependency), enable the following options in the kernel configuration, also the options in the [“[Cryptographic API]{.quote}”]{.quote} section if you intend to run the tests, and recompile the kernel if necessary:

``` screen
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
:::

::: {.installation lang="en"}
## Installation of BlueZ {#installation-of-bluez .sect2}

First, fix a regression that prevents BlueZ from initializing adapters in the latest release:

``` userinput
sed -i '4967,4968d' src/adapter.c
```

Install [BlueZ]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr         \
            --sysconfdir=/etc     \
            --localstatedir=/var  \
            --enable-library      &&
make ICAL_LIBS="-lical -licalvcal"
```

To test the results, issue: **`make check`**.

Now, as the `root`{.systemitem} user:

``` root
make install &&
ln -svf ../libexec/bluetooth/bluetoothd /usr/sbin
```

Install the main configuration file as the `root`{.systemitem} user:

``` root
install -v -dm555 /etc/bluetooth &&
install -v -m644 src/main.conf /etc/bluetooth/main.conf
```

If desired, install the API documentation as the `root`{.systemitem} user:

``` root
install -v -dm755 /usr/share/doc/bluez-5.86 &&
install -v -m644 doc/*.txt /usr/share/doc/bluez-5.86
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-library`*: This switch enables building the [BlueZ]{.application} 5 compatibility library which is required by some applications.

`--disable-manpages`{.option}: This switch disables generating the manual pages. Add this switch if you don't have [docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref} installed.

[**ln -svf ../libexec/bluetooth/bluetoothd /usr/sbin**]{.command}: This command makes access to the bluetooth daemon more convenient.
:::

:::::: {.configuration lang="en"}
## Configuring BlueZ {#configuring-bluez .sect2}

::: {.sect3 lang="en"}
### []{#bluez-config}Configuration Files {#configuration-files .sect3}

`/etc/bluetooth/main.conf`{.filename} is installed automatically during the installation. Additionally, there are two supplementary configuration files. You can optionally install the following files as the `root`{.systemitem} user:

``` root
cat > /etc/bluetooth/rfcomm.conf << "EOF"
# Start rfcomm.conf
# Set up the RFCOMM configuration of the Bluetooth subsystem in the Linux kernel.
# Use one line per command
# See the rfcomm man page for options


# End of rfcomm.conf
EOF
```

``` root
cat > /etc/bluetooth/uart.conf << "EOF"
# Start uart.conf
# Attach serial devices via UART HCI to BlueZ stack
# Use one line per device
# See the hciattach man page for options

# End of uart.conf
EOF
```
:::

:::: {.sect3 lang="en"}
### []{#bluez-init} Systemd Bluez Services {#systemd-bluez-services .sect3}

To start the [**bluetoothd**]{.command} daemon at boot, enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable bluetooth
```

To start the [**obexd**]{.command} daemon for a user session (to support some Bluetooth programs using it), enable the previously installed systemd unit for all users by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable --global obex
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[Systemd]{.application} will start the Bluetooth daemon only when a bluetooth device is detected on the system.
:::
::::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [bluemoon, bluetoothctl, bluetoothd (symlink), btattach, btmon, hex2hcd, l2ping, l2test, mpris-proxy, and rctest]{.segbody}
:::

::: seg
**Installed Library:** [libbluetooth.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/bluetooth, /usr/{include,libexec}/bluetooth, and /usr/share/doc/bluez-5.86]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------------
  []{#bluemoon}[[**bluemoon**]{.command}]{.term}           is a Bluetooth configuration utility
  []{#bluetoothctl}[[**bluetoothctl**]{.command}]{.term}   is the interactive Bluetooth control program
  []{#bluetoothd}[[**bluetoothd**]{.command}]{.term}       is the Bluetooth daemon
  []{#btmon}[[**btmon**]{.command}]{.term}                 provides access to the Bluetooth subsystem monitor infrastructure for reading HCI traces
  []{#hex2hcd}[[**hex2hcd**]{.command}]{.term}             is used to convert a file needed by Broadcom devices to hcd (Broadcom bluetooth firmware) format
  []{#l2ping}[[**l2ping**]{.command}]{.term}               is used to send a L2CAP echo request to the Bluetooth MAC address given in dotted hex notation
  []{#l2test}[[**l2test**]{.command}]{.term}               is a L2CAP testing program
  []{#rctest}[[**rctest**]{.command}]{.term}               is used to test RFCOMM communications on the Bluetooth stack
  []{#libbluetooth}[`libbluetooth.so`{.filename}]{.term}   contains the [BlueZ]{.application} 5 API functions
  -------------------------------------------------------- --------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](autofs.md "autofs-5.1.9"){accesskey="p"}

    autofs-5.1.9

-   [Next](bubblewrap.md "Bubblewrap-0.11.2"){accesskey="n"}

    Bubblewrap-0.11.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
