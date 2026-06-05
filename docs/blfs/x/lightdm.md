<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 26. Display Managers

-   [Prev](gdm.md "GDM-50.1")

    GDM-50.1

-   [Next](sddm.md "sddm-0.21.0")

    sddm-0.21.0

-   [Up](dm.md "Chapter 26. Display Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lightdm-1.32.0 {#lightdm-1.32.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Lightdm {#introduction-to-lightdm}

The <span class="application">lightdm</span> package contains a lightweight display manager based upon GTK.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Lightdm Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/CanonicalLtd/lightdm/releases/download/1.32.0/lightdm-1.32.0.tar.xz">https://github.com/CanonicalLtd/lightdm/releases/download/1.32.0/lightdm-1.32.0.tar.xz</a>

-   Download MD5 sum: e62a5da6c35f612e4d9575eda5c8d467

-   Download size: 508 KB

-   Estimated disk space required: 20 MB

-   Estimated build time: 0.2 SBU
</div>

### Additional download

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The greeter is a program to present a graphical login screen. There are several alternative greeters, but the gtk+ package is the reference implementation. For a list of other greeters, see <a class="ulink" href="https://en.wikipedia.org/wiki/LightDM">https://en.wikipedia.org/wiki/LightDM</a>.
</div>

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/Xubuntu/lightdm-gtk-greeter/releases/download/lightdm-gtk-greeter-2.0.9/lightdm-gtk-greeter-2.0.9.tar.gz">https://github.com/Xubuntu/lightdm-gtk-greeter/releases/download/lightdm-gtk-greeter-2.0.9/lightdm-gtk-greeter-2.0.9.tar.gz</a>

-   Download MD5 sum: 35752d730f39293c2bbe884ef6963830

-   Download size: 592 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Lightdm Dependencies

#### Required

<a class="xref" href="../xfce/exo.md" title="Exo-4.20.0">Exo-4.20.0</a> (for the greeter), <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, and <a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a> (Runtime)

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="libxklavier.md" title="libxklavier-5.4">libxklavier-5.4</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/accountsservice.md" title="AccountsService-23.13.9">AccountsService-23.13.9</a> (run time), <a class="xref" href="at-spi2-core.md" title="at-spi2-core-2.60.4">at-spi2-core-2.60.4</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="ulink" href="https://launchpad.net/ido">libido</a>, and <a class="ulink" href="https://launchpad.net/libindicator">libindicator</a>
</div>

<div class="installation" lang="en">
## Installation of Lightdm {#installation-of-lightdm}

First, create a dedicated user and group to take control of the <span class="command"><strong>lightdm</strong></span> daemon after it is started. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -g 65 lightdm       &&
useradd  -c "Lightdm Daemon" \
         -d /var/lib/lightdm \
         -u 65 -g lightdm    \
         -s /bin/false lightdm
```

Install <span class="application">lightdm</span> by running the following commands:

```bash
./configure --prefix=/usr                 \
            --libexecdir=/usr/lib/lightdm \
            --localstatedir=/var          \
            --sbindir=/usr/bin            \
            --sysconfdir=/etc             \
            --disable-static              \
            --disable-tests               \
            --with-greeter-user=lightdm   \
            --with-greeter-session=lightdm-gtk-greeter \
            --docdir=/usr/share/doc/lightdm-1.32.0 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                                                  &&
cp tests/src/lightdm-session /usr/bin                         &&
sed -i '1 s/sh/bash --login/' /usr/bin/lightdm-session        &&
rm -rf /etc/init                                              &&
install -v -dm755 -o lightdm -g lightdm /var/lib/lightdm      &&
install -v -dm755 -o lightdm -g lightdm /var/lib/lightdm-data &&
install -v -dm755 -o lightdm -g lightdm /var/cache/lightdm    &&
install -v -dm770 -o lightdm -g lightdm /var/log/lightdm
```

Now build the greeter:

```bash
tar -xf ../lightdm-gtk-greeter-2.0.9.tar.gz &&
cd lightdm-gtk-greeter-2.0.9 &&

./configure --prefix=/usr                 \
            --libexecdir=/usr/lib/lightdm \
            --sbindir=/usr/bin            \
            --sysconfdir=/etc             \
            --with-libxklavier            \
            --enable-kill-on-sigterm      \
            --disable-libido              \
            --disable-libindicator        \
            --disable-static              \
            --disable-maintainer-mode     \
            --docdir=/usr/share/doc/lightdm-gtk-greeter-2.0.9 &&
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed Xorg in /opt, you will need to create a symbolic link so lightdm can find the Xorg server. As the <code class="systemitem">root</code> user:

```bash
ln -sf /opt/xorg/bin/Xorg /usr/bin/X
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... /usr/bin/lightdm-session</strong></span>: This command ensures that the initial login via the greeter sources /etc/profile and \~/.bash_profile. Without this, commands that depend on different environment variables may not work as expected.
</div>

<div class="configuration" lang="en">
## Configuring lightdm {#configuring-lightdm}

<div class="sect3" lang="en">
### Config Files {#config-files}

/etc/lightdm/{lightdm,users,keys,lightdm-gtk-greeter}.conf

The configuration files offer many options. If, for instance, you have a multiple monitor setup but prefer the login window to be displayed on only one monitor, set 'active-monitor=\<monitor-name\>' in <code class="filename">lightdm-gtk-greeter.conf</code>. For example you could use <code class="option">active-monitor=HDMI-1</code>. You can determine the monitor-names with <span class="command"><strong>xrandr --listmonitors</strong></span>. Note that the monitor names may change if you change the graphics driver and you may have to adjust the configuration accordingly.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

Install the <code class="filename">lightdm.service</code> unit included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-lightdm
```
</div>

<div class="sect3" lang="en">
### Available Sessions {#available-sessions}

The greeter offers a list of available sessions, depending on the Window Managers and Desktop Environments installed. The list includes sessions which have a corresponding <code class="filename">.desktop</code> file installed under <code class="filename">/usr/share/xsessions</code>. Most of the Window Managers and Desktop Environments automatically provide those files, but if necessary, you may include a custom one.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dm-tool, lightdm, and lightdm-gtk-greeter</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">liblightdm-gobject-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/lightdm, /etc/apparmor.d, /usr/lib/lightdm, /usr/include/lightdm-gobject-1, /usr/share/help/C/lightdm /usr/share/gtk-doc/html/lightdm-gobject-1, /usr/share/doc/lightdm-gtk-greeter-2.0.9, /var/lib/lightdm, /var/lib/lightdm-data, /var/cache/lightdm, and /var/log/lightdm</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="lightdm-prog"></a><span class="command"><span class="term"><strong>lightdm</strong></span></span>                      is a display and login manager
  <a id="lightdm-gtk-greeter"></a><span class="command"><span class="term"><strong>lightdm-gtk-greeter</strong></span></span>   is an auxiliary process that displays the greeter, a graphical user interface that performs user authentication and initiates the selected window manager or display environment
  ---------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gdm.md "GDM-50.1")

    GDM-50.1

-   [Next](sddm.md "sddm-0.21.0")

    sddm-0.21.0

-   [Up](dm.md "Chapter 26. Display Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
