<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](tinysparql.md "tinysparql-3.11.1")

    tinysparql-3.11.1

-   [Next](gsound.md "GSound-1.0.3")

    GSound-1.0.3

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# localsearch-3.11.1 {#localsearch-3.11.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Localsearch {#introduction-to-localsearch}

The <span class="application">Localsearch</span> package contains a filesystem indexer as well as a metadata extractor.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/localsearch/3.11/localsearch-3.11.1.tar.xz">https://download.gnome.org/sources/localsearch/3.11/localsearch-3.11.1.tar.xz</a>

-   Download MD5 sum: 1406955c072af72776fdcbb9b12dc103

-   Download size: 4.3 MB

-   Estimated disk space required: 79 MB

-   Estimated build time: 0.2 SBU (with parallelism=4; add as much as 1.3 SBU for tests, dependent on disk speed)
</div>

### Localsearch Dependencies

#### Required

<a class="xref" href="gexiv2.md" title="gexiv2-0.16.0">gexiv2-0.16.0</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, and <a class="xref" href="tinysparql.md" title="tinysparql-3.11.1">tinysparql-3.11.1</a>

#### Recommended

<a class="xref" href="../general/exempi.md" title="Exempi-2.6.6">Exempi-2.6.6</a>, <a class="xref" href="../general/giflib.md" title="giflib-6.1.3">giflib-6.1.3</a>, <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../general/libexif.md" title="libexif-0.6.26">libexif-0.6.26</a>, <a class="xref" href="../general/libgxps.md" title="libgxps-0.3.2">libgxps-0.3.2</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>, and <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>

#### Optional

<a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> (to build manual pages; note that manual pages are required for some tests), <a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../multimedia/gst10-plugins-good.md" title="gst-plugins-good-1.28.3">gst-plugins-good-1.28.3</a> (for one test), <a class="xref" href="../general/libgsf.md" title="libgsf-1.14.58">libgsf-1.14.58</a>, <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> (for functional tests), <a class="xref" href="totem-pl-parser.md" title="totem-pl-parser-3.26.7">totem-pl-parser-3.26.7</a>, <a class="ulink" href="https://github.com/lipnitsk/libcue">libcue</a>, <a class="ulink" href="https://libiptcdata.sourceforge.net/">libitpcdata</a>, <a class="ulink" href="https://libosinfo.org">libosinfo</a>, and <a class="ulink" href="https://gitlab.gnome.org/GNOME/gupnp">gupnp</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration, then recompile the kernel and reboot if necessary:

```console
Security options --->
  [*]        Enable different security models                         [SECURITY]
  [*]        Landlock support                                [SECURITY_LANDLOCK]
  # List more Linux Security Modules here (separated with comma) if needed,
  # for example 'landlock,lockdown,smack':
  (landlock) Ordered list of enabled LSMs                                  [LSM]
```
</div>

<div class="installation" lang="en">
## Installation of Localsearch {#installation-of-localsearch}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If you are upgrading this package from a version where it was known as <span class="application">tracker-miners</span>, there are several files which will cause conflicts. Before installing this package, remove these files as the <code class="systemitem">root</code> user:
</div>

```bash
rm -fv /etc/xdg/autostart/tracker-miner-fs-3.desktop                           &&
rm -fv /usr/lib/systemd/user/tracker-miner-fs-3.service                        &&
rm -fv /usr/lib/systemd/user/tracker-miner-fs-control-3.service                &&
rm -fv /usr/share/dbus-1/services/org.freedesktop.Tracker3.Miner.Files.service &&
rm -fv /usr/share/dbus-1/services/org.freedesktop.Tracker3.Writeback.service   &&
rm -fv /usr/share/dbus-1/services/org.freedesktop.Tracker3.Miner.Files.Control.service
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you plan to run the tests, some timeouts are too short when using spinning disks. There are two places where timeouts are used: first, individual tests inside a group of tests have a default timeout of 10s. This can be changed by setting the environment variable <code class="envar">TRACKER_TESTS_AWAIT_TIMEOUT</code> to the desired value when running the tests (see below). Second, a global timeout for a group of tests is fixed at configuration time. The default value in the <code class="filename">functional-tests</code> directory (other directories have only short lived tests) may be increased with the following command (replace 200 with a value suitable for your machine):

```bash
sed -i s/120/200/ tests/functional-tests/meson.build
```
</div>

Install <span class="application">Localsearch</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr             \
            --buildtype=release       \
            -D man=false              \
            -D functional_tests=false \
            ..                        &&
ninja
```

To test the results, issue the following commands. Make sure that you adjust the individual test timeout to a value suitable for your machine, please read the note above for more details.

```bash
meson configure -D man=true -D functional_tests=true &&
ninja                                                &&
dbus-run-session env LC_ALL=C.UTF-8 TRACKER_TESTS_AWAIT_TIMEOUT=20 \
                 ninja test
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D man=false`*: This switch prevents the build process from generating man pages. Omit this switch if you have <a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> installed and wish to generate and install the man pages.

*`-D functional_tests=false`*: This switch prevents the setup process to require <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> and fail if it is not installed. You can remove this switch if it is installed.

<code class="option">-D seccomp=false</code>: This option disables the seccomp system call filter. On some architectures, such as ARM, the functions that localsearch uses are not guarded properly, and localsearch will get killed with a SIGSYS signal as a result of this. Note that disabling seccomp may cause the system to be compromised worse in the event that a security vulnerability in localsearch or its dependencies is exploited, and it is <span class="emphasis"><em>NOT</em></span> recommended.

<code class="option">-D landlock=disabled</code>: This switch disables the Landlock file access sandbox. Use it if you don't want to build the kernel with Landlock support. Note that disabling Landlock may cause the system to be compromised worse in the event that a security vulnerability in localsearch or its dependencies is exploited, and this is <span class="emphasis"><em>NOT</em></span> recommended.

<code class="option">-D battery_detection=none</code>: Use this option if you have not installed the recommended dependency upower. Do not use this option if your system has a battery (laptop battery or UPS), or else localsearch may waste battery life when A/C power is unavailable.

<code class="option">-D libav=disabled</code>: Use this option if you have not installed the recommended dependency ffmpeg. Note that using this will cause 7 test failures, and will also significantly hamper the functionality of this package.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">localsearch</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Several modules under /usr/lib/localsearch-3.0</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/localsearch-3.0 and /usr/share/localsearch3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- -----------------------------------------------------------------------------
  <a id="localsearch-prog"></a><span class="command"><span class="term"><strong>localsearch</strong></span></span>   starts, stops, restarts, and lists daemons responsible for indexing content
  ----------------------------------------------------------- -----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tinysparql.md "tinysparql-3.11.1")

    tinysparql-3.11.1

-   [Next](gsound.md "GSound-1.0.3")

    GSound-1.0.3

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
