<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](7zip.md "7zip-26.01")

    7zip-26.01

-   [Next](acpid.md "acpid-2.0.34")

    acpid-2.0.34

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# AccountsService-23.13.9 {#accountsservice-23.13.9}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to AccountsService {#introduction-to-accountsservice}

The <span class="application">AccountsService</span> package provides a set of <span class="application">D-Bus</span> interfaces for querying and manipulating user account information and an implementation of those interfaces based on the <a class="ulink" href="https://man.archlinux.org/man/usermod.8">usermod(8)</a>, <a class="ulink" href="https://man.archlinux.org/man/useradd.8">useradd(8)</a>, and <a class="ulink" href="https://man.archlinux.org/man/userdel.8">userdel(8)</a> commands.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/accountsservice/accountsservice-23.13.9.tar.xz">https://www.freedesktop.org/software/accountsservice/accountsservice-23.13.9.tar.xz</a>

-   Download MD5 sum: 03dccfe1b306b7ca19743e86d118e64d

-   Download size: 621 KB

-   Estimated disk space required: 9.8 MB (add 0.5 MB for tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### AccountsService Dependencies

#### Required

<a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>

#### Recommended

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (runtime),</span> and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>

#### Optional (for tests)

<a class="xref" href="python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> and <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>
</div>

<div class="installation" lang="en">
## Installation of AccountsService {#installation-of-accountsservice}

First, rename a directory whose presence prevents the build system from running if <a class="xref" href="python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> is not installed:

```bash
mv tests/dbusmock{,-tests}
```

Then fix a test script so that the new directory is found, and adapt it for Python 3.12.0 or later:

```bash
sed -e '/accounts_service\.py/s/dbusmock/dbusmock-tests/' \
    -e 's/assertEquals/assertEqual/'                      \
    -i tests/test-libaccountsservice.py
```

Fix one test that fails if the <code class="option">en_IE.UTF-8</code> locale is not installed:

```bash
sed -i '/^SIMULATED_SYSTEM_LOCALE/s/en_IE.UTF-8/en_HK.iso88591/' tests/test-daemon.py
```

Install <span class="application">AccountsService</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D admin_group=adm
```

Now adapt the shipped mocklibc copy to allow building the test suite with GCC 14 or later:

```bash
grep 'print_indent'     ../subprojects/mocklibc-1.0/src/netgroup.c \
     | sed 's/ {/;/' >> ../subprojects/mocklibc-1.0/src/netgroup.h &&
sed -i '1i#include <stdio.h>'                                      \
    ../subprojects/mocklibc-1.0/src/netgroup.h
```

Build the package:

```bash
ninja
```

To test the package, issue <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D admin_group=adm`*: This switch sets the group for administrator accounts.

<code class="option">-D docbook=true</code>: This switch enables building the D-Bus interface API documentation (needs <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>).

<code class="option">-D gtk_doc=true</code>: This switch enables building the libaccountsservice API documentation (needs <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>).

<code class="option">-D vapi=false</code>: This switch disables building the vala bindings. Use it if you have not installed <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>.
</div>

<div class="configuration" lang="en">
## Configuring AccountsService {#configuring-accountsservice}

To allow users in the adm group to be listed as Administrators, execute the following commands as the <code class="systemitem">root</code> user:

```bash
cat > /etc/polkit-1/rules.d/40-adm.rules << "EOF"
polkit.addAdminRule(function(action, subject) {
   return ["unix-group:adm"];
   });
EOF
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">accounts-daemon (in <code class="filename">/usr/libexec</code>)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libaccountsservice.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/accountsservice-1.0, /usr/share/accountsservice, /usr/share/gtk-doc/html/libaccountsservice (optional), and /var/lib/AccountsService</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ------------------------------------------------------------
  <a id="accounts-daemon"></a><span class="command"><span class="term"><strong>accounts-daemon</strong></span></span>         is the <span class="application">AccountsService</span> daemon
  <a id="libaccountsservice"></a><span class="term"><code class="filename">libaccountsservice.so</code></span>   contains the <span class="application">AccountsService</span> API functions
  -------------------------------------------------------------------- ------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](7zip.md "7zip-26.01")

    7zip-26.01

-   [Next](acpid.md "acpid-2.0.34")

    acpid-2.0.34

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
