<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](neon.md "neon-0.37.1")

    neon-0.37.1

-   [Next](rpcsvc-proto.md "rpcsvc-proto-1.4.4")

    rpcsvc-proto-1.4.4

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# nghttp2-1.69.0 {#nghttp2-1.69.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to nghttp2 {#introduction-to-nghttp2}

<span class="application">nghttp2</span> is an implementation of HTTP/2 and its header compression algorithm, HPACK.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/nghttp2/nghttp2/releases/download/v1.69.0/nghttp2-1.69.0.tar.xz">https://github.com/nghttp2/nghttp2/releases/download/v1.69.0/nghttp2-1.69.0.tar.xz</a>

-   Download MD5 sum: 7015bee1f5a24012b848a98bfe4864b1

-   Download size: 1.7 MB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.1 SBU
</div>

### nghttp2 Dependencies

#### Recommended

<a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

The following are only used if building the full package instead of only the main libraries: <a class="xref" href="c-ares.md" title="c-ares-1.34.6">c-ares-1.34.6</a>, <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>, <a class="xref" href="libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>, <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>, <a class="ulink" href="https://jemalloc.net/">jemalloc</a>, <a class="ulink" href="http://software.schmorp.de/pkg/libev.md">libev</a>, <a class="ulink" href="https://mruby.org/">mruby</a>, and <a class="ulink" href="https://tatsuhiro-t.github.io/spdylay/">Spdylay</a>.
</div>

<div class="installation" lang="en">
## Installation of nghttp2 {#installation-of-nghttp2}

Install <span class="application">nghttp2</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --disable-static  \
            --enable-lib-only \
            --docdir=/usr/share/doc/nghttp2-1.69.0 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-lib-only`*: only build libnghttp2. Omit this switch if you'd like to build the example applications, Python bindings, or the C++ asio library.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libnghttp2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/nghttp2, /usr/share/nghttp2, and /usr/share/doc/nghttp2-1.69.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------------------------
  <a id="libnghttp2"></a><span class="term"><code class="filename">libnghttp2.so</code></span>   an implementation of the Hypertext Transfer Protocol version 2 in C
  ---------------------------------------------------- ---------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](neon.md "neon-0.37.1")

    neon-0.37.1

-   [Next](rpcsvc-proto.md "rpcsvc-proto-1.4.4")

    rpcsvc-proto-1.4.4

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
