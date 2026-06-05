<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](cargo-c.md "cargo-c-0.10.23")

    cargo-c-0.10.23

-   [Next](clisp.md "Clisp-2.49.95")

    Clisp-2.49.95

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Cbindgen-0.29.3 {#cbindgen-0.29.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Cbindgen {#introduction-to-cbindgen}

<span class="application">Cbindgen</span> can be used to generate C bindings for <span class="application">Rust</span> code.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/mozilla/cbindgen/archive/v0.29.3/cbindgen-0.29.3.tar.gz">https://github.com/mozilla/cbindgen/archive/v0.29.3/cbindgen-0.29.3.tar.gz</a>

-   Download MD5 sum: 28cd49d81e2cfb20e47efd31040fbc2f

-   Download size: 246 KB

-   Estimated disk space required: 123 MB (add 553 MB for tests)

-   Estimated build time: 0.4 SBU (add 0.2 SBU for tests), both on a 4-core machine
</div>

### cbindgen Dependencies

#### Required

<a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of cbindgen {#installation-of-cbindgen}

Install <span class="application">cbindgen</span> by running the following commands:

```bash
cargo build --release
```

To test the results, issue: <span class="command"><strong>cargo test --release</strong></span>. Three tests in <code class="filename">profile.rs</code> are known to fail because they expect some Rust unstable features disabled in the BLFS <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a> configuration.

Now, as the <code class="systemitem">root</code> user:

```bash
install -Dm755 target/release/cbindgen /usr/bin/
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">cbindgen</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">none</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- ----------------------------------------------------
  <a id="cbindgen-prog"></a><span class="command"><span class="term"><strong>cbindgen</strong></span></span>   generates C bindings for <span class="application">Rust</span> code
  ----------------------------------------------------- ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cargo-c.md "cargo-c-0.10.23")

    cargo-c-0.10.23

-   [Next](clisp.md "Clisp-2.49.95")

    Clisp-2.49.95

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
