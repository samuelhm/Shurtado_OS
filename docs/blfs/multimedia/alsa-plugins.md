<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-lib.md "alsa-lib-1.2.16")

    alsa-lib-1.2.16

-   [Next](alsa-utils.md "alsa-utils-1.2.15.2")

    alsa-utils-1.2.15.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# alsa-plugins-1.2.12 {#alsa-plugins-1.2.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ALSA Plugins {#introduction-to-alsa-plugins}

The <span class="application">ALSA Plugins</span> package contains plugins for various audio libraries and sound servers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.alsa-project.org/files/pub/plugins/alsa-plugins-1.2.12.tar.bz2">https://www.alsa-project.org/files/pub/plugins/alsa-plugins-1.2.12.tar.bz2</a>

-   Download MD5 sum: 71fce75baa38efab4e32e40db0a33716

-   Download size: 400 KB

-   Estimated disk space required: 5.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### ALSA Plugins Dependencies

#### Required

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>

#### Optional

<a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="libsamplerate.md" title="libsamplerate-0.2.2">libsamplerate-0.2.2</a>, <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="speex.md" title="Speex-1.2.1">Speex-1.2.1</a>, <a class="ulink" href="https://jackaudio.org/">JACK</a>, and <a class="ulink" href="https://github.com/AVnu/libavtp/">libavtp</a>
</div>

<div class="installation" lang="en">
## Installation of ALSA Plugins {#installation-of-alsa-plugins}

Install <span class="application">ALSA Plugins</span> by running the following commands:

```bash
./configure --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
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
**Installed Libraries:** <span class="segbody">Numerous libasound_module\_<em>`<module>`</em>.so modules including conf_pulse, ctl_arcam_av, ctl_oss, ctl_pulse, pcm_a52, pcm_jack, pcm_oss, pcm_pulse, pcm_speex, pcm_upmix, pcm_usb_stream, pcm_vdownmix, rate_lavrate\<em>, rate_samplerate\</em>, and rate_speexrate\*</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/alsa-lib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------
  <a id="libasound_module_pcm_oss.so"></a><span class="term"><code class="filename">libasound_module_pcm_oss.so</code></span>                   Allows native <span class="application">ALSA</span> applications to run on <span class="application">OSS</span>
  <a id="libasound_module_pcm_upmix.so"></a><span class="term"><code class="filename">libasound_module_pcm_upmix.so</code></span>               Allows upmixing sound to 4 or 6 channels
  <a id="libasound_module_pcm_vdownmix.so"></a><span class="term"><code class="filename">libasound_module_pcm_vdownmix.so</code></span>         Allows downmixing sound from 4-6 channels to 2 channel stereo output
  <a id="libasound_module_pcm_jack.so"></a><span class="term"><code class="filename">libasound_module_pcm_jack.so</code></span>                 Allows native <span class="application">ALSA</span> applications to work with <span class="command"><strong>jackd</strong></span>
  <a id="libasound_module_pcm_pulse.so"></a><span class="term"><code class="filename">libasound_module_pcm_pulse.so</code></span>               Allows native <span class="application">ALSA</span> applications to access a <span class="application">PulseAudio</span> sound daemon
  <a id="libasound_module_pcm_a52.so"></a><span class="term"><code class="filename">libasound_module_pcm_a52.so</code></span>                   Converts S16 linear sound format to A52 compressed format and sends it to an SPDIF output
  <a id="libasound_module_rate_samplerate.so"></a><span class="term"><code class="filename">libasound_module_rate_samplerate.so</code></span>   Provides an external rate converter through <code class="filename">libsamplerate</code>
  --------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](alsa-lib.md "alsa-lib-1.2.16")

    alsa-lib-1.2.16

-   [Next](alsa-utils.md "alsa-utils-1.2.15.2")

    alsa-utils-1.2.15.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
