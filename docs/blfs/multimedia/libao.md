<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](liba52.md "Liba52-0.8.0")

    Liba52-0.8.0

-   [Next](libaom.md "libaom-3.14.1")

    libaom-3.14.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Libao-1.2.0 {#libao-1.2.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Libao {#introduction-to-libao}

The <span class="application">libao</span> package contains a cross-platform audio library. This is useful to output audio on a wide variety of platforms. It currently supports WAV files, OSS (Open Sound System), ESD (Enlighten Sound Daemon), ALSA (Advanced Linux Sound Architecture), NAS (Network Audio system), aRTS (analog Real-Time Synthesizer), and PulseAudio (next generation <span class="application">GNOME</span> sound architecture).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xiph.org/releases/ao/libao-1.2.0.tar.gz">https://downloads.xiph.org/releases/ao/libao-1.2.0.tar.gz</a>

-   Download MD5 sum: 9f5dd20d7e95fd0dd72df5353829f097

-   Download size: 456 KB

-   Estimated disk space required: 3.9 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Libao Dependencies

#### Optional

<a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, <a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, and <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>
</div>

<div class="installation" lang="en">
## Installation of Libao {#installation-of-libao}

First, fix a gcc-14 issue:

```bash
sed -i '/limits.h/a #include <time.h>' src/plugins/pulse/ao_pulse.c
```

Install <span class="application">libao</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m644 README /usr/share/doc/libao-1.2.0
```
</div>

<div class="configuration" lang="en">
## Configuring Libao {#configuring-libao}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/libao.conf</code> and <code class="filename">~/.libao</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Currently, the only configuration option available is setting the default output device. Issue <span class="command"><strong>man libao.conf</strong></span> for details.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libao.so and plugins under /usr/lib/ao/plugins-4</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/ao, /usr/lib/ao and /usr/share/doc/libao-1.2.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ----------------------------------------------------------------------------------
  <a id="libao-lib"></a><span class="term"><code class="filename">libao.so</code></span>   provides functions for programs wishing to output sound over supported platforms
  ---------------------------------------------- ----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](liba52.md "Liba52-0.8.0")

    Liba52-0.8.0

-   [Next](libaom.md "libaom-3.14.1")

    libaom-3.14.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
