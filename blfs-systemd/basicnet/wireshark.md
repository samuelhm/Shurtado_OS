<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](whois.md "Whois-5.6.6")

    Whois-5.6.6

-   [Next](netlibs.md "Networking Libraries")

    Networking Libraries

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Wireshark-4.6.6 {#wireshark-4.6.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Wireshark {#introduction-to-wireshark}

The <span class="application">Wireshark</span> package contains a network protocol analyzer, also known as a <span class="quote">“<span class="quote">sniffer.</span>”</span> This is useful for analyzing data captured <span class="quote">“<span class="quote">off the wire</span>”</span> from a live network connection, or data read from a capture file.

<span class="application">Wireshark</span> provides both a graphical and a TTY-mode front-end for examining captured network packets from over 500 protocols, as well as the capability to read capture files from many other popular network analyzers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.wireshark.org/download/src/all-versions/wireshark-4.6.6.tar.xz">https://www.wireshark.org/download/src/all-versions/wireshark-4.6.6.tar.xz</a>

-   Download MD5 sum: 435ae3d7595a2d82b1187eee3ff3774e

-   Download size: 54 MB

-   Estimated disk space required: 1.1 GB (188 MB installed)

-   Estimated build time: 2.5 SBU (with parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Additional Documentation: <a class="ulink" href="https://www.wireshark.org/download/docs/">https://www.wireshark.org/download/docs/</a> (contains links to several different docs in a variety of formats)
</div>

### Wireshark dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="c-ares.md" title="c-ares-1.34.6">c-ares-1.34.6</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, and <a class="xref" href="../multimedia/speex.md" title="Speex-1.2.1">Speex-1.2.1</a>

#### Recommended

<a class="xref" href="libpcap.md" title="libpcap-1.10.6">libpcap-1.10.6</a> (required to capture data)

#### Optional

<a class="xref" href="../general/asciidoctor.md" title="Asciidoctor-2.0.26">asciidoctor-2.0.26</a>, <a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="libnl.md" title="libnl-3.12.0">libnl-3.12.0</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a>, <a class="xref" href="../multimedia/sbc.md" title="SBC-2.2">SBC-2.2</a>, <a class="xref" href="../x/vulkan-headers.md" title="Vulkan-Headers-1.4.350.0">Vulkan-Headers-1.4.350.0</a>, <a class="ulink" href="https://www.linphone.org/en/bcg729-implementation/">BCG729</a>, <a class="ulink" href="https://github.com/TimothyGu/libilbc">libilbc</a>, <a class="ulink" href="https://www.ibr.cs.tu-bs.de/projects/libsmi/">libsmi</a>, <a class="ulink" href="https://www.libssh.org/">libssh</a>, <a class="ulink" href="https://github.com/maxmind/libmaxminddb">MaxMindDB</a>, <a class="ulink" href="https://www.winimage.com/zLibDll/minizip.md">Minizip</a>, <a class="ulink" href="https://github.com/ngtcp2/nghttp3">nghttp3</a>, <a class="ulink" href="https://google.github.io/snappy/">Snappy</a>, and <a class="ulink" href="https://github.com/freeswitch/spandsp">Spandsp</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

The kernel must have the Packet protocol enabled for <span class="application">Wireshark</span> to capture live packets from the network:

```console
[*] Networking support --->                                                [NET]
  Networking options --->
    <*/M> Packet socket                                                 [PACKET]
```

If built as a module, the name is <code class="filename">af_packet.ko</code>.
</div>

<div class="installation" lang="en">
## Installation of Wireshark {#installation-of-wireshark}

<span class="application">Wireshark</span> is a very large and complex application. These instructions provide additional security measures to ensure that only trusted users are allowed to view network traffic. First, set up a system group for wireshark. As the <code class="systemitem">root</code> user:

```bash
groupadd -g 62 wireshark
```

Continue to install <span class="application">Wireshark</span> by running the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
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

If you downloaded any of the documentation files from the page listed in the 'Additional Downloads', install them by issuing the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m644 <Downloaded_Files> \
                 /usr/share/doc/wireshark-4.6.6
```

Now, set ownership and permissions of sensitive applications to only allow authorized users. As the <code class="systemitem">root</code> user:

```bash
chown -v root:wireshark /usr/bin/tshark &&
chmod -v 6550 /usr/bin/tshark
```

Finally, add any users to the wireshark group (as <code class="systemitem">root</code> user):

```bash
usermod -a -G wireshark <username>
```

If you are installing wireshark for the first time, it will be necessary to logout of your session and login again. This will put wireshark in your groups, because otherwise Wireshark will not function properly.
</div>

<div class="configuration" lang="en">
## Configuring Wireshark {#configuring-wireshark}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/wireshark.conf</code> and <code class="filename">~/.config/wireshark/*</code> (unless there is already <code class="filename">~/.wireshark/*</code> in the system)
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Though the default configuration parameters are very sane, reference the configuration section of the <a class="ulink" href="https://www.wireshark.org/docs/wsug_html/">Wireshark User's Guide</a> for configuration information. Most of <span class="application">Wireshark</span> 's configuration can be accomplished using the menu options of the <span class="command"><strong>wireshark</strong></span> graphical interfaces.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you want to look at packets, make sure you don't filter them out with <a class="xref" href="../postlfs/iptables.md" title="iptables-1.8.13">iptables-1.8.13</a>. If you want to exclude certain classes of packets, it is more efficient to do it with <span class="application">iptables</span> than it is with <span class="application">Wireshark</span>.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">capinfos, captype, dumpcap, editcap, idl2wrs, mergecap, randpkt, rawshark, reordercap, sharkd, text2pcap, tshark, and wireshark</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libwireshark.so, libwiretap.so, libwsutil.so, and numerous modules under /usr/lib/wireshark/plugins</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{lib,share}/wireshark and /usr/share/doc/wireshark-4.6.6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="capinfos"></a><span class="command"><span class="term"><strong>capinfos</strong></span></span>           reads a saved capture file and returns any or all of several statistics about that file. It is able to detect and read any capture supported by the <span class="application">Wireshark</span> package
  <a id="captype"></a><span class="command"><span class="term"><strong>captype</strong></span></span>             prints the file types of capture files
  <a id="editcap"></a><span class="command"><span class="term"><strong>editcap</strong></span></span>             edits and/or translates the format of capture files. It knows how to read <span class="application">libpcap</span> capture files, including those of <span class="command"><strong>tcpdump</strong></span>, <span class="application">Wireshark</span> and other tools that write captures in that format
  <a id="idl2wrs"></a><span class="command"><span class="term"><strong>idl2wrs</strong></span></span>             is a program that takes a user specified CORBA IDL file and generates <span class="quote">“<span class="quote">C</span>”</span> source code for a <span class="application">Wireshark</span> <span class="quote">“<span class="quote">plugin.</span>”</span> It relies on two Python programs <span class="command"><strong>wireshark_be.py</strong></span> and <span class="command"><strong>wireshark_gen.py</strong></span>, which are not installed by default. They have to be copied manually from the <code class="filename">tools</code> directory to the <code class="filename">$PYTHONPATH/site-packages/</code> directory
  <a id="mergecap"></a><span class="command"><span class="term"><strong>mergecap</strong></span></span>           combines multiple saved capture files into a single output file
  <a id="randpkt"></a><span class="command"><span class="term"><strong>randpkt</strong></span></span>             creates random-packet capture files
  <a id="rawshark"></a><span class="command"><span class="term"><strong>rawshark</strong></span></span>           dumps and analyzes raw libpcap data
  <a id="reordercap"></a><span class="command"><span class="term"><strong>reordercap</strong></span></span>       reorders timestamps of input file frames into an output file
  <a id="sharkd"></a><span class="command"><span class="term"><strong>sharkd</strong></span></span>               is a daemon that listens on UNIX sockets
  <a id="text2pcap"></a><span class="command"><span class="term"><strong>text2pcap</strong></span></span>         reads in an ASCII hex dump and writes the data described into a <span class="application">libpcap</span>-style capture file
  <a id="tshark"></a><span class="command"><span class="term"><strong>tshark</strong></span></span>               is a TTY-mode network protocol analyzer. It lets you capture packet data from a live network or read packets from a previously saved capture file
  <a id="wireshark-prog"></a><span class="command"><span class="term"><strong>wireshark</strong></span></span>    is the Qt GUI network protocol analyzer. It lets you interactively browse packet data from a live network or from a previously saved capture file
  <a id="libwireshark"></a><span class="term"><code class="filename">libwireshark.so</code></span>   contains functions used by the <span class="application">Wireshark</span> programs to perform filtering and packet capturing
  <a id="libwiretap"></a><span class="term"><code class="filename">libwiretap.so</code></span>       is a library being developed as a future replacement for <code class="filename">libpcap</code>, the current standard Unix library for packet capturing. For more information, see the <code class="filename">README</code> file in the source <code class="filename">wiretap</code> directory
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](whois.md "Whois-5.6.6")

    Whois-5.6.6

-   [Next](netlibs.md "Networking Libraries")

    Networking Libraries

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
