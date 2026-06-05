<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-menus.md "gnome-menus-3.38.1")

    gnome-menus-3.38.1

-   [Next](libgee.md "libgee-0.20.8")

    libgee-0.20.8

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-online-accounts-3.58.1 {#gnome-online-accounts-3.58.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Online Accounts {#introduction-to-gnome-online-accounts}

The <span class="application">GNOME Online Accounts</span> package contains a framework used to access the user's online accounts.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-online-accounts/3.58/gnome-online-accounts-3.58.1.tar.xz">https://download.gnome.org/sources/gnome-online-accounts/3.58/gnome-online-accounts-3.58.1.tar.xz</a>

-   Download MD5 sum: 9942aa191d657f7c39d3b5ec28b74f61

-   Download size: 488 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.1 SBU
</div>

### GNOME Online Accounts Dependencies

#### Required

<a class="xref" href="gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a>, <a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="librest.md" title="librest-0.10.2">librest-0.10.2</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../general/keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, and <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Online Accounts {#installation-of-gnome-online-accounts}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The Google API Key and OAuth tokens below are specific to LFS. If using these instructions for another distro, or if you intend to distribute binary copies of the software using these instructions, please obtain your own keys following the instructions located at <a class="ulink" href="https://www.chromium.org/developers/how-tos/api-keys">https://www.chromium.org/developers/how-tos/api-keys</a>.
</div>

Install <span class="application">GNOME Online Accounts</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup                                            \
      --prefix=/usr                                    \
      --buildtype=release                              \
      -D documentation=false                           \
      -D kerberos=false                                \
      -D google_client_secret=5ntt6GbbkjnTVXx-MSxbmx5e \
      -D google_client_id=595013732528-llk8trb03f0ldpqq6nprjp1s79596646.apps.googleusercontent.com \
      .. &&
ninja
```

If you've installed <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and you wish to build and install the API documentation of this package, issue:

```bash
meson configure -D documentation=true &&
sed "s/project_name()/& + '-' + meson.project_version()/" \
    -i ../doc/meson.build &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D google_*`*: These switches set the BLFS OAuth ID and secret for Google services.

<code class="option">-D kerberos=true</code>: Use this switch if you have installed <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> and wish to use it with <span class="application">GNOME Online Accounts</span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgoa-1.0.so and libgoa-backend-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/goa-1.0, /usr/lib/goa-1.0, and /usr/share/doc/gnome-online-accounts-3.58.1 (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------
  <a id="libgoa-1"></a><span class="term"><code class="filename">libgoa-1.0.so</code></span>                     contains the <span class="application">GNOME Online Accounts</span> API functions
  <a id="libgoa-backend-1.0"></a><span class="term"><code class="filename">libgoa-backend-1.0.so</code></span>   contains functions used by <span class="application">GNOME Online Accounts</span> backends
  -------------------------------------------------------------------- ---------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-menus.md "gnome-menus-3.38.1")

    gnome-menus-3.38.1

-   [Next](libgee.md "libgee-0.20.8")

    libgee-0.20.8

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
