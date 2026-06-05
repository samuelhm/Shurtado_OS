<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xcb-util.md "xcb-util-0.4.1")

    xcb-util-0.4.1

-   [Next](mesa.md "Mesa-26.0.7")

    Mesa-26.0.7

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# XCB Utilities {#xcb-utilities}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to XCB Utilities {#introduction-to-xcb-utilities}

The XCB utilities provide extensions that developers can use when making X Window software. <a class="xref" href="xcb-util.md" title="xcb-util-0.4.1">xcb-util-0.4.1</a> was just installed but these utilities offer even more extensions that X Window software may depend on.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://xorg.freedesktop.org/archive/individual/lib/">https://xorg.freedesktop.org/archive/individual/lib/</a>

-   Download size: 1.1 MB

-   Estimated disk space required: 13.3 MB

-   Estimated build time: 0.1 SBU (ignoring the time to download)
</div>

### XCB Utilities Dependencies

#### Required

<a class="xref" href="libxcb.md" title="libxcb-1.17.0">libxcb-1.17.0</a> and <a class="xref" href="xcb-util.md" title="xcb-util-0.4.1">xcb-util-0.4.1</a>
</div>

<div class="sect2" lang="en">
## Downloading XCB Utilities {#downloading-xcb-utilities}

First, create a list of files to be downloaded. This file will also be used to verify the integrity of the downloads when complete:

```bash
cat > xcb-utils.md5 << "EOF"
a67bfac2eff696170259ef1f5ce1b611  xcb-util-image-0.4.1.tar.xz
fbdc05f86f72f287ed71b162f1a9725a  xcb-util-keysyms-0.4.1.tar.xz
193b890e2a89a53c31e2ece3afcbd55f  xcb-util-renderutil-0.3.10.tar.xz
581b3a092e3c0c1b4de6416d90b969c3  xcb-util-wm-0.4.2.tar.xz
e85bccd1993992be07232f8b80a814c8  xcb-util-cursor-0.1.6.tar.xz
EOF
```

To download the needed files using <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, use the following commands:

```bash
mkdir xcb-utils &&
cd    xcb-utils &&
grep -v '^#' ../xcb-utils.md5 | awk '{print $2}' | wget -i- -c \
     -B https://xorg.freedesktop.org/archive/individual/lib/ &&
md5sum -c ../xcb-utils.md5
```
</div>

<div class="installation" lang="en">
## Installation of XCB Utilities {#installation-of-xcb-utilities}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

<div class="orderedlist">
1.  Run the entire script as the root user (not recommended).

2.  Use the <span class="command"><strong>sudo</strong></span> command from the <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> package.

3.  Use <span class="command"><strong>su -c "command arguments"</strong></span> (quotes required) which will ask for the root password for every iteration of the loop.
</div>

One way to handle this situation is to create a short <span class="command"><strong>bash</strong></span> function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

```bash
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
</div>

First, start a subshell that will exit on error:

```bash
bash -e
```

Install all of the packages by running the following commands:

```bash
for package in $(grep -v '^#' ../xcb-utils.md5 | awk '{print $2}')
do
  packagedir=${package%.tar.?z*}
  tar -xf $package
  pushd $packagedir
     ./configure $XORG_CONFIG
     make
     as_root make install
  popd
  rm -rf $packagedir
done
```

Finally, exit the shell that was started earlier:

```bash
exit
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxcb-image.so, libxcb-keysyms.so, libxcb-render-util.so, libxcb-ewmh.so, libxcb-icccm.so, and libxcb-cursor.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- -----------------------------------------------------------------------------------------
  <a id="libxcb-image"></a><span class="term"><code class="filename">libxcb-image.so</code></span>               is a port of Xlib's XImage and XShmImage functions
  <a id="libxcb-keysyms"></a><span class="term"><code class="filename">libxcb-keysyms.so</code></span>           provides the standard X key constants and API functions for conversion to/from keycodes
  <a id="libxcb-render-util"></a><span class="term"><code class="filename">libxcb-render-util.so</code></span>   provides convenience functions for the Render extension
  <a id="libxcb-ewmh"></a><span class="term"><code class="filename">libxcb-ewmh.so</code></span>                 provides the client and window-manager helpers for EWMH
  <a id="libxcb-icccm"></a><span class="term"><code class="filename">libxcb-icccm.so</code></span>               provides the client and window-manager helpers for ICCCM
  <a id="libxcb-cursor"></a><span class="term"><code class="filename">libxcb-cursor.so</code></span>             is a port of Xlib's libXcursor functions
  -------------------------------------------------------------------- -----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xcb-util.md "xcb-util-0.4.1")

    xcb-util-0.4.1

-   [Next](mesa.md "Mesa-26.0.7")

    Mesa-26.0.7

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
