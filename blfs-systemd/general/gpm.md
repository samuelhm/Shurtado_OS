::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](fcron.md "Fcron-3.4.0"){accesskey="p"}

    Fcron-3.4.0

-   [Next](hwdata.md "hwdata-0.408"){accesskey="n"}

    hwdata-0.408

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gpm}GPM-1.20.7 {#gpm-1.20.7 .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to GPM {#introduction-to-gpm .sect2}

The [GPM]{.application} (General Purpose Mouse daemon) package contains a mouse server for the console and [**xterm**]{.command}. It not only provides cut and paste support generally, but its library component is used by various software such as [Links]{.application} to provide mouse support to the application. It is useful on desktops, especially if following (Beyond) Linux From Scratch instructions; it's often much easier (and less error prone) to cut and paste between two console windows than to type everything by hand!

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/gpm/gpm-1.20.7.tar.bz2](https://anduin.linuxfromscratch.org/BLFS/gpm/gpm-1.20.7.tar.bz2){.ulink}

-   Download MD5 sum: bf84143905a6a903dbd4d4b911a2a2b8

-   Download size: 820 KB

-   Estimated disk space required: 7.4 MB

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/gpm-1.20.7-consolidated-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/gpm-1.20.7-consolidated-1.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/gpm-1.20.7-gcc15_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/gpm-1.20.7-gcc15_fixes-1.patch){.ulink}
:::

### GPM Dependencies

#### Optional

[texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (for documentation)
::::::

::: {.kernel lang="en"}
## []{#gpm-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following option in the kernel configuration and recompile the kernel if necessary:

``` screen
Device Drivers --->
  Input device support --->
    -*-   Generic input layer (needed for keyboard, mouse, ...)          [INPUT]
    <*/M>   Mouse interface                                     [INPUT_MOUSEDEV]
```
:::

::: {.installation lang="en"}
## Installation of GPM {#installation-of-gpm .sect2}

Install [GPM]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../gpm-1.20.7-consolidated-1.patch                &&
patch -Np1 -i ../gpm-1.20.7-gcc15_fixes-1.patch                 &&
./autogen.sh                                                    &&
./configure --prefix=/usr --sysconfdir=/etc ac_cv_path_emacs=no &&
make
```

If [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} is installed, build the GPM manual as dvi, ps, and pdf formats:

``` userinput
make -C doc gpm.{dvi,ps} &&
dvipdfm doc/gpm.dvi -o doc/gpm.pdf
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install                                          &&

install-info --dir-file=/usr/share/info/dir           \
             /usr/share/info/gpm.info                 &&

rm -fv /usr/lib/libgpm.a                              &&
ln -sfv libgpm.so.2.1.0 /usr/lib/libgpm.so            &&
install -v -m644 conf/gpm-root.conf /etc              &&

install -v -m755 -d /usr/share/doc/gpm-1.20.7/support &&
install -v -m644    doc/support/*                     \
                    /usr/share/doc/gpm-1.20.7/support &&
install -v -m644    doc/{FAQ,HACK_GPM,README*}        \
                    /usr/share/doc/gpm-1.20.7
```

If [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} is installed and you've built GPM manual as dvi, ps, and pdf formats, install them as the `root`{.systemitem} user:

``` root
install -vm644 doc/gpm.{dvi,ps,pdf} /usr/share/doc/gpm-1.20.7
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**./autogen.sh**]{.command}: This command creates the missing [**configure**]{.command} script.

*`ac_cv_path_emacs=no`*: This variable works around an issue causing the package fail to build with [Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref} installed. It also suppresses the installations of some [“[Emacs support files]{.quote}”]{.quote} shipped with GPM. These files are quite outdated and they should be superseded with [Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref} built-in GPM support. If you need to use [Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref} in Linux console with mouse support, you should install (or reinstall) [Emacs-30.2](../postlfs/emacs.md "Emacs-30.2"){.xref} [**after**]{.bold} GPM.

[**install-info ...**]{.command}: This package installs a `.info`{.filename} file, but does not update the system `dir`{.filename} file. This command makes the update.

[**ln -v -sfn libgpm.so.2.1.0 /usr/lib/libgpm.so**]{.command}: This command is used to create (or update) the `.so`{.filename} symlink to the library.
:::

:::::: {.configuration lang="en"}
## Configuring GPM {#configuring-gpm .sect2}

::: {.sect3 lang="en"}
### []{#gpm-init} Systemd Unit {#systemd-unit .sect3}

To start the [**gpm**]{.command} daemon at boot, install the systemd unit from the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package by running the following command as the `root`{.systemitem} user:

``` root
make install-gpm
```
:::

::: {.sect3 lang="en"}
### []{#gpm-config}Config Files {#config-files .sect3}

`/etc/gpm-root.conf`{.filename} and `~/.gpm-root`{.filename}: The default and individual user [**gpm-root**]{.command} configuration files.
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

[GPM]{.application} is by default started with the following parameters: *`-m /dev/input/mice -t imps2`*. If the mentioned parameters don't suit your needs, you can override them by running the following commands as the `root`{.systemitem} user:

``` userinput
install -v -dm755 /etc/systemd/system/gpm.service.d &&
cat > /etc/systemd/system/gpm.service.d/99-user.conf << EOF
[Service]
ExecStart=
ExecStart=/usr/sbin/gpm <list of parameters>
EOF
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [disable-paste, display-buttons, display-coords, get-versions, gpm, gpm-root, hltest, mev, and mouse-test]{.segbody}
:::

::: seg
**Installed Library:** [libgpm.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/gpm-1.20.7]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
  []{#disable-paste}[[**disable-paste**]{.command}]{.term}       is a security mechanism used to disable the paste buffer
  []{#display-buttons}[[**display-buttons**]{.command}]{.term}   is a simple program that reports the mouse buttons being pressed and released
  []{#display-coords}[[**display-coords**]{.command}]{.term}     is a simple program that reports the mouse coordinates
  []{#get-versions}[[**get-versions**]{.command}]{.term}         is used to report the [GPM]{.application} library and server versions
  []{#gpm-prog}[[**gpm**]{.command}]{.term}                      is a cut and paste utility and mouse server for virtual consoles
  []{#gpm-root}[[**gpm-root**]{.command}]{.term}                 is a default handler for [**gpm**]{.command}. It is used to draw menus on the root window
  []{#hltest}[[**hltest**]{.command}]{.term}                     is a simple sample application using the high-level library, meant to be read by programmers trying to use the high-level library
  []{#mev}[[**mev**]{.command}]{.term}                           is a program to report mouse events
  []{#mouse-test}[[**mouse-test**]{.command}]{.term}             is a tool for determining the mouse type and device it's attached to
  []{#libgpm}[`libgpm.so`{.filename}]{.term}                     contains the API functions to access the [GPM]{.application} daemon
  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](fcron.md "Fcron-3.4.0"){accesskey="p"}

    Fcron-3.4.0

-   [Next](hwdata.md "hwdata-0.408"){accesskey="n"}

    hwdata-0.408

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
