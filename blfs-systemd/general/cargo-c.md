<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](prog.md "Programming")

    Programming

-   [Next](cbindgen.md "Cbindgen-0.29.3")

    Cbindgen-0.29.3

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# cargo-c-0.10.23 {#cargo-c-0.10.23}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to cargo-c {#introduction-to-cargo-c}

The <span class="application">cargo-c</span> package creates a cargo subcommand to build and install C-ABI compatible dynamic and static libraries.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lu-zero/cargo-c/archive/v0.10.23/cargo-c-0.10.23.tar.gz">https://github.com/lu-zero/cargo-c/archive/v0.10.23/cargo-c-0.10.23.tar.gz</a>

-   Download MD5 sum: e9af606a4a2d0c60c9f825250e1bc013

-   Download size: 40 KB

-   Estimated disk space required: 1.4 GB (with tests)

-   Estimated build time: 0.7 SBU (add 5.2 SBU for tests)
</div>

### cargo-c Dependencies

#### Required

<a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>

#### Recommended

<a class="xref" href="libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of cargo-c {#installation-of-cargo-c}

First, download a file to ensure that <span class="command"><strong>cargo</strong></span> uses the dependency versions specified by the upstream developers when this cargo-c version (0.10.23) was released. Without this, the latest versions of the dependencies would be used and they might cause breakages:

```bash
curl -fLO https://github.com/lu-zero/cargo-c/releases/download/v0.10.23/Cargo.lock
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Normally we would put such a download into an <span class="quote">“<span class="quote">Additional Downloads</span>”</span> section. But in this case we cannot tell the package name and version from the file name <code class="filename">Cargo.lock</code>, so it's better not to put the ambiguously-named file outside the <code class="filename">cargo-c-0.10.23</code> directory. We use <span class="command"><strong>curl</strong></span> here because the <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a> package should have been installed as a required dependency of <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>.

The md5sum of the file should be <code class="literal">9c2c93fe7da6d1d10bc50bbd95a49d1d</code>.
</div>

Install <span class="application">cargo-c</span> by running the following commands:

```bash
export LIBSSH2_SYS_USE_PKG_CONFIG=1    &&
export LIBSQLITE3_SYS_USE_PKG_CONFIG=1 &&

cargo build --release
```

To test the results, issue: <span class="command"><strong>cargo test --release</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
install -vm755 target/release/cargo-{capi,cbuild,cinstall,ctest} /usr/bin/
```

Finally, unset the exported environment variables:

```bash
unset LIB{SSH2,SQLITE3}_SYS_USE_PKG_CONFIG
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>export LIBSSH2_SYS_USE_PKG_CONFIG=1</strong></span>: Allow <span class="command"><strong>cargo</strong></span> to link to system libssh2. Omit this command if you've not installed <a class="xref" href="libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>.

<span class="command"><strong>export LIBSQLITE3_SYS_USE_PKG_CONFIG=1</strong></span>: Allow <span class="command"><strong>cargo</strong></span> to link to system sqlite.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cargo-capi, cargo-cbuild, cargo-cinstall, and cargo-ctest</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](prog.md "Programming")

    Programming

-   [Next](cbindgen.md "Cbindgen-0.29.3")

    Cbindgen-0.29.3

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
