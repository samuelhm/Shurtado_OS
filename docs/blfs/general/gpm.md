<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](fcron.md "Fcron-3.4.0")

    Fcron-3.4.0

-   [Next](hwdata.md "hwdata-0.408")

    hwdata-0.408

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GPM-1.20.7 {#gpm-1.20.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GPM {#introduction-to-gpm}

The <span class="application">GPM</span> (General Purpose Mouse daemon) package contains a mouse server for the console and <span class="command"><strong>xterm</strong></span>. It not only provides cut and paste support generally, but its library component is used by various software such as <span class="application">Links</span> to provide mouse support to the application. It is useful on desktops, especially if following (Beyond) Linux From Scratch instructions; it's often much easier (and less error prone) to cut and paste between two console windows than to type everything by hand!

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/gpm/gpm-1.20.7.tar.bz2">https://anduin.linuxfromscratch.org/BLFS/gpm/gpm-1.20.7.tar.bz2</a>

-   Download MD5 sum: bf84143905a6a903dbd4d4b911a2a2b8

-   Download size: 820 KB

-   Estimated disk space required: 7.4 MB

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/gpm-1.20.7-consolidated-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/gpm-1.20.7-consolidated-1.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/gpm-1.20.7-gcc15_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/gpm-1.20.7-gcc15_fixes-1.patch</a>
</div>

### GPM Dependencies

#### Optional

<a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (for documentation)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following option in the kernel configuration and recompile the kernel if necessary:

```console
Device Drivers --->
  Input device support --->
    -*-   Generic input layer (needed for keyboard, mouse, ...)          [INPUT]
    <*/M>   Mouse interface                                     [INPUT_MOUSEDEV]
```
</div>

<div class="installation" lang="en">
## Installation of GPM {#installation-of-gpm}

Install <span class="application">GPM</span> by running the following commands:

```bash
patch -Np1 -i ../gpm-1.20.7-consolidated-1.patch                &&
patch -Np1 -i ../gpm-1.20.7-gcc15_fixes-1.patch                 &&
./autogen.sh                                                    &&
./configure --prefix=/usr --sysconfdir=/etc ac_cv_path_emacs=no &&
make
```

If <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> is installed, build the GPM manual as dvi, ps, and pdf formats:

```bash
make -C doc gpm.{dvi,ps} &&
dvipdfm doc/gpm.dvi -o doc/gpm.pdf
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                                          &&

install-info --dir-file=/usr/share/info/dir           \
             /usr/share/info/gpm.info                 &&

rm -fv /usr/lib/libgpm.a                              &&
ln -sfv libgpm.so.2.1.0 /usr/lib/libgpm.so            &&
install -v -m644 conf/gpm-root.conf /etc              &&

install -v -m755 -d /usr/share/doc/gpm-1.20.7/support &&
install -v -m644    doc/support/*                     \
                    /usr/share/doc/gpm-1.20.7/support &&
install -v -m644    doc/{FAQ,HACK_GPM,README*}        \
                    /usr/share/doc/gpm-1.20.7
```

If <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> is installed and you've built GPM manual as dvi, ps, and pdf formats, install them as the <code class="systemitem">root</code> user:

```bash
install -vm644 doc/gpm.{dvi,ps,pdf} /usr/share/doc/gpm-1.20.7
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>./autogen.sh</strong></span>: This command creates the missing <span class="command"><strong>configure</strong></span> script.

*`ac_cv_path_emacs=no`*: This variable works around an issue causing the package fail to build with <a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a> installed. It also suppresses the installations of some <span class="quote">“<span class="quote">Emacs support files</span>”</span> shipped with GPM. These files are quite outdated and they should be superseded with <a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a> built-in GPM support. If you need to use <a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a> in Linux console with mouse support, you should install (or reinstall) <a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a> <span class="bold"><strong>after</strong></span> GPM.

<span class="command"><strong>install-info ...</strong></span>: This package installs a <code class="filename">.info</code> file, but does not update the system <code class="filename">dir</code> file. This command makes the update.

<span class="command"><strong>ln -v -sfn libgpm.so.2.1.0 /usr/lib/libgpm.so</strong></span>: This command is used to create (or update) the <code class="filename">.so</code> symlink to the library.
</div>

<div class="configuration" lang="en">
## Configuring GPM {#configuring-gpm}

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>gpm</strong></span> daemon at boot, install the systemd unit from the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package by running the following command as the <code class="systemitem">root</code> user:

```bash
make install-gpm
```
</div>

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/gpm-root.conf</code> and <code class="filename">~/.gpm-root</code>: The default and individual user <span class="command"><strong>gpm-root</strong></span> configuration files.
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">GPM</span> is by default started with the following parameters: *`-m /dev/input/mice -t imps2`*. If the mentioned parameters don't suit your needs, you can override them by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -dm755 /etc/systemd/system/gpm.service.d &&
cat > /etc/systemd/system/gpm.service.d/99-user.conf << EOF
[Service]
ExecStart=
ExecStart=/usr/sbin/gpm <list of parameters>
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">disable-paste, display-buttons, display-coords, get-versions, gpm, gpm-root, hltest, mev, and mouse-test</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgpm.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/gpm-1.20.7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
  <a id="disable-paste"></a><span class="command"><span class="term"><strong>disable-paste</strong></span></span>       is a security mechanism used to disable the paste buffer
  <a id="display-buttons"></a><span class="command"><span class="term"><strong>display-buttons</strong></span></span>   is a simple program that reports the mouse buttons being pressed and released
  <a id="display-coords"></a><span class="command"><span class="term"><strong>display-coords</strong></span></span>     is a simple program that reports the mouse coordinates
  <a id="get-versions"></a><span class="command"><span class="term"><strong>get-versions</strong></span></span>         is used to report the <span class="application">GPM</span> library and server versions
  <a id="gpm-prog"></a><span class="command"><span class="term"><strong>gpm</strong></span></span>                      is a cut and paste utility and mouse server for virtual consoles
  <a id="gpm-root"></a><span class="command"><span class="term"><strong>gpm-root</strong></span></span>                 is a default handler for <span class="command"><strong>gpm</strong></span>. It is used to draw menus on the root window
  <a id="hltest"></a><span class="command"><span class="term"><strong>hltest</strong></span></span>                     is a simple sample application using the high-level library, meant to be read by programmers trying to use the high-level library
  <a id="mev"></a><span class="command"><span class="term"><strong>mev</strong></span></span>                           is a program to report mouse events
  <a id="mouse-test"></a><span class="command"><span class="term"><strong>mouse-test</strong></span></span>             is a tool for determining the mouse type and device it's attached to
  <a id="libgpm"></a><span class="term"><code class="filename">libgpm.so</code></span>                     contains the API functions to access the <span class="application">GPM</span> daemon
  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fcron.md "Fcron-3.4.0")

    Fcron-3.4.0

-   [Next](hwdata.md "hwdata-0.408")

    hwdata-0.408

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
