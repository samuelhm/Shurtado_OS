::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](bolt.md "bolt-0.9.11"){accesskey="p"}

    bolt-0.9.11

-   [Next](../gnome/gnome.md "GNOME"){accesskey="n"}

    GNOME

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#plasma-build}Building Plasma {#building-plasma .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
KDE Plasma is a collection of packages based on top of KDE Frameworks and QML. They implement the KDE Display Environment (Plasma).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

The instructions below build all of the Plasma packages in one step by using a bash script.

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/plasma/6.6.5](https://download.kde.org/stable/plasma/6.6.5){.ulink}

-   Download MD5 sum: See Below

-   Download size: 343 MB

-   Estimated disk space required: 3.1 GB (742 MB installed)

-   Estimated build time: 20 SBU (using parallelism=8)
:::

### Plasma Dependencies

#### Required

[Boost-1.91.0-1](../general/boost.md "boost-1.91.0-1"){.xref}, [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, [kirigami-addons-1.12.1](kirigami-addons.md "kirigami-addons-1.12.1"){.xref}, [kquickimageeditor-0.6.1](kquickimageeditor.md "kquickimageeditor-0.6.1"){.xref}, [libdisplay-info-0.3.0](../general/libdisplay-info.md "libdisplay-info-0.3.0"){.xref}, [libpwquality-1.4.5](../postlfs/libpwquality.md "libpwquality-1.4.5"){.xref}, [libqalculate-5.11.0](../general/libqalculate.md "libqalculate-5.11.0"){.xref}, [libnl-3.12.0](../basicnet/libnl.md "libnl-3.12.0"){.xref}, [libxcvt-0.1.3](../x/libxcvt.md "libxcvt-0.1.3"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref} built with [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}, [opencv-4.13.0](../general/opencv.md "opencv-4.13.0"){.xref}, [phonon-4.12.0](phonon.md "Phonon-4.12.0"){.xref}, [pipewire-1.6.6](../multimedia/pipewire.md "Pipewire-1.6.6"){.xref}, [pulseaudio-qt-1.8.1](pulseaudio-qt.md "pulseaudio-qt-1.8.1"){.xref}, [qca-2.3.10](../general/qca.md "Qca-2.3.10"){.xref}, [qcoro-0.13.0](../general/qcoro.md "qcoro-0.13.0"){.xref}, [qtkeychain-0.16.0](qtkeychain.md "qtkeychain-0.16.0"){.xref}, [sassc-3.6.2](../general/sassc.md "sassc-3.6.2"){.xref}, [taglib-2.3](../multimedia/taglib.md "Taglib-2.3"){.xref}, [xdotool-4.20260303.1](../general/xdotool.md "xdotool-4.20260303.1"){.xref}, and [Xorg Evdev Driver-2.11.0](../x/x7driver.md#xorg-evdev-driver "Xorg Evdev Driver-2.11.0"){.xref}

#### Recommended

[bolt-0.9.11](bolt.md "bolt-0.9.11"){.xref}, [gsettings-desktop-schemas-50.1](../gnome/gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [libinput-1.31.2](../x/x7driver.md#libinput "libinput-1.31.2"){.xref}, [libpcap-1.10.6](../basicnet/libpcap.md "libpcap-1.10.6"){.xref}, [libwacom-2.19.0](../general/libwacom.md "libwacom-2.19.0"){.xref} and [Xorg Wacom Driver-1.2.4](../x/x7driver.md#xorg-wacom-driver "Xorg Wacom Driver-1.2.4"){.xref} (for wacomtablet), [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [lm-sensors-3-6-2](../general/lm-sensors.md "lm-sensors-3-6-2"){.xref}, [oxygen-icons-6.1.0](../x/oxygen-icons.md "oxygen-icons-6.1.0"){.xref}, [pciutils-3.15.0](../general/pciutils.md "pciutils-3.15.0"){.xref}, [power-profiles-daemon-0.30](../general/power-profiles-daemon.md "Power-profiles-daemon-0.30"){.xref}, and the following Python modules: [psutil-7.2.2](../general/python-modules.md#psutil "psutil-7.2.2"){.xref}, [pygdbmi-0.11.0.0](../general/python-modules.md#pygdbmi "pygdbmi-0.11.0.0"){.xref}, [sentry-sdk-2.53.0](../general/python-modules.md#sentry-sdk "sentry-sdk-2.53.0"){.xref}, [urllib3-2.7.0](../general/python-dependencies.md#urllib3 "Urllib3-2.7.0"){.xref} (if they are not installed, they will be downloaded and installed by the drkonqi build procedure)

#### Recommended (runtime)

[AccountsService-23.13.9](../general/accountsservice.md "AccountsService-23.13.9"){.xref}, [breeze-icons-6.26.0](../x/breeze-icons.md "breeze-icons-6.26.0"){.xref}, [kio-extras-26.04.1](kio-extras.md "kio-extras-26.04.1"){.xref}, [smartmontools-7.5](../postlfs/smartmontools.md "smartmontools-7.5"){.xref}, [xdg-desktop-portal-1.20.4](../x/xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){.xref}, and [Xwayland-24.1.12](../x/xwayland.md "Xwayland-24.1.12"){.xref}

#### Optional

[AppStream-1.1.2](../general/appstream.md "AppStream-1.1.2"){.xref} (build with -qt=true), [GLU-9.0.3](../x/glu.md "GLU-9.0.3"){.xref}, [ibus-1.5.34](../general/ibus.md "ibus-1.5.34"){.xref}, [qtwebengine-6.11.1](../x/qtwebengine.md "QtWebEngine-6.11.1"){.xref}, [KDevPlatform](https://www.kdevelop.org/){.ulink}, [libgps](https://gpsd.gitlab.io/gpsd/){.ulink}, [libhybris](https://github.com/libhybris/libhybris){.ulink}, [packagekit-qt](https://www.freedesktop.org/software/PackageKit/releases/){.ulink}, [Qapt](https://launchpad.net/qapt){.ulink}, [SCIM](https://github.com/osiam/osiam){.ulink}, and [socat](http://www.dest-unreach.org/socat/){.ulink} (for pam_kwallet)

::: {.sect2 lang="en"}
## Downloading KDE Plasma {#downloading-kde-plasma .sect2}

The easiest way to get the KDE Plasma packages is to use a single [**wget**]{.command} to fetch them all at once:

``` userinput
url=https://download.kde.org/stable/plasma/6.6.5/
wget -r -nH -nd -A '*.xz' -np $url

The options used here are:
  -r            recurse through child directories
  -nH           disable generation of host-prefixed directories
  -nd           do not create a hierarchy of directories
  -A '*.xz'     just get the *.xz files
  -np           don't get parent directories
```
:::

::::: {.sect2 lang="en"}
## Setting Package Order {#setting-package-order .sect2}

The order of building files is important due to internal dependencies. Create the list of files in the proper order as follows:

``` userinput
cat > plasma-6.6.5.md5 << "EOF"
25a9cbe5025e2ad58bfb6a4c5fc9427a  kdecoration-6.6.5.tar.xz
84c079431cc0997e392198dfd6e1ca5d  libkscreen-6.6.5.tar.xz
ef8d950f5a47844bddc01573542543ea  libksysguard-6.6.5.tar.xz
a734cf35e033be4623d757cf5992862a  breeze-6.6.5.tar.xz
a16f886760a43eecbdc58a1a4dff987c  breeze-gtk-6.6.5.tar.xz
4b79f4b2765f7c1429a3335154b23989  layer-shell-qt-6.6.5.tar.xz
779d53a76bf71addcc9160cd778886fc  plasma-activities-6.6.5.tar.xz
f636fd952c5cf4d3f1fb8712d33e4739  libplasma-6.6.5.tar.xz
fd9edc2ef847dce1d1730b534e0b1c8e  kscreenlocker-6.6.5.tar.xz
adf854bae9e79432bd8c1e2d68489a3d  kglobalacceld-6.6.5.tar.xz
bdb0b9f18478d16b31246882fdcbc458  kwayland-6.6.5.tar.xz
4aa315479ff61033268e479f8049b53e  aurorae-6.6.5.tar.xz
deff92e89fe374886d87c39a3a00aa59  knighttime-6.6.5.tar.xz
38507b0decef9bb2918472632fc4f189  plasma-keyboard-6.6.5.tar.xz
5c7ed1b1eabed2599ba188085a2fd7dc  kwin-6.6.5.tar.xz
ba941eeb290b71661edcd8938ad97f65  kwin-x11-6.6.5.tar.xz
38193da75dbc561e3a6e8b2d58f665b7  plasma5support-6.6.5.tar.xz
0834ef652f0161d6d16dc5365a0471da  plasma-activities-stats-6.6.5.tar.xz
0f52a09bc36fd4ed1663dba070c62c51  kpipewire-6.6.5.tar.xz
5b0b456056d6f7db63523de7b9841ef7  plasma-workspace-6.6.5.tar.xz
1607ca3340f7c48a0339d2d9457b02cb  plasma-disks-6.6.5.tar.xz
78a2f5d27ca151f8c563390a7f5d7559  bluedevil-6.6.5.tar.xz
3262889e5dc75d1d667ac2c888d977a9  kde-gtk-config-6.6.5.tar.xz
3745e4e372efc0ec815517b6a7dd7eb8  kmenuedit-6.6.5.tar.xz
56c43a69c2ff095eca4fc7481c89df7e  kscreen-6.6.5.tar.xz
c50da5c0ed8581df0c3dc4ce0a3c5b4a  kwallet-pam-6.6.5.tar.xz
a07784c041bfed130e3c3c3d9f1ba826  kwrited-6.6.5.tar.xz
094fb6b6728c861f8e91dfd9dc5bfb9b  milou-6.6.5.tar.xz
91a445df344fff122977f62bd3e641d0  plasma-nm-6.6.5.tar.xz
7df4d92581b4c030fb812ba7b185332e  plasma-pa-6.6.5.tar.xz
c47fe68afb44e7338a72761a70dd829e  plasma-workspace-wallpapers-6.6.5.tar.xz
dbe1e22db3512b54a644d3ca03e3c5bc  polkit-kde-agent-1-6.6.5.tar.xz
2b04b0b70e0d95768de847c60023fc2b  powerdevil-6.6.5.tar.xz
2f8a00c1bbaa8611ddbc16ad1446b0e8  plasma-desktop-6.6.5.tar.xz
5f40c1b6efba30ade6d0094478beefa5  kgamma-6.6.5.tar.xz
01959d67ddccdb37eba1b73548787e84  ksshaskpass-6.6.5.tar.xz
#b622f7d0d55d747982bf16c932384d6a  plasma-sdk-6.6.5.tar.xz
9a0910f272e67858f8ac942e314bb921  sddm-kcm-6.6.5.tar.xz
#34ae88fcf0acb962c25ceeb10910c807  discover-6.6.5.tar.xz
#6ab1452f59a365c7b32247ae7c26061e  breeze-grub-6.6.5.tar.xz
#c99b82d007e8dfe8e1eb30c59d5a0a24  breeze-plymouth-6.6.5.tar.xz
7eb85aedea5e6bafd1dffde6b5b85aff  kactivitymanagerd-6.6.5.tar.xz
1fd053c36d6ab9c21085f26fb359e447  plasma-integration-6.6.5.tar.xz
#d9578c2cdbe21c63783dd1028b386660  plymouth-kcm-6.6.5.tar.xz
413911c21cc4085e58095fba76e5856f  xdg-desktop-portal-kde-6.6.5.tar.xz
1ce72a462b97556cabfe03ddb258040b  drkonqi-6.6.5.tar.xz
6e4b6f865c56eaf6af7e0dbe9576ff7f  plasma-vault-6.6.5.tar.xz
#bf05373a1b961d1fed8cc4cea0f7ef49  plasma-browser-integration-6.6.5.tar.xz
f1cb86e32f4a075dafce94f4a06b1a85  kde-cli-tools-6.6.5.tar.xz
6f085c89277d2f6e038787ff30259274  systemsettings-6.6.5.tar.xz
#debc51e8b6a57ad81bcab9f3b60a77d2  plasma-mobile-6.6.5.tar.xz
#88f80202f73683ab0988f8b36f587706  plasma-nano-6.6.5.tar.xz
830a6e533e38b52aca0221b89edb04d6  plasma-firewall-6.6.5.tar.xz
12238450a69e11e2313a8c54722ad935  plasma-systemmonitor-6.6.5.tar.xz
d4e332092e073561afff420bbca875ab  qqc2-breeze-style-6.6.5.tar.xz
295260a6cc9b65ed5f6921a6eebcbd43  ksystemstats-6.6.5.tar.xz
45a03472ef7d1731758537188cf14b2b  oxygen-sounds-6.6.5.tar.xz
10ac516b1c52877f554fd72a2fe97776  kdeplasma-addons-6.6.5.tar.xz
#83b4d6cb63f25c60b2ac3a20696b34fd  flatpak-kcm-6.6.5.tar.xz
39d8d412ab5e55aa57c9e3d1d1a394c8  plasma-welcome-6.6.5.tar.xz
7712dcb535f8c71d0e62272882378200  ocean-sound-theme-6.6.5.tar.xz
f246fe30703510a4d877d9939ff40c7e  print-manager-6.6.5.tar.xz
69c8841d89191259f2e6247ffe455742  wacomtablet-6.6.5.tar.xz
#84a4986076f57f3f2f9b56a1328201fd  kwayland-integration-6.6.5.tar.xz
#54edfb5130bf416592258de0456b638f  krdp-6.6.5.tar.xz
66609e0e0291b15bbd98eabf7184204f  oxygen-6.6.5.tar.xz
#90d3231a6464ee640a6c47c19d462b4c  plasma-dialer-6.6.5.tar.xz
#9f124aa2b87c142b099e1bb2d18dc6a9  spacebar-6.6.5.tar.xz
2a59023f61264bdf976519fedb2f8c69  spectacle-6.6.5.tar.xz
#3b089920276a67f9887530e7a81a368f  plasma-login-manager-6.6.5.tar.xz
474a4551dfb6a7897cef98480fc451f7  plasma-setup-6.6.5.tar.xz
3374df47cc9ecb0d940ce68ca212cb89  kinfocenter-6.6.5.tar.xz
b481182e12e3438774c72d8f073b96ff  plasma-thunderbolt-6.6.5.tar.xz
EOF
```

:::: {.admon .note}
![\[Note\]](../images/note.png)

### About Commented Out Packages

In the above list, several files are commented out with a hash (#) character.

::: itemizedlist
-   The plasma-sdk package is optional and used for software development.

-   The discover package requires [AppStream-1.1.2](../general/appstream.md "AppStream-1.1.2"){.xref} to be built with the -D qt=true switch.

-   The breeze-grub, breeze-plymouth, and plymouth-kcm packages above are all for customized support of [Plymouth](https://www.freedesktop.org/wiki/Software/Plymouth/){.ulink} which is designed to be run within an initial ram disk during boot (see [the section called “About initramfs”](../postlfs/initramfs.md "About initramfs"){.xref}).

-   The plasma-browser-integration package is designed to implement browser integration for Plasma into Mozilla Firefox and Google Chrome. The package does build, but is only useful if you want these browsers to be integrated into the shell in a way that lets you see (and control) downloads from Plasma's notifications area, as well as allowing you to search browser history in the KDE Runner. Note that you must also install a browser extension for this to work. For more details, see [the KDE Plasma wiki page about browser integration.](https://community.kde.org/Plasma/Browser_Integration){.ulink}

-   The krdp package is used to allow an RDP server to be run while using Plasma. This feature requires the 2.x version of FreeRDP, which is not in BLFS.

-   The plasma-nano package is used for embedded systems.

-   The plasma-mobile, plasma-dialer, and spacebar packages provide phone functionality for Plasma.

-   The flatpak-kcm package is for managing support of flatpak applications.

-   The kwayland-integration application requires plasma5 support.

-   The plasma-login-manager application provides a display manager for KDE Plasma, forked from SDDM and with an new frontend providing a greeter, wallpaper plugin integration and System Settings module (KCM).
:::
::::
:::::

::::: {.installation lang="en"}
## Installation of Plasma {#installation-of-plasma .sect2}

:::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

::: orderedlist
1.  Run the entire script as the root user (not recommended).

2.  Use the [**sudo**]{.command} command from the [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} package.

3.  Use [**su -c "command arguments"**]{.command} (quotes required) which will ask for the root password for every iteration of the loop.
:::

One way to handle this situation is to create a short [**bash**]{.command} function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

``` userinput
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
::::

First, start a subshell that will exit on error:

``` userinput
bash -e
```

Install all of the packages by running the following commands:

``` userinput
while read -r line; do

    # Get the file name, ignoring comments and blank lines
    if $(echo $line | grep -E -q '^ *$|^#' ); then continue; fi
    file=$(echo $line | cut -d" " -f2)

    pkg=$(       echo $file|sed 's|^.*/||')    # Remove directory
    name=$(      echo $pkg |sed 's|-6.*$||')   # Isolate package name
    packagedir=$(echo $pkg |sed 's|\.tar.*||') # Source directory

    tar -xf $file
    pushd $packagedir

       mkdir build
       cd    build

       cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
             -D CMAKE_INSTALL_LIBEXECDIR=libexec \
             -D CMAKE_BUILD_TYPE=Release         \
             -D BUILD_QT5=OFF                    \
             -D BUILD_TESTING=OFF                \
             -W no-dev ..  &&

        make
        as_root make install
    popd


    as_root rm -rf $packagedir
    as_root /sbin/ldconfig

done < plasma-6.6.5.md5

exit
```

If you did not set `$KF6_PREFIX`{.envar} to `/usr`{.filename}, create symlinks to allow display managers to find [Plasma]{.application}, and to allow the XDG Desktop Portal to be detected. As the `root`{.systemitem} user:

``` root
# Setup xsessions (X11 sessions)
install -dvm 755 /usr/share/xsessions
cd /usr/share/xsessions

[ -e plasma.desktop ] ||
ln -sfv $KF6_PREFIX/share/xsessions/plasmax11.desktop 

# Setup wayland-sessions 
install -dvm 755 /usr/share/wayland-sessions
cd /usr/share/wayland-sessions

[ -e plasmawayland.desktop ] ||
ln -sfv $KF6_PREFIX/share/wayland-sessions/plasma.desktop

# Setup xdg-desktop-portal
install -dvm 755 /usr/share/xdg-desktop-portal
cd /usr/share/xdg-desktop-portal 

[ -e kde-portals.conf ] ||
ln -sfv $KF6_PREFIX/share/xdg-desktop-portal/kde-portals.conf

# Setup kde portal
install -dvm 755 /usr/share/xdg-desktop-portal/portals
cd /usr/share/xdg-desktop-portal/portals

[ -e kde.portal ] ||
ln -sfv $KF6_PREFIX/share/xdg-desktop-portal/portals/kde.portal
```
:::::

:::: {.configuration lang="en"}
## Configuring Plasma {#configuring-plasma .sect2}

::: {.sect3 lang="en"}
### Linux PAM Configuration {#linux-pam-configuration .sect3}

If you built Plasma with the recommended [Linux PAM]{.application} support, create necessary configuration files by running the following commands as the `root`{.systemitem} user:

``` root
cat > /etc/pam.d/kde << "EOF"
# Begin /etc/pam.d/kde

auth     requisite      pam_nologin.so
auth     required       pam_env.so

auth     required       pam_succeed_if.so uid >= 1000 quiet
auth     include        system-auth

account  include        system-account
password include        system-password
session  include        system-session

# End /etc/pam.d/kde
EOF

cat > /etc/pam.d/kde-np << "EOF"
# Begin /etc/pam.d/kde-np

auth     requisite      pam_nologin.so
auth     required       pam_env.so

auth     required       pam_succeed_if.so uid >= 1000 quiet
auth     required       pam_permit.so

account  include        system-account
password include        system-password
session  include        system-session

# End /etc/pam.d/kde-np
EOF

cat > /etc/pam.d/kscreensaver << "EOF"
# Begin /etc/pam.d/kscreensaver

auth    include system-auth
account include system-account

# End /etc/pam.d/kscreensaver
EOF
```
:::
::::

::: {.starting lang="en"}
## Starting Plasma {#starting-plasma .sect2}

You can start [Plasma]{.application} from a TTY, using [xinit-1.4.4](../x/xinit.md "xinit-1.4.4"){.xref}.

To start [Plasma]{.application} using [xinit-1.4.4](../x/xinit.md "xinit-1.4.4"){.xref}, run the following commands:

``` userinput
cat > ~/.xinitrc << "EOF"
dbus-launch --exit-with-x11 $KF6_PREFIX/bin/startplasma-x11
EOF

startx
```

The X session starts on the first unused virtual terminal, normally vt7. You can switch to another vt[*n*]{.emphasis} simultaneously pressing the keys Ctrl-Alt-F[*n*]{.emphasis} ([*n*]{.emphasis}=1, 2, ...). To switch back to the X session, normally started at vt7, use Ctrl-Alt-F7. The vt where the command [**startx**]{.command} was executed will display many messages, including X starting messages, applications automatically started with the session, and eventually, some warning and error messages. You may prefer to redirect those messages to a log file, which not only will keep the initial vt uncluttered, but can also be used for debugging purposes. This can be done starting X with:

``` userinput
startx &> ~/x-session-errors
```

When shutting down or rebooting, the shutdown messages appear on the vt where X was running. If you wish to see those messages, simultaneously press keys Alt-F7 (assuming that X was running on vt7).
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [There are too many plasma programs (over 50 in /opt/kf6/bin) to list separately here.]{.segbody}
:::

::: seg
**Installed Libraries:** [There are too many plasma libraries (over 250 in /opt/kf6/lib) to list separately here.]{.segbody}
:::

::: seg
**Installed Directories:** [There are too many plasma directories (over 2700 in /opt/kf6) to list separately here.]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](bolt.md "bolt-0.9.11"){accesskey="p"}

    bolt-0.9.11

-   [Next](../gnome/gnome.md "GNOME"){accesskey="n"}

    GNOME

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
