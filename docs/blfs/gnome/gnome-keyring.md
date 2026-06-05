<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-bluetooth.md "gnome-bluetooth-47.2")

    gnome-bluetooth-47.2

-   [Next](gnome-settings-daemon.md "gnome-settings-daemon-50.1")

    gnome-settings-daemon-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-keyring-50.0 {#gnome-keyring-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Keyring {#introduction-to-gnome-keyring}

The <span class="application">GNOME Keyring</span> package contains a daemon that keeps passwords and other secrets for users.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-keyring/50/gnome-keyring-50.0.tar.xz">https://download.gnome.org/sources/gnome-keyring/50/gnome-keyring-50.0.tar.xz</a>

-   Download MD5 sum: 406fb764c664de580a091527af059750

-   Download size: 752 KB

-   Estimated disk space required: 38 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4; add 0.2 SBU for tests)
</div>

### GNOME Keyring Dependencies

#### Required

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> and <a class="xref" href="gcr.md" title="Gcr-3.41.2">Gcr-3.41.2</a>

#### Recommended

<a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>

#### Optional

<a class="ulink" href="https://people.redhat.com/sgrubb/libcap-ng/">libcap-ng</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Keyring {#installation-of-gnome-keyring}

Install <span class="application">GNOME Keyring</span> by running the following commands:

```bash
sed -i 's:"/desktop:"/org:' schema/*.xml &&

mkdir build-gkr &&
cd    build-gkr &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

A session bus address is necessary to run the tests. To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... schema/\*.xml</strong></span>: This command fixes a deprecated entry in the schema template.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnome-keyring (symlink), gnome-keyring-3, and gnome-keyring-daemon</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">gnome-keyring-pkcs11.so (PKCS#11 module) and pam_gnome_keyring.so (PAM module)</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/gnome-keyring and /usr/share/xdg-desktop-portal</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------
  <a id="gnome-keyring-daemon"></a><span class="command"><span class="term"><strong>gnome-keyring-daemon</strong></span></span>   is a session daemon that keeps passwords for users
  ------------------------------------------------------------------------ ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-bluetooth.md "gnome-bluetooth-47.2")

    gnome-bluetooth-47.2

-   [Next](gnome-settings-daemon.md "gnome-settings-daemon-50.1")

    gnome-settings-daemon-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
