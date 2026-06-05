<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 26. Display Managers

-   [Prev](lightdm.md "lightdm-1.32.0")

    lightdm-1.32.0

-   [Next](wm.md "Window Managers")

    Window Managers

-   [Up](dm.md "Chapter 26. Display Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sddm-0.21.0 {#sddm-0.21.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to sddm {#introduction-to-sddm}

The <span class="application">sddm</span> package contains a lightweight display manager based upon <span class="application">Qt</span> and QML.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/sddm/sddm/archive/v0.21.0/sddm-0.21.0.tar.gz">https://github.com/sddm/sddm/archive/v0.21.0/sddm-0.21.0.tar.gz</a>

-   Download MD5 sum: e32a35c282d9be3360737eefbe25b5fa

-   Download size: 3.4 MB

-   Estimated disk space required: 24 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
</div>

### SDDM Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>, and <a class="xref" href="qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Recommended

<a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> (for the man pages), <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, and <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>
</div>

<div class="installation" lang="en">
## Installation of SDDM {#installation-of-sddm}

First, create a dedicated user and group to take control of the <span class="command"><strong>sddm</strong></span> daemon after it is started. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -g 64 sddm &&
useradd  -c "sddm Daemon" \
         -d /var/lib/sddm \
         -u 64 -g sddm    \
         -s /bin/false sddm
```

Install <span class="application">sddm</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=Release         \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -D RUNTIME_DIR=/run/sddm            \
      -D BUILD_MAN_PAGES=ON               \
      -D BUILD_WITH_QT6=ON                \
      -D DATA_INSTALL_DIR=/usr/share/sddm \
      -D DBUS_CONFIG_FILENAME=sddm_org.freedesktop.DisplayManager.conf \
      .. &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -dm755 -o sddm -g sddm /var/lib/sddm
/usr/bin/sddm --example-config > /etc/sddm.conf
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply additional compiler optimizations.

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.

*`-D DBUS_CONFIG_FILENAME=sddm_org.freedesktop.DisplayManager.conf`*: This switch prevents the file <code class="filename">/etc/dbus-1/system.d/org.freedesktop.DisplayManager.conf</code> from being overwritten, as it may be used by other DM's.

*`-D BUILD_MAN_PAGES=ON`*: This switch is used to build and install man pages.
</div>

<div class="configuration" lang="en">
## Configuring SDDM {#configuring-sddm}

<div class="sect3" lang="en">
### Config Files {#config-files}

/etc/sddm.config

Normally, you want to edit this file. For example, if Xorg is installed in /opt, use your preferred editor as the <code class="systemitem">root</code> user to replace the default <span class="emphasis"><em>XauthPath</em></span> value by <span class="emphasis"><em>/opt/xorg/bin/xauth</em></span>. Or, as the <code class="systemitem">root</code> user, issue:

```bash
sed -i.orig '/ServerPath/ s|usr|opt/xorg|' /etc/sddm.conf
```

This command will do the substitution and create a copy of the original file with name <code class="filename">/etc/sddm.conf.orig</code>.

From now on, we will describe how to modify configurations using sed. Of course, you may instead use your preferred editor as the <code class="systemitem">root</code> user.

For security reasons, you normally want the default <span class="emphasis"><em>ServerArguments=-nolisten tcp</em></span>, unless a remote machine needs access to the local X server. In that case, as the <code class="systemitem">root</code> user, issue:

```bash
sed -i 's/-nolisten tcp//' /etc/sddm.conf
```

Desktop (Notebook) users, normally want the Num Lock key on (off). For that, as <code class="systemitem">root</code>, issue:

```bash
sed -i '/Numlock/s/none/on/' /etc/sddm.conf
```

for Desktop users. For Notebook users, replace /on/ by /off/ in the command above.

By default, a virtual keyboard is presented for the user. If this is not desired, run as <code class="systemitem">root</code>:

```bash
sed -i 's/qtvirtualkeyboard//' /etc/sddm.conf
```
</div>

<div class="sect3" lang="en">
### Boot Script {#boot-script}

Enable the pre-installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable sddm
```
</div>

<div class="sect3" lang="en">
### Linux PAM Configuration {#linux-pam-configuration}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The install procedure above installed a set of PAM configuration files. These procedures overwrite them and use versions compatible with a BLFS environment.
</div>

If you have built <span class="application">sddm</span> with <span class="application">Linux PAM</span> support, create the necessary configuration files by running the following commands as the <code class="systemitem">root</code> user:

```bash
cat > /etc/pam.d/sddm << "EOF" &&
# Begin /etc/pam.d/sddm

auth     requisite      pam_nologin.so
auth     required       pam_env.so

auth     required       pam_succeed_if.so uid >= 1000 quiet
auth     include        system-auth

account  include        system-account
password include        system-password

session  required       pam_limits.so
session  include        system-session

# End /etc/pam.d/sddm
EOF

cat > /etc/pam.d/sddm-autologin << "EOF" &&
# Begin /etc/pam.d/sddm-autologin

auth     requisite      pam_nologin.so
auth     required       pam_env.so

auth     required       pam_succeed_if.so uid >= 1000 quiet
auth     required       pam_permit.so

account  include        system-account

password required       pam_deny.so

session  required       pam_limits.so
session  include        system-session

# End /etc/pam.d/sddm-autologin
EOF

cat > /etc/pam.d/sddm-greeter << "EOF"
# Begin /etc/pam.d/sddm-greeter

auth     required       pam_env.so
auth     required       pam_permit.so

account  required       pam_permit.so
password required       pam_deny.so
session  required       pam_unix.so
-session optional       pam_systemd.so

# End /etc/pam.d/sddm-greeter
EOF
```
</div>

<div class="sect3" lang="en">
### Available Sessions {#available-sessions}

The greeter offers a list of available sessions, depending on the Window Managers and Desktop Environments installed. The list includes sessions which have a corresponding <code class="filename">.desktop</code> file installed under <code class="filename">/usr/share/xsessions</code> or <code class="filename">/usr/share/wayland-sessions</code>. Most of the Window Managers and Desktop Environments automatically provide those files, but if necessary, you may include a custom one.
</div>

<div class="sect3" lang="en">
### Themes {#themes}

Three themes are installed at <code class="filename">/usr/share/sddm/themes</code>: elarun, maldives, and maya. There is also a default theme, which is not present in that directory. You can install other themes in that directory. In order to change the theme, you need to edit <code class="filename">/etc/sddm.conf</code>, to change the default (empty) theme, replacing <code class="literal">Current=</code> with <code class="literal">Current=</code>*`<new theme>`*, e.g. <code class="literal">Current=maldives</code>.

In order to see the theme without leaving the session, issue:

```bash
sddm-greeter --test-mode --theme <theme path>
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">sddm and sddm-greeter</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/sddm and /var/lib/sddm</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="sddm-prog"></a><span class="command"><span class="term"><strong>sddm</strong></span></span>              is a display and login manager based on <span class="application">Qt</span> libraries.
  <a id="sddm-greeter"></a><span class="command"><span class="term"><strong>sddm-greeter</strong></span></span>   is an auxiliary process that displays the greeter, a graphical user interface that performs user authentication and initiates the selected window manager or display environment.
  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lightdm.md "lightdm-1.32.0")

    lightdm-1.32.0

-   [Next](wm.md "Window Managers")

    Window Managers

-   [Up](dm.md "Chapter 26. Display Managers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
