<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](uchardet.md "Uchardet-0.0.8")

    Uchardet-0.0.8

-   [Next](utfcpp.md "utfcpp-4.1.1")

    utfcpp-4.1.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Umockdev-0.19.7 {#umockdev-0.19.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Umockdev {#introduction-to-umockdev}

The <span class="application">Umockdev</span> package contains a framework that allows a developer to mock devices for use in unit testing.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/martinpitt/umockdev/releases/download/0.19.7/umockdev-0.19.7.tar.xz">https://github.com/martinpitt/umockdev/releases/download/0.19.7/umockdev-0.19.7.tar.xz</a>

-   Download MD5 sum: c673fd819d8850d28692736956feea79

-   Download size: 488 KB

-   Estimated disk space required: 8.0 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### Umockdev Dependencies

#### Required

<a class="xref" href="libgudev.md" title="libgudev-238">libgudev-238</a>, <a class="xref" href="../basicnet/libpcap.md" title="libpcap-1.10.6">libpcap-1.10.6</a>, and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> (for tests), <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (for tests), and <a class="ulink" href="http://www.gphoto.org/">libgphoto2</a> (for tests)
</div>

<div class="installation" lang="en">
## Installation of Umockdev {#installation-of-umockdev}

Install <span class="application">Umockdev</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue as the <code class="systemitem">root</code> user: <span class="command"><strong>ninja test</strong></span>. One test needs to be run in an X session.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D gtk_doc=true</code>: Use this switch if you have <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> installed and wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">umockdev-record, umockdev-run, and umockdev-wrapper</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libumockdev-preload.so and libumockdev.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/umockdev-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- ------------------------------------------------------------------------------------------
  <a id="umockdev-record"></a><span class="command"><span class="term"><strong>umockdev-record</strong></span></span>     records Linux devices and their ancestors from sysfs/udev or records ioctls for a device
  <a id="umockdev-run"></a><span class="command"><span class="term"><strong>umockdev-run</strong></span></span>           runs a program under an <span class="application">umockdev</span> testbed
  <a id="umockdev-wrapper"></a><span class="command"><span class="term"><strong>umockdev-wrapper</strong></span></span>   wraps a program around <code class="filename">libumockdev-preload.so.0</code> through LD_PRELOAD
  <a id="libumockdev"></a><span class="term"><code class="filename">libumockdev.so</code></span>             provides API functions that allow mocking hardware devices for unit testing
  ---------------------------------------------------------------- ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](uchardet.md "Uchardet-0.0.8")

    Uchardet-0.0.8

-   [Next](utfcpp.md "utfcpp-4.1.1")

    utfcpp-4.1.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
