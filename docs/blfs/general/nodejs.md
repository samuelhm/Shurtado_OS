<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](mtdev.md "mtdev-1.1.7")

    mtdev-1.1.7

-   [Next](npth.md "npth-1.8")

    npth-1.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Node.js-24.16.0 {#node.js-24.16.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Node.js {#introduction-to-node.js}

<span class="application">Node.js</span> is a <span class="application">JavaScript</span> runtime built on <span class="application">Chrome's</span> V8 JavaScript engine.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://nodejs.org/dist/v24.16.0/node-v24.16.0.tar.xz">https://nodejs.org/dist/v24.16.0/node-v24.16.0.tar.xz</a>

-   Download MD5 sum: 9d59af23e08e2f1167957c2d0dbd403a

-   Download size: 53 MB

-   Estimated disk space required: 1.5 GB (with tests)

-   Estimated build time: 16 SBU (add 4.3 SBU for tests: both using parallelism=8 and 8 CPUs online, parts of the tests will use all online CPUs)
</div>

### Node.js Dependencies

#### Required

<a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a>

#### Recommended

<a class="xref" href="brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="../basicnet/c-ares.md" title="c-ares-1.34.6">c-ares-1.34.6</a>, <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="libuv.md" title="libuv-1.52.1">libuv-1.52.1</a>, <a class="xref" href="../basicnet/nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a>, and <a class="xref" href="simdutf.md" title="simdutf-9.0.0">simdutf-9.0.0</a>

#### Optional

<a class="ulink" href="https://github.com/nodejs/http-parser">http-parser</a> and <a class="ulink" href="https://www.npmjs.com/">npm</a> (an internal copy of <span class="command"><strong>npm</strong></span> will be installed if not present)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of Node.js {#installation-of-node.js}

Build <span class="application">Node.js</span> by running the following commands:

```bash
./configure --prefix=/usr          \
            --shared-brotli        \
            --shared-cares         \
            --shared-libuv         \
            --shared-nghttp2       \
            --shared-openssl       \
            --shared-simdutf       \
            --shared-zlib          \
            --with-intl=system-icu &&
make
```

To test the results, issue: <span class="command"><strong>make test-only</strong></span>. Out of over 4600 tests, about 10 in the 'parallel' test suite are known to fail. Some failures are due to assumptions about dependent packages like icu and nghttp2 versions that are earlier than what is in BLFS. Also note that if you pass a high parallelism option (like -j20; -j8 is fine) to the test procedure, additional tests will run out of memory and fail. 12 test failures are known to occur with OpenSSL-4 but do not affect usage at runtime.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
ln -sf node /usr/share/doc/node-24.16.0
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-intl=system-icu`*: This parameter uses the system version of <span class="application">ICU</span>. Other values are <code class="option">full-icu</code> (to build a local, full <span class="application">icu</span> library) and <code class="option">small-icu</code> (to build a local, minimal <span class="application">ICU</span> library).

*`--shared-{brotli,cares,libuv,nghttp2,openssl,simdutf,zlib}`*: This parameter uses the system installed libraries instead of local copies.

<code class="option">--without-npm</code>: This option tells the build system to not build <span class="application">npm</span> (use if you'd like to build a separate <span class="application">npm</span> later).

<code class="option">--shared-http-parser</code>: This option uses the system installed <span class="application">http-parser</span> library instead of a local copy if you have installed it.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">corepack, node, npm, and npx</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/node, /usr/lib/node_modules/{corepack,npm}, /usr/share/doc/{node,node-24.16.0}, and /usr/share/systemtap/tapset</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------------
  <a id="corepack"></a><span class="command"><span class="term"><strong>corepack</strong></span></span>     is an experimental tool to help with managing versions of package managers.
  <a id="node"></a><span class="command"><span class="term"><strong>node</strong></span></span>             is the server-side JavaScript runtime
  <a id="npm"></a><span class="command"><span class="term"><strong>npm</strong></span></span>               is the <span class="application">Node.js</span> package manager
  <a id="npx"></a><span class="command"><span class="term"><strong>npx</strong></span></span>               is short for **`npm exec`**, which allows running commands from <span class="application">NPM</span> packages
  <span class="term"><code class="filename">/usr/lib/node_modules/npm/</code></span>   is the installation root for Node.js executables and libraries
  -------------------------------------------------- ----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mtdev.md "mtdev-1.1.7")

    mtdev-1.1.7

-   [Next](npth.md "npth-1.8")

    npth-1.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
