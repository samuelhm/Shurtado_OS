<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](v4l-utils.md "v4l-utils-1.32.0")

    v4l-utils-1.32.0

-   [Next](x264.md "x264-20250815")

    x264-20250815

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Wireplumber-0.5.14 {#wireplumber-0.5.14}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Wireplumber {#introduction-to-wireplumber}

The <span class="application">Wireplumber</span> package contains a session and policy manager for <span class="application">Pipewire</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/pipewire/wireplumber/-/archive/0.5.14/wireplumber-0.5.14.tar.bz2">https://gitlab.freedesktop.org/pipewire/wireplumber/-/archive/0.5.14/wireplumber-0.5.14.tar.bz2</a>

-   Download MD5 sum: 7f56b55fe9add83f8456600d2a030563

-   Download size: 448 KB

-   Estimated disk space required: 101 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>

### Wireplumber Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="pipewire.md" title="Pipewire-1.6.6">pipewire-1.6.6</a><a class="xref" href="../general/systemd.md" title="Systemd-260.2">, and <span class="phrase">Systemd-260.2</a> (runtime, rebuilt with <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>)</span>

#### Recommended

<a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a>, <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>, <a class="xref" href="../general/python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a>, and <a class="ulink" href="https://pypi.org/project/breathe/">Breathe</a>
</div>

<div class="installation" lang="en">
## Installation of Wireplumber {#installation-of-wireplumber}

Install <span class="application">Wireplumber</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D system-lua=true .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

Finally, rename the documentation directory to a versioned directory as the <code class="systemitem">root</code> user:

```bash
mv -v /usr/share/doc/wireplumber{,-0.5.14}
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D system-lua=true`*: This switch enables using the system version of Lua. Omit this switch if you have not installed Lua, but note that <span class="application">meson</span> will download and install it's own version.
</div>

<div class="configuration" lang="en">
## Configuring Wireplumber {#configuring-wireplumber}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

In order for Wireplumber to be used by Pipewire, Wireplumber and Pipewire must be configured to start when a desktop environment is started.

Pipewire now provides it's own Pulseaudio server implementation, which causes runtime conflicts with the server provided by Pulseaudio itself. This generally presents itself by applications hanging or malfunctioning when trying to play or record audio and video. First, prevent Pulseaudio from starting it's own server implementation by running the following commands as the <code class="systemitem">root</code> user:

```bash
rm -vf /etc/xdg/autostart/pulseaudio.desktop         &&
rm -vf /etc/xdg/Xwayland-session.d/00-pulseaudio-x11 &&
sed -e '$a autospawn = no' -i /etc/pulse/client.conf
```

Next, configure Wireplumber to start when a desktop environment is started. Run the following commands as the <code class="systemitem">root</code> user to enable the systemd user units:

```bash
systemctl enable --global pipewire.socket       &&
systemctl enable --global pipewire-pulse.socket &&
systemctl enable --global wireplumber
```

Now that Wireplumber is configured to start when a desktop environment is started, it is recommended that you log out of your session and log back in again.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">wireplumber, wpctl, and wpexec</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libwireplumber-0.5.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/wireplumber-0.5, /usr/lib/wireplumber-0.5, /usr/share/wireplumber, and /usr/share/doc/wireplumber-0.5.14</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- ---------------------------------------------------------------------
  <a id="wireplumber-prog"></a><span class="command"><span class="term"><strong>wireplumber</strong></span></span>        is a session and policy manager for Pipewire
  <a id="wpctl"></a><span class="command"><span class="term"><strong>wpctl</strong></span></span>                         controls and queries information from Wireplumber
  <a id="wpexec"></a><span class="command"><span class="term"><strong>wpexec</strong></span></span>                       executes Wireplumber scripts, which are often written in Lua
  <a id="libwireplumber"></a><span class="term"><code class="filename">libwireplumber-0.5.so</code></span>   contains functions that allow other programs to control Wireplumber
  ---------------------------------------------------------------- ---------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](v4l-utils.md "v4l-utils-1.32.0")

    v4l-utils-1.32.0

-   [Next](x264.md "x264-20250815")

    x264-20250815

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
