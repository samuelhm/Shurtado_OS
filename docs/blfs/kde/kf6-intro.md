<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 30. KDE Frameworks 6

-   [Prev](kf6.md "KDE Frameworks 6")

    KDE Frameworks 6

-   [Next](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)")

    Building KDE Frameworks 6.26.0 (KF6)

-   [Up](kf6.md "Chapter 30. KDE Frameworks 6")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# KDE Frameworks 6 Pre-installation Configuration {#kde-frameworks-6-pre-installation-configuration}

<div class="sect1" lang="en">
KF6 can be installed in <code class="filename">/usr</code> or <code class="filename">/opt/kf6</code>. The BLFS editors recommend the latter in the BLFS environment.

<div class="sect2" lang="en">
## Installing in /usr {#installing-in-usr}

One option is to install <span class="application">KDE Frameworks</span> into the <code class="filename">/usr</code> hierarchy. This creates a simpler setup but makes it more difficult to try multiple versions of <span class="application">KDE Frameworks</span>.

```bash
export KF6_PREFIX=/usr
```

It is a good idea to add the following variables to your system or personal profiles:

```bash
cat >> /etc/profile.d/qt6.sh << "EOF"
# Begin kf6 extension for /etc/profile.d/qt6.sh

pathappend /usr/lib/plugins        QT_PLUGIN_PATH
pathappend $QT6DIR/lib/plugins     QT_PLUGIN_PATH

pathappend /usr/lib/qt6/qml        QML2_IMPORT_PATH
pathappend $QT6DIR/lib/qml         QML2_IMPORT_PATH

# End extension for /etc/profile.d/qt6.sh
EOF

cat > /etc/profile.d/kf6.sh << "EOF"
# Begin /etc/profile.d/kf6.sh

export KF6_PREFIX=/usr

# End /etc/profile.d/kf6.sh
EOF
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If <span class="application">qt6</span> was installed in <code class="filename">/usr</code>, the <code class="filename">$QT6DIR/lib/</code> portions of the above paths may need to be changed to <code class="filename">$QT6DIR/lib/qt6/</code>.
</div>

Additionally, if <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> is installed, these variables should be available to the super user. Execute the following commands as the <code class="systemitem">root</code> user:

```bash
cat >> /etc/sudoers.d/qt << "EOF"
Defaults env_keep += QT_PLUGIN_PATH
Defaults env_keep += QML2_IMPORT_PATH
EOF

cat >> /etc/sudoers.d/kde << "EOF"
Defaults env_keep += KF6_PREFIX
EOF
```
</div>

<div class="sect2" lang="en">
## Installing in /opt {#installing-in-opt}

A method of building multiple versions installs <span class="application">KDE Frameworks</span> in the <code class="filename">/opt</code> hierarchy:

```bash
export KF6_PREFIX=/opt/kf6
```

If you are not installing <span class="application">KDE Frameworks</span> in <code class="filename">/usr</code>, you will need to make some additional configuration changes. Best practice is to add those to your system or personal profile:

```bash
cat > /etc/profile.d/kf6.sh << "EOF"
# Begin /etc/profile.d/kf6.sh

export KF6_PREFIX=/opt/kf6

pathappend $KF6_PREFIX/bin              PATH
pathappend $KF6_PREFIX/lib/pkgconfig    PKG_CONFIG_PATH

pathappend $KF6_PREFIX/etc/xdg          XDG_CONFIG_DIRS
pathappend $KF6_PREFIX/share            XDG_DATA_DIRS

pathappend $KF6_PREFIX/lib/plugins      QT_PLUGIN_PATH
pathappend $KF6_PREFIX/lib/plugins/kcms QT_PLUGIN_PATH

pathappend $KF6_PREFIX/lib/qml          QML2_IMPORT_PATH

pathappend $KF6_PREFIX/lib/python3.14/site-packages PYTHONPATH

pathappend $KF6_PREFIX/include          CPLUS_INCLUDE_PATH

pathappend $KF6_PREFIX/lib/gtk-3.0      GTK_PATH
# End /etc/profile.d/kf6.sh
EOF

cat >> /etc/profile.d/qt6.sh << "EOF"
# Begin Qt6 changes for KF6

pathappend /usr/lib/plugins            QT_PLUGIN_PATH
pathappend $QT6DIR/plugins             QT_PLUGIN_PATH
pathappend $QT6DIR/qml                 QML2_IMPORT_PATH

# End Qt6 changes for KF6
EOF
```

Expand your <code class="filename">/etc/ld.so.conf</code> file:

```bash
cat >> /etc/ld.so.conf << "EOF"
# Begin KF6 addition

/opt/kf6/lib

# End KF6 addition
EOF
```

Several <span class="application">KDE Frameworks</span> and <span class="application">KDE Plasma</span> packages install files into <span class="application">D-Bus</span>, <span class="application">Polkit</span>, and <span class="application">systemd</span> directories. When installing <span class="application">KDE 6</span> in a location other than <code class="filename">/usr</code>, <span class="application">D-Bus</span>, <span class="application">Polkit</span>, and <span class="application">systemd</span> need to be able to find these files. The easiest way to achieve this is to create the following symlinks (as the <code class="systemitem">root</code> user):

```bash
install -v -dm755           $KF6_PREFIX/{etc,share} &&
ln -sfv /etc/dbus-1         $KF6_PREFIX/etc         &&
ln -sfv /usr/share/dbus-1   $KF6_PREFIX/share       &&
ln -sfv /usr/share/polkit-1 $KF6_PREFIX/share       &&
install -v -dm755           $KF6_PREFIX/lib         &&
ln -sfv /usr/lib/systemd    $KF6_PREFIX/lib
```

Some packages may also install icons from the "hicolor" icon set. Since that icon set is used by many packages, it is a good idea to create a symlink to the one in <code class="filename">/usr/share</code> to avoid having multiple installations of <a class="xref" href="../x/hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a>. Run the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -dm755                $KF6_PREFIX/share/icons &&
ln -sfv /usr/share/icons/hicolor $KF6_PREFIX/share/icons
```

Additionally, if <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> is installed, these variables should be available to the super user. Execute the following commands as the <code class="systemitem">root</code> user:

```bash
cat >> /etc/sudoers.d/qt << "EOF"
Defaults env_keep += QT_PLUGIN_PATH
Defaults env_keep += QML2_IMPORT_PATH
EOF

cat >> /etc/sudoers.d/kde << "EOF"
Defaults env_keep += KF6_PREFIX
EOF
```

<div class="admon tip">
![\[Tip\]](../images/tip.png)

### Tip

Sometimes, the installation paths are hardcoded into installed files. This is the reason why <code class="filename">/opt/kf6</code> is used as installation prefix instead of <code class="filename">/opt/kf6-6.26.0</code>. After installing <span class="application">KDE Frameworks</span>, you may rename the directory and create a symlink:

```bash
mv /opt/kf6{,-6.26.0}
ln -sfv kf6-6.26.0 /opt/kf6
```

Later on, you may want to install other versions of <span class="application">KDE Frameworks</span>. To do that, just remove the symlink and use <code class="filename">/opt/kf6</code> as the prefix again. Which version of <span class="application">KDE Frameworks</span> you use depends only on where the symlink points. No other reconfiguration will be needed.
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kf6.md "KDE Frameworks 6")

    KDE Frameworks 6

-   [Next](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)")

    Building KDE Frameworks 6.26.0 (KF6)

-   [Up](kf6.md "Chapter 30. KDE Frameworks 6")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
