::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](whois.md "Whois-5.6.6"){accesskey="p"}

    Whois-5.6.6

-   [Next](netlibs.md "Networking Libraries"){accesskey="n"}

    Networking Libraries

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#wireshark}Wireshark-4.6.6 {#wireshark-4.6.6 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Wireshark {#introduction-to-wireshark .sect2}

The [Wireshark]{.application} package contains a network protocol analyzer, also known as a [“[sniffer.]{.quote}”]{.quote} This is useful for analyzing data captured [“[off the wire]{.quote}”]{.quote} from a live network connection, or data read from a capture file.

[Wireshark]{.application} provides both a graphical and a TTY-mode front-end for examining captured network packets from over 500 protocols, as well as the capability to read capture files from many other popular network analyzers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.wireshark.org/download/src/all-versions/wireshark-4.6.6.tar.xz](https://www.wireshark.org/download/src/all-versions/wireshark-4.6.6.tar.xz){.ulink}

-   Download MD5 sum: 435ae3d7595a2d82b1187eee3ff3774e

-   Download size: 54 MB

-   Estimated disk space required: 1.1 GB (188 MB installed)

-   Estimated build time: 2.5 SBU (with parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   Additional Documentation: [https://www.wireshark.org/download/docs/](https://www.wireshark.org/download/docs/){.ulink} (contains links to several different docs in a variety of formats)
:::

### Wireshark dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [c-ares-1.34.6](c-ares.md "c-ares-1.34.6"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, and [Speex-1.2.1](../multimedia/speex.md "Speex-1.2.1"){.xref}

#### Recommended

[libpcap-1.10.6](libpcap.md "libpcap-1.10.6"){.xref} (required to capture data)

#### Optional

[asciidoctor-2.0.26](../general/asciidoctor.md "Asciidoctor-2.0.26"){.xref}, [Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [git-2.54.0](../general/git.md "Git-2.54.0"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [libnl-3.12.0](libnl.md "libnl-3.12.0"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [nghttp2-1.69.0](nghttp2.md "nghttp2-1.69.0"){.xref}, [SBC-2.2](../multimedia/sbc.md "SBC-2.2"){.xref}, [Vulkan-Headers-1.4.350.0](../x/vulkan-headers.md "Vulkan-Headers-1.4.350.0"){.xref}, [BCG729](https://www.linphone.org/en/bcg729-implementation/){.ulink}, [libilbc](https://github.com/TimothyGu/libilbc){.ulink}, [libsmi](https://www.ibr.cs.tu-bs.de/projects/libsmi/){.ulink}, [libssh](https://www.libssh.org/){.ulink}, [MaxMindDB](https://github.com/maxmind/libmaxminddb){.ulink}, [Minizip](https://www.winimage.com/zLibDll/minizip.md){.ulink}, [nghttp3](https://github.com/ngtcp2/nghttp3){.ulink}, [Snappy](https://google.github.io/snappy/){.ulink}, and [Spandsp](https://github.com/freeswitch/spandsp){.ulink}
::::::

::: {.kernel lang="en"}
## []{#wireshark-kernel}Kernel Configuration {#kernel-configuration .sect2}

The kernel must have the Packet protocol enabled for [Wireshark]{.application} to capture live packets from the network:

``` screen
[*] Networking support --->                                                [NET]
  Networking options --->
    <*/M> Packet socket                                                 [PACKET]
```

If built as a module, the name is `af_packet.ko`{.filename}.
:::

::: {.installation lang="en"}
## Installation of Wireshark {#installation-of-wireshark .sect2}

[Wireshark]{.application} is a very large and complex application. These instructions provide additional security measures to ensure that only trusted users are allowed to view network traffic. First, set up a system group for wireshark. As the `root`{.systemitem} user:

``` root
groupadd -g 62 wireshark
```

Continue to install [Wireshark]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/wireshark-4.6.6 \
      -G Ninja \
      .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&

install -v -m755 -d /usr/share/doc/wireshark-4.6.6 &&
install -v -m644    ../README.linux ../doc/README.* ../doc/randpkt.txt \
                    /usr/share/doc/wireshark-4.6.6 &&

pushd /usr/share/doc/wireshark-4.6.6 &&
   for FILENAME in ../../wireshark/*.html; do
      ln -s -v -f $FILENAME .
   done &&
popd
unset FILENAME
```

If you downloaded any of the documentation files from the page listed in the 'Additional Downloads', install them by issuing the following commands as the `root`{.systemitem} user:

``` root
install -v -m644 <Downloaded_Files> \
                 /usr/share/doc/wireshark-4.6.6
```

Now, set ownership and permissions of sensitive applications to only allow authorized users. As the `root`{.systemitem} user:

``` root
chown -v root:wireshark /usr/bin/tshark &&
chmod -v 6550 /usr/bin/tshark
```

Finally, add any users to the wireshark group (as `root`{.systemitem} user):

``` root
usermod -a -G wireshark <username>
```

If you are installing wireshark for the first time, it will be necessary to logout of your session and login again. This will put wireshark in your groups, because otherwise Wireshark will not function properly.
:::

:::::: {.configuration lang="en"}
## Configuring Wireshark {#configuring-wireshark .sect2}

::: {.sect3 lang="en"}
### []{#wireshark-config}Config Files {#config-files .sect3}

`/etc/wireshark.conf`{.filename} and `~/.config/wireshark/*`{.filename} (unless there is already `~/.wireshark/*`{.filename} in the system)
:::

:::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Though the default configuration parameters are very sane, reference the configuration section of the [Wireshark User's Guide](https://www.wireshark.org/docs/wsug_html/){.ulink} for configuration information. Most of [Wireshark]{.application} 's configuration can be accomplished using the menu options of the [**wireshark**]{.command} graphical interfaces.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you want to look at packets, make sure you don't filter them out with [iptables-1.8.13](../postlfs/iptables.md "iptables-1.8.13"){.xref}. If you want to exclude certain classes of packets, it is more efficient to do it with [iptables]{.application} than it is with [Wireshark]{.application}.
:::
::::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [capinfos, captype, dumpcap, editcap, idl2wrs, mergecap, randpkt, rawshark, reordercap, sharkd, text2pcap, tshark, and wireshark]{.segbody}
:::

::: seg
**Installed Libraries:** [libwireshark.so, libwiretap.so, libwsutil.so, and numerous modules under /usr/lib/wireshark/plugins]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{lib,share}/wireshark and /usr/share/doc/wireshark-4.6.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#capinfos}[[**capinfos**]{.command}]{.term}           reads a saved capture file and returns any or all of several statistics about that file. It is able to detect and read any capture supported by the [Wireshark]{.application} package
  []{#captype}[[**captype**]{.command}]{.term}             prints the file types of capture files
  []{#editcap}[[**editcap**]{.command}]{.term}             edits and/or translates the format of capture files. It knows how to read [libpcap]{.application} capture files, including those of [**tcpdump**]{.command}, [Wireshark]{.application} and other tools that write captures in that format
  []{#idl2wrs}[[**idl2wrs**]{.command}]{.term}             is a program that takes a user specified CORBA IDL file and generates [“[C]{.quote}”]{.quote} source code for a [Wireshark]{.application} [“[plugin.]{.quote}”]{.quote} It relies on two Python programs [**wireshark_be.py**]{.command} and [**wireshark_gen.py**]{.command}, which are not installed by default. They have to be copied manually from the `tools`{.filename} directory to the `$PYTHONPATH/site-packages/`{.filename} directory
  []{#mergecap}[[**mergecap**]{.command}]{.term}           combines multiple saved capture files into a single output file
  []{#randpkt}[[**randpkt**]{.command}]{.term}             creates random-packet capture files
  []{#rawshark}[[**rawshark**]{.command}]{.term}           dumps and analyzes raw libpcap data
  []{#reordercap}[[**reordercap**]{.command}]{.term}       reorders timestamps of input file frames into an output file
  []{#sharkd}[[**sharkd**]{.command}]{.term}               is a daemon that listens on UNIX sockets
  []{#text2pcap}[[**text2pcap**]{.command}]{.term}         reads in an ASCII hex dump and writes the data described into a [libpcap]{.application}-style capture file
  []{#tshark}[[**tshark**]{.command}]{.term}               is a TTY-mode network protocol analyzer. It lets you capture packet data from a live network or read packets from a previously saved capture file
  []{#wireshark-prog}[[**wireshark**]{.command}]{.term}    is the Qt GUI network protocol analyzer. It lets you interactively browse packet data from a live network or from a previously saved capture file
  []{#libwireshark}[`libwireshark.so`{.filename}]{.term}   contains functions used by the [Wireshark]{.application} programs to perform filtering and packet capturing
  []{#libwiretap}[`libwiretap.so`{.filename}]{.term}       is a library being developed as a future replacement for `libpcap`{.filename}, the current standard Unix library for packet capturing. For more information, see the `README`{.filename} file in the source `wiretap`{.filename} directory
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](whois.md "Whois-5.6.6"){accesskey="p"}

    Whois-5.6.6

-   [Next](netlibs.md "Networking Libraries"){accesskey="n"}

    Networking Libraries

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
