<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 26. Display Managers

-   [Prev](dm.md "Display Managers")

    Display Managers

-   [Next](lightdm.md "lightdm-1.32.0")

    lightdm-1.32.0

-   [Up](dm.md "Chapter 26. Display Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GDM-50.1 {#gdm-50.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GDM {#introduction-to-gdm}

<span class="application">GDM</span> is a system service that is responsible for providing graphical logins and managing local and remote displays.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gdm/50/gdm-50.1.tar.xz">https://download.gnome.org/sources/gdm/50/gdm-50.1.tar.xz</a>

-   Download MD5 sum: aed5adf1f054c76b5a4da739887f30c1

-   Download size: 984 KB

-   Estimated disk space required: 28 MB

-   Estimated build time: 0.2 SBU
</div>

### GDM Dependencies

#### Required

<a class="xref" href="../general/accountsservice.md" title="AccountsService-23.13.9">AccountsService-23.13.9</a>, <a class="xref" href="../gnome/dconf.md" title="DConf-0.49.0 / DConf-Editor-49.0">DConf-0.49.0</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a> (built after <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>), and <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>

#### Optional

<a class="xref" href="../general/keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a> and <a class="ulink" href="https://libcheck.github.io/check/">check</a> (for testing)

#### Runtime Dependencies

<a class="xref" href="../gnome/gnome-session.md" title="gnome-session-50.1">gnome-session-50.1</a>, <a class="xref" href="../gnome/gnome-shell.md" title="gnome-shell-50.2">gnome-shell-50.2</a>, and <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span>
</div>

<div class="installation" lang="en">
## Installation of GDM {#installation-of-gdm}

GDM needs to start as <code class="systemitem">root</code>, but quickly drops privileges to dynamic users created with userdb. We only need to create a dedicated group for those users. Issue the following command as the <code class="systemitem">root</code> user:

```bash
groupadd -g 21 gdm
```

Install <span class="application">GDM</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D gdm-xsession=true \
      -D run-dir=/run/gdm  &&
ninja
```

The test suite requires <span class="application">Check</span> that is not available.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D default-pam-config=lfs</code>: Use this switch if you did not create the <code class="filename">/etc/lfs-release</code> file or distribution auto detection will fail and you will be unable to use <span class="application">GDM</span>.

*`-D gdm-xsession=true`*: This enables the installation of the <span class="application">GDM</span> Xsession file.
</div>

<div class="configuration" lang="en">
## Configuring GDM {#configuring-gdm}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/gdm/custom.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The GDM daemon is configured using the <code class="filename">/etc/gdm/custom.conf</code> file. Default values are stored in GSettings in the <code class="filename">gdm.schemas</code> file. It is recommended that end-users modify the <code class="filename">/etc/gdm/custom.conf</code> file because the schemas file may be overwritten when the user updates their system to have a newer version of <span class="application">GDM</span>.

On some systems with NVIDIA GPUs or virtual GPUs (such as provided by qemu), GDM will hide Wayland sessions by default. This is often done to prevent users from encountering problems with buggy drivers, which can result in system lockups, application crashes, power management problems, and graphics slowdowns. If your system is a virtual machine or you have an NVIDIA GPU and still want to try running Wayland sessions anyway, execute the following command as the <code class="systemitem">root</code> user:

```bash
ln -s /dev/null /etc/udev/rules.d/61-gdm.rules
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>gdm</strong></span> daemon at boot, enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable gdm
```
</div>

<div class="sect3" lang="en">
### Configuring GDM Auto-Suspend {#configuring-gdm-auto-suspend}

GDM will suspend the system when the greeter screen has been running for a while without any interactive input. If you want to disable auto-suspending for any reason (for example if the system is hosting some services besides functioning as a desktop system), as the <code class="systemitem">root</code> user, issue:

```bash
su gdm -s /bin/bash                                                \
       -c "dbus-run-session                                        \
             gsettings set org.gnome.settings-daemon.plugins.power \
                           sleep-inactive-ac-type                  \
                           nothing"
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gdm and gdm-config</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgdm.so and pam_gdm.so (PAM Module)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/gdm, /usr/include/gdm, /usr/share/gdm, and /usr/share/help/\*/gdm</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------------------
  <a id="gdm-prog"></a><span class="command"><span class="term"><strong>gdm</strong></span></span>                 is a login prompt for <span class="application">GNOME</span>
  <a id="gdm-config-prog"></a><span class="command"><span class="term"><strong>gdm-config</strong></span></span>   configures a variety of authentication options for GDM
  --------------------------------------------------------- --------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dm.md "Display Managers")

    Display Managers

-   [Next](lightdm.md "lightdm-1.32.0")

    lightdm-1.32.0

-   [Up](dm.md "Chapter 26. Display Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
