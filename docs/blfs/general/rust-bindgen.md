<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](rust.md "Rustc-1.96.0")

    Rustc-1.96.0

-   [Next](scons.md "SCons-4.10.1")

    SCons-4.10.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# rust-bindgen-0.72.1 {#rust-bindgen-0.72.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to rust-bindgen {#introduction-to-rust-bindgen}

The <span class="application">rust-bindgen</span> package contains a utility that generates Rust bindings from C/C++ headers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/rust-lang/rust-bindgen/archive/refs/tags/v0.72.1/rust-bindgen-0.72.1.tar.gz">https://github.com/rust-lang/rust-bindgen/archive/refs/tags/v0.72.1/rust-bindgen-0.72.1.tar.gz</a>

-   Download MD5 sum: 49be3303557d072ce4c6987b2989be3c

-   Download size: 2.2 MB

-   Estimated disk space required: 219 MB

-   Estimated build time: 0.4 SBU (with parallelism=8)
</div>

### rust-bindgen Dependencies

#### Required

<a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a> and <a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (with Clang, runtime)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of rust-bindgen {#installation-of-rust-bindgen}

Install <span class="application">rust-bindgen</span> by running the following commands:

```bash
cargo build --release
```

To test the results, issue: <span class="command"><strong>cargo test --release</strong></span>. Four tests, <code class="filename">header_issue_544_stylo_creduce_2_hpp</code>, <code class="filename">header_constified_enum_module_overflow_hpp</code>, <code class="filename">header_typedef_pointer_overlap_h</code>, and <code class="filename">header_nsbasehashtable_hpp</code>, are known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
install -v -m755 target/release/bindgen /usr/bin
```

Still as the <code class="systemitem">root</code> user, install the Bash and Zsh completion support files:

```bash
bindgen --generate-shell-completions bash \
    > /usr/share/bash-completion/completions/bindgen
bindgen --generate-shell-completions zsh  \
    > /usr/share/zsh/site-functions/_bindgen
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">bindgen</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ------------------------------------------------
  <a id="bindgen"></a><span class="command"><span class="term"><strong>bindgen</strong></span></span>   generates bindings for Rust from C/C++ headers
  ---------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](rust.md "Rustc-1.96.0")

    Rustc-1.96.0

-   [Next](scons.md "SCons-4.10.1")

    SCons-4.10.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
