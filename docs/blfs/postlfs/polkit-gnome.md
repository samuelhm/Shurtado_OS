<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](polkit.md "Polkit-127")

    Polkit-127

-   [Next](shadow.md "Shadow-4.19.4")

    Shadow-4.19.4

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# polkit-gnome-0.105 {#polkit-gnome-0.105}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Polkit GNOME {#introduction-to-polkit-gnome}

The <span class="application">Polkit GNOME</span> package provides an Authentication Agent for <span class="application">Polkit</span> that integrates well with the <span class="application">GNOME</span> Desktop environment.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/polkit-gnome/0.105/polkit-gnome-0.105.tar.xz">https://download.gnome.org/sources/polkit-gnome/0.105/polkit-gnome-0.105.tar.xz</a>

-   Download MD5 sum: 50ecad37c8342fb4a52f590db7530621

-   Download size: 305 KB

-   Estimated disk space required: 5.0 MB

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/polkit-gnome-0.105-consolidated_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/polkit-gnome-0.105-consolidated_fixes-1.patch</a>
</div>

### Polkit GNOME Dependencies

#### Required

<a class="xref" href="../general/accountsservice.md" title="AccountsService-23.13.9">AccountsService-23.13.9</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>, and <a class="xref" href="polkit.md" title="Polkit-127">Polkit-127</a>
</div>

<div class="installation" lang="en">
## Installation of Polkit GNOME {#installation-of-polkit-gnome}

First, apply some fixes that allow for the proper user icon to be used, as well as some security fixes:

```bash
patch -Np1 -i ../polkit-gnome-0.105-consolidated_fixes-1.patch
```

Install <span class="application">Polkit GNOME</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="configuration" lang="en">
## Configuring Polkit GNOME {#configuring-polkit-gnome}

<div class="sect3" lang="en">
### Automatic Startup {#automatic-startup}

For the authentication framework to work, <span class="command"><strong>polkit-gnome-authentication-agent-1</strong></span> needs to be started. However, <span class="command"><strong>make install</strong></span> did not install a startup file for the <span class="application">Polkit GNOME</span> so you have to create it by yourself.

Issue the following commands as the <code class="systemitem">root</code> user to create a startup file for <span class="application">Polkit GNOME</span>:

```bash
mkdir -p /etc/xdg/autostart &&
cat > /etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop << "EOF"
[Desktop Entry]
Name=PolicyKit Authentication Agent
Comment=PolicyKit Authentication Agent
Exec=/usr/libexec/polkit-gnome-authentication-agent-1
Terminal=false
Type=Application
Categories=
NoDisplay=true
OnlyShowIn=GNOME;XFCE;Unity;
AutostartCondition=GNOME3 unless-session gnome
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">polkit-gnome-authentication-agent-1</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------------------------------ ----------------------------------------------------
  <a id="polkit-gnome-authentication-agent-1"></a><span class="command"><span class="term"><strong>polkit-gnome-authentication-agent-1</strong></span></span>   is the <span class="application">Polkit</span> authentication agent
  ------------------------------------------------------------------------------------------------------ ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](polkit.md "Polkit-127")

    Polkit-127

-   [Next](shadow.md "Shadow-4.19.4")

    Shadow-4.19.4

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
