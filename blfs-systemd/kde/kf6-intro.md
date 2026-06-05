::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 30. KDE Frameworks 6

-   [Prev](kf6.md "KDE Frameworks 6"){accesskey="p"}

    KDE Frameworks 6

-   [Next](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){accesskey="n"}

    Building KDE Frameworks 6.26.0 (KF6)

-   [Up](kf6.md "Chapter 30. KDE Frameworks 6"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kf6-intro}KDE Frameworks 6 Pre-installation Configuration {#kde-frameworks-6-pre-installation-configuration .sect1}

::::::: {.sect1 lang="en"}
KF6 can be installed in `/usr`{.filename} or `/opt/kf6`{.filename}. The BLFS editors recommend the latter in the BLFS environment.

:::: {.sect2 lang="en"}
## Installing in /usr {#installing-in-usr .sect2}

One option is to install [KDE Frameworks]{.application} into the `/usr`{.filename} hierarchy. This creates a simpler setup but makes it more difficult to try multiple versions of [KDE Frameworks]{.application}.

``` userinput
export KF6_PREFIX=/usr
```

It is a good idea to add the following variables to your system or personal profiles:

``` userinput
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

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If [qt6]{.application} was installed in `/usr`{.filename}, the `$QT6DIR/lib/`{.filename} portions of the above paths may need to be changed to `$QT6DIR/lib/qt6/`{.filename}.
:::

Additionally, if [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} is installed, these variables should be available to the super user. Execute the following commands as the `root`{.systemitem} user:

``` root
cat >> /etc/sudoers.d/qt << "EOF"
Defaults env_keep += QT_PLUGIN_PATH
Defaults env_keep += QML2_IMPORT_PATH
EOF

cat >> /etc/sudoers.d/kde << "EOF"
Defaults env_keep += KF6_PREFIX
EOF
```
::::

:::: {.sect2 lang="en"}
## Installing in /opt {#installing-in-opt .sect2}

A method of building multiple versions installs [KDE Frameworks]{.application} in the `/opt`{.filename} hierarchy:

``` userinput
export KF6_PREFIX=/opt/kf6
```

If you are not installing [KDE Frameworks]{.application} in `/usr`{.filename}, you will need to make some additional configuration changes. Best practice is to add those to your system or personal profile:

``` root
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

Expand your `/etc/ld.so.conf`{.filename} file:

``` root
cat >> /etc/ld.so.conf << "EOF"
# Begin KF6 addition

/opt/kf6/lib

# End KF6 addition
EOF
```

Several [KDE Frameworks]{.application} and [KDE Plasma]{.application} packages install files into [D-Bus]{.application}, [Polkit]{.application}, and [systemd]{.application} directories. When installing [KDE 6]{.application} in a location other than `/usr`{.filename}, [D-Bus]{.application}, [Polkit]{.application}, and [systemd]{.application} need to be able to find these files. The easiest way to achieve this is to create the following symlinks (as the `root`{.systemitem} user):

``` root
install -v -dm755           $KF6_PREFIX/{etc,share} &&
ln -sfv /etc/dbus-1         $KF6_PREFIX/etc         &&
ln -sfv /usr/share/dbus-1   $KF6_PREFIX/share       &&
ln -sfv /usr/share/polkit-1 $KF6_PREFIX/share       &&
install -v -dm755           $KF6_PREFIX/lib         &&
ln -sfv /usr/lib/systemd    $KF6_PREFIX/lib
```

Some packages may also install icons from the "hicolor" icon set. Since that icon set is used by many packages, it is a good idea to create a symlink to the one in `/usr/share`{.filename} to avoid having multiple installations of [hicolor-icon-theme-0.18](../x/hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref}. Run the following commands as the `root`{.systemitem} user:

``` root
install -v -dm755                $KF6_PREFIX/share/icons &&
ln -sfv /usr/share/icons/hicolor $KF6_PREFIX/share/icons
```

Additionally, if [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} is installed, these variables should be available to the super user. Execute the following commands as the `root`{.systemitem} user:

``` root
cat >> /etc/sudoers.d/qt << "EOF"
Defaults env_keep += QT_PLUGIN_PATH
Defaults env_keep += QML2_IMPORT_PATH
EOF

cat >> /etc/sudoers.d/kde << "EOF"
Defaults env_keep += KF6_PREFIX
EOF
```

::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Tip

Sometimes, the installation paths are hardcoded into installed files. This is the reason why `/opt/kf6`{.filename} is used as installation prefix instead of `/opt/kf6-6.26.0`{.filename}. After installing [KDE Frameworks]{.application}, you may rename the directory and create a symlink:

``` root
mv /opt/kf6{,-6.26.0}
ln -sfv kf6-6.26.0 /opt/kf6
```

Later on, you may want to install other versions of [KDE Frameworks]{.application}. To do that, just remove the symlink and use `/opt/kf6`{.filename} as the prefix again. Which version of [KDE Frameworks]{.application} you use depends only on where the symlink points. No other reconfiguration will be needed.
:::
::::
:::::::

::: navfooter
-   [Prev](kf6.md "KDE Frameworks 6"){accesskey="p"}

    KDE Frameworks 6

-   [Next](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){accesskey="n"}

    Building KDE Frameworks 6.26.0 (KF6)

-   [Up](kf6.md "Chapter 30. KDE Frameworks 6"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
