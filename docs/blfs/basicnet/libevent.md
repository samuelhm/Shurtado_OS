<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](ldns.md "ldns-1.9.0")

    ldns-1.9.0

-   [Next](libmnl.md "libmnl-1.0.5")

    libmnl-1.0.5

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libevent-2.1.12 {#libevent-2.1.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libevent {#introduction-to-libevent}

<span class="application">libevent</span> is an asynchronous event notification software library. The <span class="application">libevent</span> API provides a mechanism to execute a callback function when a specific event occurs on a file descriptor or after a timeout has been reached. Furthermore, <span class="application">libevent</span> also supports callbacks due to signals or regular timeouts.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz">https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz</a>

-   Download MD5 sum: b5333f021f880fe76490d8a799cd79f4

-   Download size: 1.0 MB

-   Estimated disk space required: 20 MB (add 4 MB for tests and 4 MB for API docs)

-   Estimated build time: 0.3 SBU (add 11 SBU for tests)
</div>

### libevent Dependencies

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for API documentation)
</div>

<div class="installation" lang="en">
## Installation of libevent {#installation-of-libevent}

First, fix an issue that prevents event_rpcgen.py from working:

```bash
sed -i 's/python/&3/' event_rpcgen.py
```

Install <span class="application">libevent</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

If you have <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed and wish to build API documentation, issue :

```bash
doxygen Doxyfile
```

To test the results, issue: <span class="command"><strong>make verify</strong></span>. Seven tests in every suite related to <code class="filename">regress_ssl.c</code> and <code class="filename">regress_http.c</code> are known to fail due to incompatibilities with OpenSSL-3. Some tests that are related to <code class="filename">regress_dns.c</code> are also known to fail intermittently due to insufficient test timeouts.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the API documentation, install it by issuing the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d /usr/share/doc/libevent-2.1.12/api &&
cp      -v -R       doxygen/html/* \
                    /usr/share/doc/libevent-2.1.12/api
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">event_rpcgen.py</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libevent_core.so, libevent_extra.so, libevent_openssl.so, libevent_pthreads.so and libevent.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/event2 and /usr/share/doc/libevent-2.1.12</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ldns.md "ldns-1.9.0")

    ldns-1.9.0

-   [Next](libmnl.md "libmnl-1.0.5")

    libmnl-1.0.5

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
