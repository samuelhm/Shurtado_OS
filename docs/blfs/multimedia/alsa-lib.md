<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa.md "ALSA")

    ALSA

-   [Next](alsa-plugins.md "alsa-plugins-1.2.12")

    alsa-plugins-1.2.12

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# alsa-lib-1.2.16 {#alsa-lib-1.2.16}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ALSA Library {#introduction-to-alsa-library}

The <span class="application">ALSA Library</span> package contains the ALSA library used by programs (including <span class="application">ALSA Utilities</span>) requiring access to the ALSA sound interface.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.alsa-project.org/files/pub/lib/alsa-lib-1.2.16.tar.bz2">https://www.alsa-project.org/files/pub/lib/alsa-lib-1.2.16.tar.bz2</a>

-   Download MD5 sum: 2207974c4dec721779c01b2e1d43176d

-   Download size: 1.1 MB

-   Estimated disk space required: 82 MB (with tests and docs)

-   Estimated build time: 0.3 SBU (with tests and docs)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Recommended file: <a class="ulink" href="https://www.alsa-project.org/files/pub/lib/alsa-ucm-conf-1.2.16.tar.bz2">https://www.alsa-project.org/files/pub/lib/alsa-ucm-conf-1.2.16.tar.bz2</a>
</div>

### ALSA Library Dependencies

#### Recommended (Runtime)

<a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If the recommended runtime dependency is not installed, you may need to run any application requiring ALSA library as the <code class="systemitem">root</code> user or a user in the <code class="systemitem">audio</code> group.
</div>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="ulink" href="https://www.python.org/downloads/release/python-2718/">Python2</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

If needed, enable the following options in the kernel configuration and recompile the kernel:

```console
Device Drivers --->
  <*/M> Sound card support --->                                          [SOUND]
    # Select settings and drivers appropriate for your hardware
    # in the submenu:
    <*/M> Advanced Linux Sound Architecture --->                           [SND]
```

In the Device Drivers ⇒ Sound card support ⇒ Advanced Linux Sound Architecture section of the kernel configuration, select the settings and drivers appropriate for your hardware. If necessary, recompile and install your new kernel.
</div>

<div class="installation" lang="en">
## Installation of ALSA Library {#installation-of-alsa-library}

Install <span class="application">ALSA Library</span> by running the following commands:

```bash
./configure &&
make
```

If you have <span class="application">Doxygen</span> installed and you wish to build the library API documentation, run the following commands from the top-level directory of the source tree:

```bash
make doc
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user, install the package and recommended configuration files:

```bash
make install &&
tar -C /usr/share/alsa --strip-components=1 -xf ../alsa-ucm-conf-1.2.16.tar.bz2
```

To install the API documentation, run the following command as the <code class="systemitem">root</code> user:

```bash
install -v -d -m755 /usr/share/doc/alsa-lib-1.2.16/html/search &&
install -v -m644 doc/doxygen/html/*.* \
                /usr/share/doc/alsa-lib-1.2.16/html &&
install -v -m644 doc/doxygen/html/search/* \
                /usr/share/doc/alsa-lib-1.2.16/html/search
```
</div>

<div class="configuration" lang="en">
## Configuring ALSA Library {#configuring-alsa-library}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.asoundrc</code> and <code class="filename">/etc/asound.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The default <code class="filename">alsa.conf</code> is adequate for most installations. For extra functionality and/or advanced control of your sound device, you may need to create additional configuration files. For information on the available configuration parameters, visit <a class="ulink" href="https://www.alsa-project.org/main/index.php/Asoundrc">https://www.alsa-project.org/main/index.php/Asoundrc</a>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">aserver</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libasound.so and libatopology.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/alsa, /usr/share/alsa and /usr/share/doc/alsa-lib-1.2.16</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------
  <a id="aserver"></a><span class="command"><span class="term"><strong>aserver</strong></span></span>             is the ALSA server
  <a id="libasound"></a><span class="term"><code class="filename">libasound.so</code></span>         contains the ALSA API functions
  <a id="libatopology"></a><span class="term"><code class="filename">libatopology.so</code></span>   contains API functions for the ALSA topologies
  -------------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](alsa.md "ALSA")

    ALSA

-   [Next](alsa-plugins.md "alsa-plugins-1.2.12")

    alsa-plugins-1.2.12

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
