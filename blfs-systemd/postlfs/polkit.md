<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](p11-kit.md "p11-kit-0.26.2")

    p11-kit-0.26.2

-   [Next](polkit-gnome.md "polkit-gnome-0.105")

    polkit-gnome-0.105

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Polkit-127 {#polkit-127}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Polkit {#introduction-to-polkit}

<span class="application">Polkit</span> is a toolkit for defining and handling authorizations. It is used for allowing unprivileged processes to communicate with privileged processes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/polkit-org/polkit/archive/127/polkit-127.tar.gz">https://github.com/polkit-org/polkit/archive/127/polkit-127.tar.gz</a>

-   Download MD5 sum: 2cc95f1b02fc1de6c9e52db986642ec4

-   Download size: 484 KB

-   Estimated disk space required: 7.8 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests; using parallelism=4)
</div>

### Polkit Dependencies

#### Required

<a class="xref" href="../general/duktape.md" title="duktape-2.7.0">duktape-2.7.0</a> and <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended)

#### Recommended

<a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <span class="phrase">and</span> <a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Since <span class="command"><span class="phrase"><strong>systemd-logind</strong></span></span> uses PAM to register user sessions, it is a good idea to build <span class="application">Polkit</span> with PAM support so <span class="command"><span class="phrase"><strong>systemd-logind</strong></span></span> can track <span class="application">Polkit</span> sessions.
</div>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> (required for tests)

#### Required Runtime Dependencies

<a class="xref" href="../general/systemd.md" title="Systemd-260.2">Systemd-260.2</a>

#### Optional Runtime Dependencies

One polkit authentication agent for using polkit in the graphical environment: <span class="application">polkit-kde-agent</span> in <a class="xref" href="../kde/plasma-all.md" title="Building Plasma">Plasma-6.6.5</a> for KDE, the agent built in <a class="xref" href="../gnome/gnome-shell.md" title="gnome-shell-50.2">gnome-shell-50.2</a> for GNOME, <a class="xref" href="polkit-gnome.md" title="polkit-gnome-0.105">polkit-gnome-0.105</a> for XFCE, and <a class="xref" href="../lxqt/lxqt-policykit.md" title="lxqt-policykit-2.4.0">lxqt-policykit-2.4.0</a> for LXQt

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> is installed, then <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a> and <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> are required. If you have installed <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, but you do not want to install any of the DocBook packages mentioned, you will need to use <code class="option">-D man=false</code> in the instructions below.
</div>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Some tests need user namespace support. If you are going to run the test suite, enable the support and recompile the kernel if necessary:

```console
General setup --->
  -*- Namespaces support --->                                       [NAMESPACES]
    [*] User namespace                                                 [USER_NS]
```
</div>

<div class="installation" lang="en">
## Installation of Polkit {#installation-of-polkit}

There should be a dedicated user and group to take control of the <span class="command"><strong>polkitd</strong></span> daemon after it is started. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -fg 27 polkitd &&
useradd -c "PolicyKit Daemon Owner" -d /etc/polkit-1 -u 27 \
        -g polkitd -s /bin/false polkitd
```

Install <span class="application">Polkit</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                   \
      --prefix=/usr              \
      --buildtype=release        \
      -D man=true                \
      -D session_tracking=logind \
      -D tests=true
```

Build the package:

```bash
ninja
```

To test the results, first ensure that the system <span class="application">D-Bus</span> daemon is running, and both <a class="xref" href="../general/python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a> and <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> are installed. Then run <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D tests=true`*: This switch allows to run the test suite of this package. As <span class="application">Polkit</span> is used for authorizations, its integrity can affect system security. So it's recommended to run the test suite building this package.

<code class="option">-D os_type=lfs</code>: Use this switch if you did not create the <code class="filename">/etc/lfs-release</code> file or distribution auto detection will fail and you will be unable to use <span class="application">Polkit</span>.

<code class="option">-D authfw=shadow</code>: This switch enables the package to use the <span class="application">Shadow</span> rather than the <span class="application">Linux PAM</span> Authentication framework. Use it if you have not installed <span class="application">Linux PAM</span>.

<code class="option">-D introspection=false</code>: Use this option if you are certain that you do not need gobject-introspection files for polkit, or do not have installed <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> with GObject Introspection.

<code class="option">-D man=false</code>: Use this option to disable generating and installing manual pages. This is useful if libxslt is not installed.

<code class="option">-D examples=true</code>: Use this option to build the example programs.

<code class="option">-D gtk_doc=true</code>: Use this option to enable building and installing the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pkaction, pkcheck, pkexec, pkttyagent, and polkitd</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpolkit-agent-1.so and libpolkit-gobject-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/polkit-1, /usr/include/polkit-1, /usr/lib/polkit-1, /usr/share/gtk-doc/html/polkit-1, and /usr/share/polkit-1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------
  <a id="pkaction"></a><span class="command"><span class="term"><strong>pkaction</strong></span></span>                         is used to obtain information about registered PolicyKit actions
  <a id="pkcheck"></a><span class="command"><span class="term"><strong>pkcheck</strong></span></span>                           is used to check whether a process is authorized for action
  <a id="pkexec"></a><span class="command"><span class="term"><strong>pkexec</strong></span></span>                             allows an authorized user to execute a command as another user
  <a id="pkttyagent"></a><span class="command"><span class="term"><strong>pkttyagent</strong></span></span>                     is used to start a textual authentication agent for the subject
  <a id="polkitd"></a><span class="command"><span class="term"><strong>polkitd</strong></span></span>                           provides the org.freedesktop.PolicyKit1 <span class="application">D-Bus</span> service on the system message bus
  <a id="libpolkit-agent-1"></a><span class="term"><code class="filename">libpolkit-agent-1.so</code></span>       contains the <span class="application">Polkit</span> authentication agent API functions
  <a id="libpolkit-gobject-1"></a><span class="term"><code class="filename">libpolkit-gobject-1.so</code></span>   contains the <span class="application">Polkit</span> authorization API functions
  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](p11-kit.md "p11-kit-0.26.2")

    p11-kit-0.26.2

-   [Next](polkit-gnome.md "polkit-gnome-0.105")

    polkit-gnome-0.105

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
