<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](loupe.md "Loupe-49.2")

    Loupe-49.2

-   [Next](showtime.md "Showtime-49.1")

    Showtime-49.1

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Seahorse-47.0.1 {#seahorse-47.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Seahorse {#introduction-to-seahorse}

<span class="application">Seahorse</span> is a graphical interface for managing and using encryption keys. Currently it supports PGP keys (using GPG/GPGME) and SSH keys.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/seahorse/47/seahorse-47.0.1.tar.xz">https://download.gnome.org/sources/seahorse/47/seahorse-47.0.1.tar.xz</a>

-   Download MD5 sum: 18cd36abd8d2e25c236934be64c8b916

-   Download size: 1.3 MB

-   Estimated disk space required: 44 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
</div>

### Seahorse Dependencies

#### Required

<a class="xref" href="gcr.md" title="Gcr-3.41.2">Gcr-3.41.2</a>, <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a>, <a class="xref" href="../postlfs/gpgme.md" title="gpgme-2.1.0">gpgme-2.1.0</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../x/libhandy1.md" title="libhandy-1.8.3">libhandy-1.8.3</a>, <a class="xref" href="../postlfs/libpwquality.md" title="libpwquality-1.4.5">libpwquality-1.4.5</a>, <a class="xref" href="libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Recommended

<a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a> and <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a> (for managing SSH keys)

#### Optional

<a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>

#### Runtime Dependency

<a class="xref" href="gnome-keyring.md" title="gnome-keyring-50.0">gnome-keyring-50.0</a>
</div>

<div class="installation" lang="en">
## Installation of Seahorse {#installation-of-seahorse}

First, fix a build failure that occurs with gpgme-2.x:

```bash
sed -i "/GPGME_EVENT_NEXT_TRUSTITEM/d" pgp/seahorse-gpgme.c
```

Install <span class="application">Seahorse</span> by running the following commands:

```bash
sed -i -r 's:"(/apps):"/org/gnome\1:' data/*.xml &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<span class="command"><strong>sed ... data/\*.xml</strong></span>: This command fixes some deprecated entries in the schema templates.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">seahorse</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{libexec,share,share/help/\*}/seahorse</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- -------------------------------------------------------------------
  <a id="seahorse-prog"></a><span class="command"><span class="term"><strong>seahorse</strong></span></span>   is the graphical interface for managing and using encryption keys
  ----------------------------------------------------- -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](loupe.md "Loupe-49.2")

    Loupe-49.2

-   [Next](showtime.md "Showtime-49.1")

    Showtime-49.1

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
