<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](unrar.md "UnRar-7.2.4")

    UnRar-7.2.4

-   [Next](which.md "Which-2.25 and Alternatives")

    Which-2.25 and Alternatives

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# UPower-1.91.2 {#upower-1.91.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to UPower {#introduction-to-upower}

The <span class="application">UPower</span> package provides an interface for enumerating power devices, listening to device events, and querying history and statistics. Any application or service on the system can access the org.freedesktop.UPower service via the system message bus.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/upower/upower/-/archive/v1.91.2/upower-v1.91.2.tar.bz2">https://gitlab.freedesktop.org/upower/upower/-/archive/v1.91.2/upower-v1.91.2.tar.bz2</a>

-   Download MD5 sum: 4870a589b5e622f7c39bb3a978f1a7c8

-   Download size: 168 KB

-   Estimated disk space required: 6.5 MB (add 3.8 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.8 SBU for tests)
</div>

### UPower Dependencies

#### Required

<a class="xref" href="libgudev.md" title="libgudev-238">libgudev-238</a> and <a class="xref" href="libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>

#### Optional (Required if building GNOME)

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>, <a class="xref" href="python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a>, <a class="xref" href="umockdev.md" title="Umockdev-0.19.7">umockdev-0.19.7</a> (for part of the test suite), and <a class="ulink" href="https://libimobiledevice.org/">libimobiledevice</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
General setup --->
  -*- Namespaces support --->                                       [NAMESPACES]
    [*] User namespace                                                 [USER_NS]
```
</div>

<div class="installation" lang="en">
## Installation of UPower {#installation-of-upower}

Install <span class="application">UPower</span> by running the following commands:

```bash
mkdir build               &&
cd    build               &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gtk-doc=false    \
      -D man=false        &&
ninja
```

To test the results, issue: <span class="command"><strong>LC_ALL=C ninja test</strong></span>. The test suite should be run from a local GUI session started with dbus-launch. On 32-bit machines, one test will fail due to rounding errors: <code class="filename">Tests.test_battery_energy_charge_mixed</code>. On some systems, two tests relating to the headphone hotplug feature are known to fail. Those can be safely ignored since the functionality still works.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D gtk-doc=false`*: Prevents building the documentation. Remove this if you have <span class="application">GTK-Doc</span> installed and wish to build the documentation.

*`-D man=false`*: Prevents building the manual pages. Remove this if you have <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> and <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> installed and wish to build the manual pages.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">upower</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libupower-glib.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/UPower, /usr/include/libupower-glib, and /var/lib/upower</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------
  <a id="upower-prog"></a><span class="command"><span class="term"><strong>upower</strong></span></span>              is the <span class="application">UPower</span> command line tool
  <a id="libupower-glib"></a><span class="term"><code class="filename">libupower-glib.so</code></span>   contains the <span class="application">UPower</span> API functions
  ------------------------------------------------------------ ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](unrar.md "UnRar-7.2.4")

    UnRar-7.2.4

-   [Next](which.md "Which-2.25 and Alternatives")

    Which-2.25 and Alternatives

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
