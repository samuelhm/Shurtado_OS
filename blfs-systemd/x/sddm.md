::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 26. Display Managers

-   [Prev](lightdm.md "lightdm-1.32.0"){accesskey="p"}

    lightdm-1.32.0

-   [Next](wm.md "Window Managers"){accesskey="n"}

    Window Managers

-   [Up](dm.md "Chapter 26. Display Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sddm}sddm-0.21.0 {#sddm-0.21.0 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to sddm {#introduction-to-sddm .sect2}

The [sddm]{.application} package contains a lightweight display manager based upon [Qt]{.application} and QML.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/sddm/sddm/archive/v0.21.0/sddm-0.21.0.tar.gz](https://github.com/sddm/sddm/archive/v0.21.0/sddm-0.21.0.tar.gz){.ulink}

-   Download MD5 sum: e32a35c282d9be3360737eefbe25b5fa

-   Download size: 3.4 MB

-   Estimated disk space required: 24 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
:::

### SDDM Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref}, and [Qt-6.11.1](qt6.md "Qt-6.11.1"){.xref}

#### Recommended

[docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref} (for the man pages), [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, and [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of SDDM {#installation-of-sddm .sect2}

First, create a dedicated user and group to take control of the [**sddm**]{.command} daemon after it is started. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -g 64 sddm &&
useradd  -c "sddm Daemon" \
         -d /var/lib/sddm \
         -u 64 -g sddm    \
         -s /bin/false sddm
```

Install [sddm]{.application} by running the following commands:

``` userinput
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

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -dm755 -o sddm -g sddm /var/lib/sddm
/usr/bin/sddm --example-config > /etc/sddm.conf
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply additional compiler optimizations.

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.

*`-D DBUS_CONFIG_FILENAME=sddm_org.freedesktop.DisplayManager.conf`*: This switch prevents the file `/etc/dbus-1/system.d/org.freedesktop.DisplayManager.conf`{.filename} from being overwritten, as it may be used by other DM's.

*`-D BUILD_MAN_PAGES=ON`*: This switch is used to build and install man pages.
:::

::::::::: {.configuration lang="en"}
## Configuring SDDM {#configuring-sddm .sect2}

::: {.sect3 lang="en"}
### []{#sddm-config}Config Files {#config-files .sect3}

/etc/sddm.config

Normally, you want to edit this file. For example, if Xorg is installed in /opt, use your preferred editor as the `root`{.systemitem} user to replace the default [*XauthPath*]{.emphasis} value by [*/opt/xorg/bin/xauth*]{.emphasis}. Or, as the `root`{.systemitem} user, issue:

``` userinput
sed -i.orig '/ServerPath/ s|usr|opt/xorg|' /etc/sddm.conf
```

This command will do the substitution and create a copy of the original file with name `/etc/sddm.conf.orig`{.filename}.

From now on, we will describe how to modify configurations using sed. Of course, you may instead use your preferred editor as the `root`{.systemitem} user.

For security reasons, you normally want the default [*ServerArguments=-nolisten tcp*]{.emphasis}, unless a remote machine needs access to the local X server. In that case, as the `root`{.systemitem} user, issue:

``` userinput
sed -i 's/-nolisten tcp//' /etc/sddm.conf
```

Desktop (Notebook) users, normally want the Num Lock key on (off). For that, as `root`{.systemitem}, issue:

``` root
sed -i '/Numlock/s/none/on/' /etc/sddm.conf
```

for Desktop users. For Notebook users, replace /on/ by /off/ in the command above.

By default, a virtual keyboard is presented for the user. If this is not desired, run as `root`{.systemitem}:

``` root
sed -i 's/qtvirtualkeyboard//' /etc/sddm.conf
```
:::

::: {.sect3 lang="en"}
### []{#sddm-bootscript}Boot Script {#boot-script .sect3}

Enable the pre-installed systemd unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable sddm
```
:::

:::: {.sect3 lang="en"}
### Linux PAM Configuration {#linux-pam-configuration .sect3}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The install procedure above installed a set of PAM configuration files. These procedures overwrite them and use versions compatible with a BLFS environment.
:::

If you have built [sddm]{.application} with [Linux PAM]{.application} support, create the necessary configuration files by running the following commands as the `root`{.systemitem} user:

``` root
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
::::

::: {.sect3 lang="en"}
### []{#sddm-sessions}Available Sessions {#available-sessions .sect3}

The greeter offers a list of available sessions, depending on the Window Managers and Desktop Environments installed. The list includes sessions which have a corresponding `.desktop`{.filename} file installed under `/usr/share/xsessions`{.filename} or `/usr/share/wayland-sessions`{.filename}. Most of the Window Managers and Desktop Environments automatically provide those files, but if necessary, you may include a custom one.
:::

::: {.sect3 lang="en"}
### []{#sddm-themes}Themes {#themes .sect3}

Three themes are installed at `/usr/share/sddm/themes`{.filename}: elarun, maldives, and maya. There is also a default theme, which is not present in that directory. You can install other themes in that directory. In order to change the theme, you need to edit `/etc/sddm.conf`{.filename}, to change the default (empty) theme, replacing `Current=`{.literal} with `Current=`{.literal}*`<new theme>`*, e.g. `Current=maldives`{.literal}.

In order to see the theme without leaving the session, issue:

``` userinput
sddm-greeter --test-mode --theme <theme path>
```
:::
:::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [sddm and sddm-greeter]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/sddm and /var/lib/sddm]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#sddm-prog}[[**sddm**]{.command}]{.term}              is a display and login manager based on [Qt]{.application} libraries.
  []{#sddm-greeter}[[**sddm-greeter**]{.command}]{.term}   is an auxiliary process that displays the greeter, a graphical user interface that performs user authentication and initiates the selected window manager or display environment.
  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](lightdm.md "lightdm-1.32.0"){accesskey="p"}

    lightdm-1.32.0

-   [Next](wm.md "Window Managers"){accesskey="n"}

    Window Managers

-   [Up](dm.md "Chapter 26. Display Managers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
