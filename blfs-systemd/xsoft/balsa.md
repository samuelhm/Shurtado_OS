<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](other.md "Other X-based Programs")

    Other X-based Programs

-   [Next](feh.md "feh-3.12.2")

    feh-3.12.2

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Balsa-2.6.5 {#balsa-2.6.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Balsa {#introduction-to-balsa}

The <span class="application">Balsa</span> package contains a lightweight <span class="application">GTK+</span>-based mail client.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.gnome.org/GNOME/balsa/-/archive/2.6.5/balsa-2.6.5.tar.gz">https://gitlab.gnome.org/GNOME/balsa/-/archive/2.6.5/balsa-2.6.5.tar.gz</a>

-   Download MD5 sum: c1039c22e8c2544c6a357626d71b6220

-   Download size: 6.0 MB

-   Estimated disk space required: 44 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
</div>

### Balsa Dependencies

#### Required

<a class="xref" href="../general/enchant.md" title="enchant-2.8.16">enchant-2.8.16</a>, <a class="xref" href="../general/gmime3.md" title="GMime-3.2.15">GMime-3.2.15</a>, <a class="xref" href="../postlfs/gpgme.md" title="gpgme-2.1.0">gpgme-2.1.0</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/libical.md" title="libical-4.0.2">libical-4.0.2</a>, <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, and <a class="xref" href="../gnome/libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>

#### Required (Runtime)

<a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> (that provides a <span class="command"><strong>sendmail</strong></span> command)

#### Optional

<a class="xref" href="../general/compface.md" title="Compface-1.5.2">Compface-1.5.2</a>, <a class="xref" href="../general/gspell.md" title="gspell-1.14.3">gspell-1.14.3</a>, <a class="xref" href="../x/gtksourceview.md" title="gtksourceview-3.24.11">gtksourceview-3.24.11</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="../basicnet/procmail.md" title="Procmail-3.24">Procmail-3.24</a>, <a class="xref" href="../x/webkitgtk.md" title="WebKitGTK-2.52.0">WebKitGTK-2.52.0</a>, <a class="ulink" href="https://pypi.python.org/pypi/html2text/">html2text</a>, <a class="ulink" href="https://github.com/linuxmint/xapp">libxapp</a>, <a class="ulink" href="https://osmo-pim.sourceforge.net/">osmo</a>, and <a class="ulink" href="https://download.gnome.org/sources/yelp-tools/">yelp-tools</a>
</div>

<div class="installation" lang="en">
## Installation of Balsa {#installation-of-balsa}

Install <span class="application">Balsa</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup .. --prefix=/usr       \
               --buildtype=release \
               -D html-widget=no   &&
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

*`-D html-widget=no`*: This option disables building the HTML renderer. If you want the HTML renderer to be built, verify that you have <a class="xref" href="../x/webkitgtk.md" title="WebKitGTK-2.52.0">WebKitGTK-2.52.0</a> installed, and then remove this option.

<code class="option">-D canberra=true</code>: This switch enables support for event sounds via <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>.

<code class="option">-D compface=true</code>: This switch enables support for using <a class="xref" href="../general/compface.md" title="Compface-1.5.2">Compface-1.5.2</a> to compress thumbnails for contacts.

<code class="option">-D gcr=true</code>: This switch enables support for using libgcr for handling TLS certificates. This requires that the <a class="xref" href="../gnome/gcr.md" title="Gcr-3.41.2">Gcr-3.41.2</a> package is installed, which is part of a runtime dependency for libsecret.

<code class="option">-D gss=true</code>: This switch enables support for Kerberos authentication. This requires that the <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> package is installed.

<code class="option">-D ldap=true</code>: This switch enables LDAP address book support. This requires that the <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a> package is installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">balsa and balsa-ab</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/sounds/events, /usr/share/balsa, and /usr/share/sounds/balsa</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------
  <a id="balsa-prog"></a><span class="command"><span class="term"><strong>balsa</strong></span></span>    is a GTK+-based mail client
  <a id="balsa-ab"></a><span class="command"><span class="term"><strong>balsa-ab</strong></span></span>   is the address book application used by <span class="command"><strong>balsa</strong></span>
  ------------------------------------------------ ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](other.md "Other X-based Programs")

    Other X-based Programs

-   [Next](feh.md "feh-3.12.2")

    feh-3.12.2

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
