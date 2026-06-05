<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](swig.md "SWIG-4.4.1")

    SWIG-4.4.1

-   [Next](unifdef.md "unifdef-2.12")

    unifdef-2.12

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Tk-8.6.18 {#tk-8.6.18}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Tk {#introduction-to-tk}

The <span class="application">Tk</span> package contains a TCL GUI Toolkit.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/tcl/tk8.6.18-src.tar.gz">https://downloads.sourceforge.net/tcl/tk8.6.18-src.tar.gz</a>

-   Download MD5 sum: 63a13111a136118ec72faee1228143e6

-   Download size: 4.4 MB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.3 SBU (add 5.6 SBU for tests)
</div>

### Tk Dependencies

#### Required

<a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>
</div>

<div class="installation" lang="en">
## Installation of Tk {#installation-of-tk}

Install <span class="application">Tk</span> by running the following commands:

```bash
cd unix &&
./configure --prefix=/usr \
            --mandir=/usr/share/man \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&

make &&

sed -e "s@^\(TK_SRC_DIR='\).*@\1/usr/include'@" \
    -e "/TK_B/s@='\(-L\)\?.*unix@='\1/usr/lib@" \
    -i tkConfig.sh
```

Running the tests is not recommended. Failures will be reported during the tests, depending on the screen resolution/capabilities, fonts installed and other X related parameters, but the end report can show 0 failures. Some tests will steal focus and some might crash your X Server. To test the results anyway, issue: <span class="command"><strong>make test</strong></span>. Ensure you run it from an X Window display device with the GLX extensions loaded, but even so, tests might hang.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                      &&
make install-private-headers      &&
ln -v -sf wish8.6 /usr/bin/wish   &&
chmod -v 755 /usr/lib/libtk8.6.so
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-64bit`*: This switch is used to enable 64 bit support in <span class="application">Tk</span> on 64 bit operating systems.

<span class="command"><strong>make install-private-headers</strong></span>: This command is used to install the <span class="application">Tk</span> library interface headers used by other packages if they link to the <span class="application">Tk</span> library.

<span class="command"><strong>ln -v -sf wish8.6 /usr/bin/wish</strong></span>: This command is used to create a compatibility symbolic link to the <span class="command"><strong>wish8.6</strong></span> file as many packages expect a file named <span class="command"><strong>wish</strong></span>.

<span class="command"><strong>sed -e ... tkConfig.sh</strong></span>: The <span class="application">Tk</span> package expects that its source tree is preserved so that packages depending on it for their compilation can utilize it. This <span class="command"><strong>sed</strong></span> removes the references to the build directory and replaces them with saner system-wide locations.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">wish and wish8.6</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libtk8.6.so and libtkstub8.6.a</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/tk8.6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
  <a id="wish"></a><span class="command"><span class="term"><strong>wish</strong></span></span>            is a symlink to the <span class="command"><strong>wish8.6</strong></span> program
  <a id="wish-eight"></a><span class="command"><span class="term"><strong>wish8.6</strong></span></span>   is a simple shell containing the <span class="application">Tk</span> toolkit that creates a main window and then processes <span class="application">Tcl</span> commands
  <a id="libtk"></a><span class="term"><code class="filename">libtk8.6.so</code></span>       contains the API functions required by <span class="application">Tk</span>
  ------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](swig.md "SWIG-4.4.1")

    SWIG-4.4.1

-   [Next](unifdef.md "unifdef-2.12")

    unifdef-2.12

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
