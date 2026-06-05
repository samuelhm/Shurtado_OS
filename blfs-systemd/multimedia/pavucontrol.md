<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](mpg123.md "mpg123-1.33.5")

    mpg123-1.33.5

-   [Next](pnmixer.md "pnmixer-0.7.2")

    pnmixer-0.7.2

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# pavucontrol-6.2 {#pavucontrol-6.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to pavucontrol {#introduction-to-pavucontrol}

PulseAudio Volume Control (pavucontrol) is a simple GTK based volume control tool ("mixer") for the PulseAudio sound server. In contrast to classic mixer tools, this one allows you to control both the volume of hardware devices and of each playback stream separately.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/pulseaudio/pavucontrol/pavucontrol-6.2.tar.xz">https://www.freedesktop.org/software/pulseaudio/pavucontrol/pavucontrol-6.2.tar.xz</a>

-   Download MD5 sum: d515163651b8272e500dfcac32c525dd

-   Download size: 196 KB

-   Estimated disk space required: 5.6 MB

-   Estimated build time: 0.2 SBU
</div>

### pavucontrol Dependencies

#### Required

<a class="xref" href="../x/gtkmm4.md" title="Gtkmm-4.22.0">Gtkmm-4.22.0</a>, <a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../general/libsigc3.md" title="libsigc++-3.6.0">libsigc++-3.6.0</a>, and <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>

### Optional

<a class="xref" href="libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a> and <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a>
</div>

<div class="installation" lang="en">
## Installation of pavucontrol {#installation-of-pavucontrol}

Install <span class="application">pavucontrol</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D lynx=disabled .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
mv /usr/share/doc/pavucontrol /usr/share/doc/pavucontrol-6.2
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D lynx=disabled`*: This switch disables generating the README file in text format. Remove this switch if you want the README file in text format and have <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a> installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">pavucontrol</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/pavucontrol and /usr/share/doc/pavucontrol-6.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- --------------------------------------------------------------------------------
  <a id="pavucontrol-prog"></a><span class="command"><span class="term"><strong>pavucontrol</strong></span></span>   is a GUI configuration tool for sound settings using <span class="application">pulsaudio</span>
  ----------------------------------------------------------- --------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mpg123.md "mpg123-1.33.5")

    mpg123-1.33.5

-   [Next](pnmixer.md "pnmixer-0.7.2")

    pnmixer-0.7.2

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
