<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](bluez.md "BlueZ-5.86")

    BlueZ-5.86

-   [Next](colord.md "Colord-1.4.8")

    Colord-1.4.8

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Bubblewrap-0.11.2 {#bubblewrap-0.11.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Bubblewrap {#introduction-to-bubblewrap}

<span class="application">Bubblewrap</span> is a setuid implementation of user namespaces, or sandboxing, that provides access to a subset of kernel user namespace features. Bubblewrap allows user owned processes to run in an isolated environment with limited access to the underlying filesystem.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/containers/bubblewrap/releases/download/v0.11.2/bubblewrap-0.11.2.tar.xz">https://github.com/containers/bubblewrap/releases/download/v0.11.2/bubblewrap-0.11.2.tar.xz</a>

-   Download MD5 sum: 6376255e2e505100e01b20c2dafa7faf

-   Download size: 116 KB

-   Estimated disk space required: 3.8 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### Bubblewrap Dependencies

#### Optional

<a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (to generate manual pages), <a class="xref" href="libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a> (built with python bindings, for tests), <a class="ulink" href="https://github.com/scop/bash-completion">bash-completion</a>, and <a class="ulink" href="https://github.com/SELinuxProject/selinux">SELinux</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

When this package began, upstream expected it could be installed suid-root. That was a long time ago, suid-root is generally considered a bad idea. As well as the default namespaces, this package requires the optional User namespace to be enabled. If that has not yet been enabled, select the following option in the kernel configuration and recompile the kernel:

```console
General setup --->
  -*- Namespaces support --->                                       [NAMESPACES]
    [*] User namespace                                                 [USER_NS]
```
</div>

<div class="installation" lang="en">
## Installation of Bubblewrap {#installation-of-bubblewrap}

Install <span class="application">Bubblewrap</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

Next, if you desire to run the test suite, fix an issue caused by the merged-/usr configuration in LFS:

```bash
sed 's@symlink usr/lib64@ro-bind-try /lib64@' -i ../tests/libtest.sh
```

To test the results, issue (as a user other than the <code class="systemitem">root</code> user): <span class="command"><strong>ninja test</strong></span>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">bwrap</span>
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

  ------------------------------------------ ---------------------------------------------
  <a id="bwrap"></a><span class="command"><span class="term"><strong>bwrap</strong></span></span>   generates a sandbox for a program to run in
  ------------------------------------------ ---------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](bluez.md "BlueZ-5.86")

    BlueZ-5.86

-   [Next](colord.md "Colord-1.4.8")

    Colord-1.4.8

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
