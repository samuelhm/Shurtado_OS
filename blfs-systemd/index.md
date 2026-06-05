:::::::::::::::: book
::::::::::::: titlepage


# []{#idm140011201582288}Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) {#beyond-linux-from-scratch-systemd-edition .title}



## Version r13.0-790 {#version-r13.0-790 .subtitle}



::: authorgroup
### The BLFS Development Team {#the-blfs-development-team .corpauthor}
:::



[Copyright](legalnotice.md) © 1999-2026 The BLFS Development Team



Published 2026-06-03



  **Revision History**                
  ---------------------- ------------ ------------------------
  Revision r13.0-790     2026-06-03   Ongoing Release
  Revision 13.0          2026-03-05   Thirty-third Release
  Revision 12.4          2025-09-01   Thirty-second Release
  Revision 12.3          2025-03-05   Thirty-first Release
  Revision 12.2          2024-09-01   Thirtieth Release
  Revision 12.1          2024-03-01   Twenty-ninth Release
  Revision 12.0          2023-09-01   Twenty-eighth Release
  Revision 11.3          2023-03-01   Twenty-seventh Release
  Revision 11.2          2022-09-01   Twenty-sixth Release
  Revision 11.1          2022-03-01   Twenty-fifth Release
  Revision 11.0          2021-09-01   Twenty-fourth Release
  Revision 10.1          2021-03-01   Twenty-third Release
  Revision 10.0          2020-09-01   Twenty-second Release
  Revision 9.1           2020-03-01   Twenty-first Release
  Revision 9.0           2019-09-01   Twentieth release
  Revision 8.4           2019-03-01   Nineteenth release
  Revision 8.3           2018-09-01   Eighteenth release
  Revision 8.2           2018-03-02   Seventeenth release
  Revision 8.1           2017-09-01   Sixteenth release
  Revision 8.0           2017-02-25   Fifteenth release
  Revision 7.10          2016-09-07   Fourteenth release
  Revision 7.9           2016-03-08   Thirteenth release
  Revision 7.8           2015-10-01   Twelfth release
  Revision 7.7           2015-03-06   Eleventh release
  Revision 7.6           2014-09-23   Tenth release
  Revision 7.5           2014-03-05   Ninth release
  Revision 7.4           2013-09-14   Eighth release
  Revision 6.3           2008-08-24   Seventh release
  Revision 6.2           2007-02-14   Sixth release
  Revision 6.1           2005-08-14   Fifth release
  Revision 6.0           2005-04-02   Fourth release
  Revision 5.1           2004-06-05   Third release
  Revision 5.0           2003-11-06   Second release
  Revision 1.0           2003-04-25   First release



::: abstract
**Abstract**

This book follows on from the Linux From Scratch book. It introduces and guides the reader through additions to the system including networking, graphical interfaces, sound support, and printer and scanner support.
:::



------------------------------------------------------------------------
:::::::::::::

::: dedication
## Dedication

This book is dedicated to the LFS community
:::

::: toc
### Table of Contents

-   #### [Preface](preface/preface.md)

    -   [Foreword](preface/foreword.md)
    -   [Who Would Want to Read this Book](preface/whoread.md)
    -   [Organization](preface/organization.md)

-   ### [I. Introduction](introduction/introduction.md)

    -   #### [1. Welcome to BLFS](introduction/welcome.md)

        -   [Which Sections of the Book Do I Want?](introduction/which.md)
        -   [Conventions Used in this Book](introduction/conventions.md)
        -   [Book Version](introduction/version.md)
        -   [Mirror Sites](introduction/mirrors.md)
        -   [Getting the Source Packages](introduction/packages.md)
        -   [Change Log](introduction/changelog.md)
        -   [Mailing Lists](introduction/maillists.md)
        -   [Editor Notes](introduction/wiki.md)
        -   [Asking for Help and the FAQ](introduction/askhelp.md)
        -   [Credits](introduction/credits.md)
        -   [Contact Information](introduction/contactinfo.md)

    -   #### [2. Important Information](introduction/important.md)

        -   [Notes on Building Software](introduction/notes-on-building.md)
        -   [The /usr Versus /usr/local Debate](introduction/position.md)
        -   [Optional Patches](introduction/patches.md)
        -   [BLFS Systemd Units](introduction/systemd-units.md)
        -   [About Libtool Archive (.la) files](introduction/la-files.md)
        -   [Libraries: Static or shared?](introduction/libraries.md)
        -   [Locale Related Issues](introduction/locale-issues.md)
        -   [Going Beyond BLFS](introduction/beyond.md)

-   ### [II. Post LFS Configuration and Extra Software](postlfs/postlfs.md)

    -   #### [3. After LFS Configuration Issues](postlfs/config.md)

        -   [Creating a Custom Boot Device](postlfs/bootdisk.md)
        -   [About Console Fonts](postlfs/console-fonts.md)
        -   [About Firmware](postlfs/firmware.md)
        -   [About Devices](postlfs/devices.md)
        -   [Configuring for Adding Users](postlfs/skel.md)
        -   [About System Users and Groups](postlfs/users.md)
        -   [The Bash Shell Startup Files](postlfs/profile.md)
        -   [The /etc/vimrc and \~/.vimrc Files](postlfs/vimrc.md)
        -   [Customizing your Logon with /etc/issue](postlfs/logon.md)

    -   #### [4. Security](postlfs/security.md)

        -   [Vulnerabilities](postlfs/vulnerabilities.md)
        -   [make-ca-1.16.1](postlfs/make-ca.md)
        -   [CrackLib-2.10.3](postlfs/cracklib.md)
        -   [cryptsetup-2.8.6](postlfs/cryptsetup.md)
        -   [Cyrus SASL-2.1.28](postlfs/cyrus-sasl.md)
        -   [GnuPG-2.5.20](postlfs/gnupg.md)
        -   [GnuTLS-3.8.13](postlfs/gnutls.md)
        -   [gpgme-2.1.0](postlfs/gpgme.md)
        -   [gpgmepp-2.1.0](postlfs/gpgmepp.md)
        -   [iptables-1.8.13](postlfs/iptables.md)
        -   [Setting Up a Network Firewall](postlfs/firewall.md)
        -   [libcap-2.78 with PAM](postlfs/libcap.md)
        -   [Linux-PAM-1.7.2](postlfs/linux-pam.md)
        -   [liboauth-1.0.3](postlfs/liboauth.md)
        -   [libpwquality-1.4.5](postlfs/libpwquality.md)
        -   [MIT Kerberos V5-1.22.2](postlfs/mitkrb.md)
        -   [Nettle-4.0](postlfs/nettle.md)
        -   [NSS-3.124](postlfs/nss.md)
        -   [OpenSSH-10.3p1](postlfs/openssh.md)
        -   [p11-kit-0.26.2](postlfs/p11-kit.md)
        -   [Polkit-127](postlfs/polkit.md)
        -   [polkit-gnome-0.105](postlfs/polkit-gnome.md)
        -   [Shadow-4.19.4](postlfs/shadow.md)
        -   [ssh-askpass-10.3p1](postlfs/ssh-askpass.md)
        -   [stunnel-5.78](postlfs/stunnel.md)
        -   [Sudo-1.9.17p2](postlfs/sudo.md)
        -   [Tripwire-2.4.3.7](postlfs/tripwire.md)

    -   #### [5. File Systems and Disk Management](postlfs/filesystems.md)

        -   [About initramfs](postlfs/initramfs.md)
        -   [btrfs-progs-7.0](postlfs/btrfs-progs.md)
        -   [dosfstools-4.2](postlfs/dosfstools.md)
        -   [Fuse-3.18.2](postlfs/fuse.md)
        -   [jfsutils-1.1.15](postlfs/jfsutils.md)
        -   [LVM2-2.03.41](postlfs/lvm2.md)
        -   [About Logical Volume Management (LVM)](postlfs/aboutlvm.md)
        -   [About RAID](postlfs/raid.md)
        -   [mdadm-4.6](postlfs/mdadm.md)
        -   [ntfs-3g-2026.2.25](postlfs/ntfs-3g.md)
        -   [gptfdisk-1.0.10](postlfs/gptfdisk.md)
        -   [parted-3.7](postlfs/parted.md)
        -   [smartmontools-7.5](postlfs/smartmontools.md)
        -   [sshfs-3.7.6](postlfs/sshfs.md)
        -   [xfsprogs-7.0.1](postlfs/xfsprogs.md)
        -   [efivar-39](postlfs/efivar.md)
        -   [efibootmgr-18](postlfs/efibootmgr.md)

    -   #### [6. Text Editors](postlfs/editors.md)

        -   [Bluefish-2.4.1](postlfs/bluefish.md)
        -   [Ed-1.22.5](postlfs/ed.md)
        -   [Emacs-30.2](postlfs/emacs.md)
        -   [JOE-4.6](postlfs/joe.md)
        -   [kate-26.04.1](postlfs/kate.md)
        -   [mousepad-0.7.0](postlfs/mousepad.md)
        -   [Nano-9.0](postlfs/nano.md)
        -   [Vim-9.2.0567](postlfs/vim.md)

    -   #### [7. Shells](postlfs/shells.md)

        -   [Dash-0.5.13.4](postlfs/dash.md)
        -   [Tcsh-6.24.16](postlfs/tcsh.md)
        -   [zsh-5.9.1](postlfs/zsh.md)

    -   #### [8. Virtualization](postlfs/virtualization.md)

        -   [qemu-11.0.1](postlfs/qemu.md)

-   ### [III. General Libraries and Utilities](general/general.md)

    -   #### [9. General Libraries](general/genlib.md)

        -   [Abseil-cpp-20260107.1](general/abseil-cpp.md)
        -   [AppStream-1.1.2](general/appstream.md)
        -   [appstream-glib-0.8.3](general/appstream-glib.md)
        -   [Apr-1.7.6](general/apr.md)
        -   [Apr-Util-1.6.3](general/apr-util.md)
        -   [Aspell-0.60.8.2](general/aspell.md)
        -   [boost-1.91.0-1](general/boost.md)
        -   [brotli-1.2.0](general/brotli.md)
        -   [CLucene-2.3.3.4](general/clucene.md)
        -   [dbus-glib-0.114](general/dbus-glib.md)
        -   [Double-conversion-3.4.0](general/double-conversion.md)
        -   [duktape-2.7.0](general/duktape.md)
        -   [enchant-2.8.16](general/enchant.md)
        -   [Exempi-2.6.6](general/exempi.md)
        -   [fast_float-8.2.6](general/fast_float.md)
        -   [fftw-3.3.11](general/fftw.md)
        -   [fmt-12.1.0](general/fmt.md)
        -   [GLib-2.88.1](general/glib2.md)
        -   [GLibmm-2.66.8](general/glibmm.md)
        -   [GLibmm-2.88.0](general/glibmm2.md)
        -   [GMime-3.2.15](general/gmime3.md)
        -   [gmmlib-22.10.0](general/gmmlib.md)
        -   [gsl-2.8](general/gsl.md)
        -   [gspell-1.14.3](general/gspell.md)
        -   [highway-1.4.0](general/highway.md)
        -   [icu-78.3](general/icu.md)
        -   [inih-62](general/inih.md)
        -   [Jansson-2.15.0](general/jansson.md)
        -   [JSON-C-0.18](general/json-c.md)
        -   [JSON-GLib-1.10.8](general/json-glib.md)
        -   [keyutils-1.6.3](general/keyutils.md)
        -   [libaio-0.3.113](general/libaio.md)
        -   [libarchive-3.8.7](general/libarchive.md)
        -   [libassuan-3.0.2](general/libassuan.md)
        -   [libatasmart-0.19](general/libatasmart.md)
        -   [libatomic_ops-7.10.0](general/libatomic_ops.md)
        -   [libblockdev-3.5.0](general/libblockdev.md)
        -   [libbytesize-2.12](general/libbytesize.md)
        -   [libclc-22.1.0](general/libclc.md)
        -   [libcloudproviders-0.3.6](general/libcloudproviders.md)
        -   [libdaemon-0.14](general/libdaemon.md)
        -   [libdisplay-info-0.3.0](general/libdisplay-info.md)
        -   [libgcrypt-1.12.2](general/libgcrypt.md)
        -   [libgpg-error-1.61](general/libgpg-error.md)
        -   [libgsf-1.14.58](general/libgsf.md)
        -   [libgudev-238](general/libgudev.md)
        -   [libgusb-0.4.9](general/libgusb.md)
        -   [libical-4.0.2](general/libical.md)
        -   [libidn-1.43](general/libidn.md)
        -   [libidn2-2.3.8](general/libidn2.md)
        -   [libksba-1.8.0](general/libksba.md)
        -   [liblinear-250](general/liblinear.md)
        -   [libmbim-1.34.0](general/libmbim.md)
        -   [libnvme-1.16.1](general/libnvme.md)
        -   [libpaper-2.2.8](general/libpaper.md)
        -   [libportal-0.9.1](general/libportal.md)
        -   [libproxy-0.5.12](general/libproxy.md)
        -   [libptytty-2.0](general/libptytty.md)
        -   [libqalculate-5.11.0](general/libqalculate.md)
        -   [libqmi-1.38.0](general/libqmi.md)
        -   [libseccomp-2.6.0](general/libseccomp.md)
        -   [libsigc++-2.12.1](general/libsigc.md)
        -   [libsigc++-3.6.0](general/libsigc3.md)
        -   [libsigsegv-2.15](general/libsigsegv.md)
        -   [libssh2-1.11.1](general/libssh2.md)
        -   [libstatgrab-0.92.1](general/libstatgrab.md)
        -   [libtasn1-4.21.0](general/libtasn1.md)
        -   [libunistring-1.4.2](general/libunistring.md)
        -   [libunwind-1.8.3](general/libunwind.md)
        -   [liburcu-0.15.6](general/liburcu.md)
        -   [libusb-1.0.30](general/libusb.md)
        -   [libuv-1.52.1](general/libuv.md)
        -   [libxkbcommon-1.13.2](general/libxkbcommon.md)
        -   [libxml2-2.15.3](general/libxml2.md)
        -   [libxmlb-0.3.27](general/libxmlb.md)
        -   [libxslt-1.1.45](general/libxslt.md)
        -   [libwacom-2.19.0](general/libwacom.md)
        -   [libyaml-0.2.5](general/libyaml.md)
        -   [libfyaml-0.9.6](general/libfyaml.md)
        -   [log4cplus-2.1.2](general/log4cplus.md)
        -   [LZO-2.10](general/lzo.md)
        -   [mtdev-1.1.7](general/mtdev.md)
        -   [Node.js-24.16.0](general/nodejs.md)
        -   [npth-1.8](general/npth.md)
        -   [NSPR-4.39](general/nspr.md)
        -   [OpenTimelineIO-0.18.1](general/opentimelineio.md)
        -   [Popt-1.19](general/popt.md)
        -   [Protobuf-35.0](general/protobuf.md)
        -   [Protobuf-c-1.5.2](general/protobuf-c.md)
        -   [Qca-2.3.10](general/qca.md)
        -   [qcoro-0.13.0](general/qcoro.md)
        -   [simdutf-9.0.0](general/simdutf.md)
        -   [SpiderMonkey from firefox-140.11.0](general/spidermonkey.md)
        -   [SPIRV-Headers-1.4.350.0](general/spirv-headers.md)
        -   [SPIRV-Tools-1.4.350.0](general/spirv-tools.md)
        -   [SPIRV-LLVM-Translator-22.1.2](general/spirv-llvm-translator.md)
        -   [Talloc-2.4.4](general/talloc.md)
        -   [Uchardet-0.0.8](general/uchardet.md)
        -   [Umockdev-0.19.7](general/umockdev.md)
        -   [utfcpp-4.1.1](general/utfcpp.md)
        -   [Wayland-1.25.0](general/wayland.md)
        -   [Wayland-Protocols-1.48](general/wayland-protocols.md)
        -   [wv-1.2.9](general/wv.md)
        -   [Xapian-2.0.0](general/xapian.md)

    -   #### [10. Graphics and Font Libraries](general/graphlib.md)

        -   [AAlib-1.4rc5](general/aalib.md)
        -   [babl-0.1.126](general/babl.md)
        -   [Exiv2-0.28.8](general/exiv2.md)
        -   [FreeType-2.14.3](general/freetype2.md)
        -   [Fontconfig-2.18.1](general/fontconfig.md)
        -   [FriBidi-1.0.16](general/fribidi.md)
        -   [gegl-0.4.70](general/gegl.md)
        -   [giflib-6.1.3](general/giflib.md)
        -   [Glad-2.0.8](general/glad.md)
        -   [GLM-1.0.3](general/glm.md)
        -   [glycin-2.1.1](general/glycin.md)
        -   [libglycin-gtk4 from glycin-2.1.1](general/glycin-gtk4.md)
        -   [Graphite2-1.3.14](general/graphite2.md)
        -   [harfBuzz-14.2.1](general/harfbuzz.md)
        -   [Imath-3.2.2](general/imath.md)
        -   [jasper-4.2.9](general/jasper.md)
        -   [Little CMS-2.19.1](general/lcms2.md)
        -   [libavif-1.4.2](general/libavif.md)
        -   [libexif-0.6.26](general/libexif.md)
        -   [libgxps-0.3.2](general/libgxps.md)
        -   [libheif-1.23.0](general/libheif.md)
        -   [libjpeg-turbo-3.1.4.1](general/libjpeg.md)
        -   [libjxl-0.11.2](general/libjxl.md)
        -   [libmng-2.0.3](general/libmng.md)
        -   [libmypaint-1.6.1](general/libmypaint.md)
        -   [libpng-1.6.58](general/libpng.md)
        -   [libqrencode-4.1.1](general/libqrencode.md)
        -   [libraw-0.22.1](general/libraw.md)
        -   [librsvg-2.62.3](general/librsvg.md)
        -   [Libspiro-20220722](general/libspiro.md)
        -   [libtiff-4.7.1](general/libtiff.md)
        -   [libwebp-1.6.0](general/libwebp.md)
        -   [mypaint-brushes-2.0.2](general/mypaint-brushes.md)
        -   [newt-0.52.25](general/newt.md)
        -   [opencv-4.13.0](general/opencv.md)
        -   [OpenJPEG-2.5.4](general/openjpeg2.md)
        -   [Pixman-0.46.4](general/pixman.md)
        -   [Poppler-26.06.0](general/poppler.md)
        -   [Potrace-1.16](general/potrace.md)
        -   [Qpdf-12.3.2](general/qpdf.md)
        -   [sassc-3.6.2](general/sassc.md)
        -   [woff2-1.0.2](general/woff2.md)
        -   [zxing-cpp-3.0.2](general/zxing-cpp.md)

    -   #### [11. General Utilities](general/genutils.md)

        -   [Asciidoctor-2.0.26](general/asciidoctor.md)
        -   [Bogofilter-1.2.5](general/bogofilter.md)
        -   [Compface-1.5.2](general/compface.md)
        -   [desktop-file-utils-0.28](general/desktop-file-utils.md)
        -   [dos2unix-7.5.6](general/dos2unix.md)
        -   [editorconfig-core-c-0.12.11](general/editorconfig-core-c.md)
        -   [glslc from shaderc-2026.2](general/glslc.md)
        -   [Graphviz-15.0.0](general/graphviz.md)
        -   [GTK-Doc-1.36.1](general/gtk-doc.md)
        -   [Highlight-4.20](general/highlight.md)
        -   [ibus-1.5.34](general/ibus.md)
        -   [ImageMagick-7.1.2-13](general/imagemagick.md)
        -   [Intltool-0.51.0](general/intltool.md)
        -   [ISO Codes-4.20.1](general/iso-codes.md)
        -   [lsof-4.99.6](general/lsof.md)
        -   [pinentry-1.3.2](general/pinentry.md)
        -   [Screen-5.0.1](general/screen.md)
        -   [shared-mime-info-2.4](general/shared-mime-info.md)
        -   [Sharutils-4.15.2](general/sharutils.md)
        -   [tidy-html5-5.8.0](general/tidy-html5.md)
        -   [Time-1.10](general/time.md)
        -   [tree-2.3.2](general/tree.md)
        -   [unixODBC-2.3.14](general/unixodbc.md)
        -   [xdg-dbus-proxy-0.1.7](general/xdg-dbus-proxy.md)
        -   [Xdg-user-dirs-0.20](general/xdg-user-dirs.md)

    -   #### [12. System Utilities](general/sysutils.md)

        -   [7zip-26.01](general/7zip.md)
        -   [AccountsService-23.13.9](general/accountsservice.md)
        -   [acpid-2.0.34](general/acpid.md)
        -   [at-3.2.5](general/at.md)
        -   [autofs-5.1.9](general/autofs.md)
        -   [BlueZ-5.86](general/bluez.md)
        -   [Bubblewrap-0.11.2](general/bubblewrap.md)
        -   [Colord-1.4.8](general/colord.md)
        -   [cpio-2.15](general/cpio.md)
        -   [cups-pk-helper-0.2.7](general/cups-pk-helper.md)
        -   [dbus-1.16.2](general/dbus.md)
        -   [Fcron-3.4.0](general/fcron.md)
        -   [GPM-1.20.7](general/gpm.md)
        -   [hwdata-0.408](general/hwdata.md)
        -   [LSB-Tools-0.12](general/lsb-tools.md)
        -   [Logrotate-3.22.0](general/logrotate.md)
        -   [MC-4.8.33](general/mc.md)
        -   [ModemManager-1.24.2](general/ModemManager.md)
        -   [notification-daemon-3.20.0](general/notification-daemon.md)
        -   [Pax-20240817](general/pax.md)
        -   [pm-utils-1.4.1](general/pm-utils.md)
        -   [Power-profiles-daemon-0.30](general/power-profiles-daemon.md)
        -   [Raptor-2.0.16](general/raptor.md)
        -   [Rasqal-0.9.33](general/rasqal.md)
        -   [Redland-1.0.17](general/redland.md)
        -   [Sysstat-12.7.9](general/sysstat.md)
        -   [Systemd-260.2](general/systemd.md)
        -   [UDisks-2.11.1](general/udisks2.md)
        -   [UnRar-7.2.4](general/unrar.md)
        -   [UPower-1.91.2](general/upower.md)
        -   [Which-2.25 and Alternatives](general/which.md)
        -   [xdotool-4.20260303.1](general/xdotool.md)
        -   [Zip-3.0](general/zip.md)
        -   [Hardware Utilities]{.dummy}
        -   [Hdparm-9.65](general/hdparm.md)
        -   [lm-sensors-3-6-2](general/lm-sensors.md)
        -   [pciutils-3.15.0](general/pciutils.md)
        -   [sg3_utils-1.48](general/sg3_utils.md)
        -   [sysmond-1.0.1](general/sysmond.md)
        -   [sysmon3-3.0.3](general/sysmon3.md)
        -   [usbutils-019](general/usbutils.md)

    -   #### [13. Programming](general/prog.md)

        -   [cargo-c-0.10.23](general/cargo-c.md)
        -   [Cbindgen-0.29.3](general/cbindgen.md)
        -   [Clisp-2.49.95](general/clisp.md)
        -   [CMake-4.3.3](general/cmake.md)
        -   [Doxygen-1.17.0](general/doxygen.md)
        -   [dtc-1.8.1](general/dtc.md)
        -   [GCC-16.1.0](general/gcc.md)
        -   [GC-8.2.12](general/gc.md)
        -   [GDB-17.2](general/gdb.md)
        -   [Git-2.54.0](general/git.md)
        -   [Running a Git Server](general/gitserver.md)
        -   [Guile-3.0.11](general/guile.md)
        -   [LLVM-22.1.0](general/llvm.md)
        -   [Lua-5.4.8](general/lua.md)
        -   [luajit-20260213](general/luajit.md)
        -   [Mercurial-7.2.2](general/mercurial.md)
        -   [NASM-3.01](general/nasm.md)
        -   [Patchelf-0.18.0](general/patchelf.md)
        -   [Perl Modules](general/perl-modules.md)
        -   [Perl Module Dependencies](general/perl-deps.md)
        -   [PHP-8.5.6](general/php.md)
        -   [Python-3.14.5](general/python3.md)
        -   [Python-3.11.1](general/python311.md)
        -   [Python Modules](general/python-modules.md)
        -   [Python Dependencies](general/python-dependencies.md)
        -   [Ruby-4.0.5](general/ruby.md)
        -   [Rustc-1.96.0](general/rust.md)
        -   [rust-bindgen-0.72.1](general/rust-bindgen.md)
        -   [SCons-4.10.1](general/scons.md)
        -   [slang-2.3.3](general/slang.md)
        -   [Subversion-1.14.5](general/subversion.md)
        -   [Running a Subversion Server](general/svnserver.md)
        -   [SWIG-4.4.1](general/swig.md)
        -   [Tk-8.6.18](general/tk.md)
        -   [unifdef-2.12](general/unifdef.md)
        -   [Vala-0.56.19](general/vala.md)
        -   [Valgrind-3.27.1](general/valgrind.md)
        -   [yasm-1.3.0](general/yasm.md)
        -   [Java]{.dummy}
        -   [Java-21.0.10](general/java.md)
        -   [OpenJDK-21.0.10](general/openjdk.md)
        -   [Configuring the Java environment](general/ojdk-conf.md)
        -   [apache-ant-1.10.17](general/apache-ant.md)

-   ### [IV. Networking](basicnet/basicnet.md)

    -   #### [14. Connecting to a Network](basicnet/connect.md)

        -   [Advanced Network Setup](basicnet/advanced-network.md)

    -   #### [15. Networking Programs](basicnet/netprogs.md)

        -   [cifs-utils-7.5](basicnet/cifsutils.md)
        -   [NcFTP-3.3.0](basicnet/ncftp.md)
        -   [Net-tools-2.10](basicnet/net-tools.md)
        -   [NFS-Utils-2.9.1](basicnet/nfs-utils.md)
        -   [ntp-4.2.8p18](basicnet/ntp.md)
        -   [rpcbind-1.2.9](basicnet/rpcbind.md)
        -   [rsync-3.4.3](basicnet/rsync.md)
        -   [Samba-4.24.0](basicnet/samba.md)
        -   [Wget-1.25.0](basicnet/wget.md)
        -   [Configuring the Linux Kernel for Wireless](basicnet/wireless-kernel.md)
        -   [iw-6.17](basicnet/iw.md)
        -   [Wireless Tools-29](basicnet/wireless_tools.md)
        -   [wpa_supplicant-2.11](basicnet/wpa_supplicant.md)

    -   #### [16. Networking Utilities](basicnet/netutils.md)

        -   [Avahi-0.8](basicnet/avahi.md)
        -   [BIND Utilities-9.20.20](basicnet/bind-utils.md)
        -   [NetworkManager-1.56.1](basicnet/networkmanager.md)
        -   [network-manager-applet-1.34.0](basicnet/network-manager-applet.md)
        -   [Nmap-7.99](basicnet/nmap.md)
        -   [Traceroute-2.1.6](basicnet/traceroute.md)
        -   [Whois-5.6.6](basicnet/whois.md)
        -   [Wireshark-4.6.6](basicnet/wireshark.md)

    -   #### [17. Networking Libraries](basicnet/netlibs.md)

        -   [c-ares-1.34.6](basicnet/c-ares.md)
        -   [cURL-8.20.0](basicnet/curl.md)
        -   [GeoClue-2.8.1](basicnet/geoclue2.md)
        -   [glib-networking-2.80.1](basicnet/glib-networking.md)
        -   [kdsoap-2.3.0](basicnet/kdsoap.md)
        -   [kdsoap-ws-discovery-client-0.4.0](basicnet/kdsoap-ws-discovery-client.md)
        -   [ldns-1.9.0](basicnet/ldns.md)
        -   [libevent-2.1.12](basicnet/libevent.md)
        -   [libmnl-1.0.5](basicnet/libmnl.md)
        -   [libndp-1.9](basicnet/libndp.md)
        -   [libnl-3.12.0](basicnet/libnl.md)
        -   [libnma-1.10.6](basicnet/libnma.md)
        -   [libnsl-2.0.1](basicnet/libnsl.md)
        -   [libpcap-1.10.6](basicnet/libpcap.md)
        -   [libpsl-0.21.5](basicnet/libpsl.md)
        -   [libslirp-4.9.3](basicnet/libslirp.md)
        -   [libsoup-3.6.6](basicnet/libsoup3.md)
        -   [libtirpc-1.3.7](basicnet/libtirpc.md)
        -   [neon-0.37.1](basicnet/neon.md)
        -   [nghttp2-1.69.0](basicnet/nghttp2.md)
        -   [rpcsvc-proto-1.4.4](basicnet/rpcsvc-proto.md)
        -   [Serf-1.3.10](basicnet/serf.md)

    -   #### [18. Text Web Browsers](basicnet/textweb.md)

        -   [Links-2.30](basicnet/links.md)
        -   [Lynx-2.9.3](basicnet/lynx.md)

    -   #### [19. Mail/News Clients](basicnet/mailnews.md)

        -   [Fetchmail-6.6.3](basicnet/fetchmail.md)
        -   [mailx-12.5](basicnet/mailx.md)
        -   [Mutt-2.3.2](basicnet/mutt.md)
        -   [Procmail-3.24](basicnet/procmail.md)
        -   [Other Mail and News Programs](basicnet/othermn.md)

-   ### [V. Servers](server/server.md)

    -   #### [20. Major Servers](server/majorservers.md)

        -   [Apache-2.4.67](server/apache.md)
        -   [BIND-9.20.20](server/bind.md)
        -   [Kea 3.0.2 DHCP Server](server/kea.md)
        -   [ProFTPD-1.3.9a](server/proftpd.md)

    -   #### [21. Mail Server Software](server/mail.md)

        -   [Dovecot-2.4.2](server/dovecot.md)
        -   [Exim-4.99.1](server/exim.md)
        -   [Postfix-3.11.3](server/postfix.md)

    -   #### [22. Databases](server/databases.md)

        -   [Important Notes About Upgrading Database Server Software](server/upgradedb.md)
        -   [lmdb-0.9.35](server/lmdb.md)
        -   [MariaDB-12.3.2](server/mariadb.md)
        -   [PostgreSQL-18.4](server/postgresql.md)

    -   #### [23. Other Server Software](server/other.md)

        -   [OpenLDAP-2.6.13](server/openldap.md)

-   ### [VI. Graphical Components](x/x.md)

    -   #### [24. Graphical Environments](x/installing.md)

        -   [Introduction to Xorg-7](x/xorg7.md)
        -   [util-macros-1.20.2](x/util-macros.md)
        -   [xorgproto-2025.1](x/xorgproto.md)
        -   [libXau-1.0.12](x/libXau.md)
        -   [libXdmcp-1.1.5](x/libXdmcp.md)
        -   [xcb-proto-1.17.0](x/xcb-proto.md)
        -   [libxcb-1.17.0](x/libxcb.md)
        -   [Xorg Libraries](x/x7lib.md)
        -   [libxcvt-0.1.3](x/libxcvt.md)
        -   [xcb-util-0.4.1](x/xcb-util.md)
        -   [XCB Utilities](x/xcb-utilities.md)
        -   [Mesa-26.0.7](x/mesa.md)
        -   [xbitmaps-1.1.4](x/xbitmaps.md)
        -   [Xorg Applications](x/x7app.md)
        -   [luit-20250912](x/luit.md)
        -   [xcursor-themes-1.0.7](x/xcursor-themes.md)
        -   [Xorg Fonts](x/x7font.md)
        -   [XKeyboardConfig-2.47](x/xkeyboard-config.md)
        -   [Xwayland-24.1.12](x/xwayland.md)
        -   [Xorg-Server-21.1.23](x/xorg-server.md)
        -   [Xorg Input Drivers](x/x7driver.md)
        -   [twm-1.0.13.1](x/twm.md)
        -   [xterm-410](x/xterm.md)
        -   [xclock-1.1.1](x/xclock.md)
        -   [xinit-1.4.4](x/xinit.md)
        -   [Xorg-7 Testing and Configuration](x/xorg-config.md)
        -   [Tuning Fontconfig](x/tuning-fontconfig.md)
        -   [TTF and OTF fonts](x/TTF-and-OTF-fonts.md)
        -   [Xorg Legacy](x/x7legacy.md)

    -   #### [25. Graphical Environment Libraries](x/lib.md)

        -   [Atkmm-2.28.5](x/atkmm.md)
        -   [at-spi2-core-2.60.4](x/at-spi2-core.md)
        -   [Cairo-1.18.4](x/cairo.md)
        -   [libcairomm-1.0 (cairomm-1.14.5)](x/cairomm-1.0.md)
        -   [libcairomm-1.16 (cairomm-1.18.0)](x/cairomm-1.16.md)
        -   [colord-gtk-0.3.1](x/colord-gtk.md)
        -   [FLTK-1.4.5](x/fltk.md)
        -   [Freeglut-3.8.0](x/freeglut.md)
        -   [gdk-pixbuf-2.44.6](x/gdk-pixbuf.md)
        -   [GLEW-2.3.1](x/glew.md)
        -   [glslang-16.3.0](x/glslang.md)
        -   [GLU-9.0.3](x/glu.md)
        -   [GOffice-0.10.61](x/goffice010.md)
        -   [Graphene-1.10.8](x/graphene.md)
        -   [GTK-3.24.52](x/gtk3.md)
        -   [GTK-4.22.4](x/gtk4.md)
        -   [Gtkmm-3.24.10](x/gtkmm3.md)
        -   [Gtkmm-4.22.0](x/gtkmm4.md)
        -   [gtk-vnc-1.5.0](x/gtk-vnc.md)
        -   [gtksourceview-3.24.11](x/gtksourceview.md)
        -   [gtksourceview4-4.8.4](x/gtksourceview4.md)
        -   [gtksourceview5-5.20.0](x/gtksourceview5.md)
        -   [imlib2-1.12.6](x/imlib2.md)
        -   [kColorPicker-0.3.1](x/kcolorpicker.md)
        -   [kImageAnnotator-0.7.2](x/kimageannotator.md)
        -   [keybinder-3.0-0.3.2](x/keybinder-3.md)
        -   [libadwaita-1.9.1](x/libadwaita.md)
        -   [libei-1.6.0](x/libei.md)
        -   [libhandy-1.8.3](x/libhandy1.md)
        -   [Libdrm-2.4.134](x/libdrm.md)
        -   [libepoxy-1.5.10](x/libepoxy.md)
        -   [libnotify-0.8.8](x/libnotify.md)
        -   [libxklavier-5.4](x/libxklavier.md)
        -   [Pango-1.57.1](x/pango.md)
        -   [Pangomm-2.46.4](x/pangomm.md)
        -   [Pangomm-2.56.1](x/pangomm2.md)
        -   [Qt-6.11.1](x/qt6.md)
        -   [QtWebEngine-6.11.1](x/qtwebengine.md)
        -   [startup-notification-0.12](x/startup-notification.md)
        -   [Vulkan-Headers-1.4.350.0](x/vulkan-headers.md)
        -   [Vulkan-Loader-1.4.350.0](x/vulkan-loader.md)
        -   [WebKitGTK-2.52.0](x/webkitgtk.md)
        -   [xdg-desktop-portal-1.20.4](x/xdg-desktop-portal.md)
        -   [xdg-desktop-portal-gtk-1.15.3](x/xdg-desktop-portal-gtk.md)

    -   #### [26. Display Managers](x/dm.md)

        -   [GDM-50.1](x/gdm.md)
        -   [lightdm-1.32.0](x/lightdm.md)
        -   [sddm-0.21.0](x/sddm.md)

    -   #### [27. Window Managers](x/wm.md)

        -   [Fluxbox-1.3.7](x/fluxbox.md)
        -   [IceWM-4.0.0](x/icewm.md)
        -   [openbox-3.6.1](x/openbox.md)

    -   #### [28. Icons](x/icons.md)

        -   [adwaita-icon-theme-50.0](x/adwaita-icon-theme.md)
        -   [breeze-icons-6.26.0](x/breeze-icons.md)
        -   [gnome-icon-theme-3.12.0](x/gnome-icon-theme.md)
        -   [gnome-icon-theme-extras-3.12.0](x/gnome-icon-theme-extras.md)
        -   [gnome-icon-theme-symbolic-3.12.0](x/gnome-icon-theme-symbolic.md)
        -   [gnome-themes-extra-3.28](x/gnome-themes-extra.md)
        -   [hicolor-icon-theme-0.18](x/hicolor-icon-theme.md)
        -   [icon-naming-utils-0.8.90](x/icon-naming-utils.md)
        -   [lxde-icon-theme-0.5.1](x/lxde-icon-theme.md)
        -   [oxygen-icons-6.1.0](x/oxygen-icons.md)

-   ### [VII. KDE](kde/kde.md)

    -   #### [29. Introduction to KDE](kde/introduction.md)

        -   [KDE Preliminaries](kde/kdeintro.md)
        -   [Extra-CMake-Modules-6.26.0](kde/extra-cmake-modules.md)
        -   [Phonon-4.12.0](kde/phonon.md)
        -   [Phonon-backend-vlc-0.12.0](kde/phonon-backend-vlc.md)
        -   [Polkit-Qt-0.201.1](kde/polkit-qt.md)
        -   [plasma-wayland-protocols-1.21.0](kde/plasma-wayland-protocols.md)
        -   [libdmtx-0.7.8](kde/libdmtx.md)

    -   #### [30. KDE Frameworks 6](kde/kf6.md)

        -   [KDE Frameworks 6 Pre-installation Configuration](kde/kf6-intro.md)
        -   [Building KDE Frameworks 6.26.0 (KF6)](kde/frameworks6.md)

    -   #### [31. KDE Frameworks 6 Based Applications](kde/kf-apps.md)

        -   [ark-26.04.1](kde/ark.md)
        -   [dolphin-26.04.1](kde/dolphin.md)
        -   [dolphin-plugins-26.04.1](kde/dolphin-plugins.md)
        -   [KDDockWidgets-2.4.0](kde/kddockwidgets.md)
        -   [kdenlive-26.04.1](kde/kdenlive.md)
        -   [KMix-26.04.1](kde/kmix.md)
        -   [khelpcenter-26.04.1](kde/khelpcenter.md)
        -   [Konsole-26.04.1](kde/konsole.md)
        -   [konversation-26.04.1](kde/konversation.md)
        -   [libkexiv2-26.04.1](kde/libkexiv2.md)
        -   [plasma-activities-6.6.5](kde/plasma-activities.md)
        -   [plasma-activities-stats-6.6.5](kde/plasma-activities-stats.md)
        -   [kio-extras-26.04.1](kde/kio-extras.md)
        -   [okular-26.04.1](kde/okular.md)
        -   [libkdcraw-26.04.1](kde/libkdcraw.md)
        -   [gwenview-26.04.1](kde/gwenview.md)
        -   [libkcddb-26.04.1](kde/libkcddb.md)
        -   [k3b-26.04.1](kde/k3b.md)
        -   [Further KDE packages](kde/add-pkgs.md)

    -   #### [32. KDE Plasma](kde/plasma.md)

        -   [kirigami-addons-1.12.1](kde/kirigami-addons.md)
        -   [pulseaudio-qt-1.8.1](kde/pulseaudio-qt.md)
        -   [qtkeychain-0.16.0](kde/qtkeychain.md)
        -   [kquickimageeditor-0.6.1](kde/kquickimageeditor.md)
        -   [bolt-0.9.11](kde/bolt.md)
        -   [Building Plasma](kde/plasma-all.md)

-   ### [VIII. GNOME](gnome/gnome.md)

    -   #### [33. GNOME Libraries and Desktop](gnome/core.md)

        -   [Libraries]{.dummy}
        -   [Gcr-3.41.2](gnome/gcr.md)
        -   [Gcr-4.4.0.1](gnome/gcr4.md)
        -   [gsettings-desktop-schemas-50.1](gnome/gsettings-desktop-schemas.md)
        -   [libsecret-0.21.7](gnome/libsecret.md)
        -   [librest-0.10.2](gnome/librest.md)
        -   [totem-pl-parser-3.26.7](gnome/totem-pl-parser.md)
        -   [VTE-0.84.0](gnome/vte.md)
        -   [yelp-xsl-49.0](gnome/yelp-xsl.md)
        -   [geocode-glib-3.26.4](gnome/geocode-glib.md)
        -   [Gjs-1.88.0](gnome/gjs.md)
        -   [gnome-autoar-0.4.5](gnome/gnome-autoar.md)
        -   [gnome-desktop-44.5](gnome/gnome-desktop.md)
        -   [gnome-menus-3.38.1](gnome/gnome-menus.md)
        -   [gnome-online-accounts-3.58.1](gnome/gnome-online-accounts.md)
        -   [libgee-0.20.8](gnome/libgee.md)
        -   [libgtop-2.41.3](gnome/libgtop.md)
        -   [gweather-locations-2026.2](gnome/gweather-locations.md)
        -   [libgweather-4.6.0](gnome/libgweather.md)
        -   [libpeas-1.38.1](gnome/libpeas.md)
        -   [libshumate-1.6.1](gnome/libshumate.md)
        -   [evolution-data-server-3.60.2](gnome/evolution-data-server.md)
        -   [tinysparql-3.11.1](gnome/tinysparql.md)
        -   [localsearch-3.11.1](gnome/localsearch.md)
        -   [GSound-1.0.3](gnome/gsound.md)
        -   [xdg-desktop-portal-gnome-50.0](gnome/xdg-desktop-portal-gnome.md)
        -   [GNOME Desktop Components]{.dummy}
        -   [DConf-0.49.0 / DConf-Editor-49.0](gnome/dconf.md)
        -   [gnome-backgrounds-50.0](gnome/gnome-backgrounds.md)
        -   [Gvfs-1.60.0](gnome/gvfs.md)
        -   [gexiv2-0.16.0](gnome/gexiv2.md)
        -   [Nautilus-50.2.2](gnome/nautilus.md)
        -   [gnome-bluetooth-47.2](gnome/gnome-bluetooth.md)
        -   [gnome-keyring-50.0](gnome/gnome-keyring.md)
        -   [gnome-settings-daemon-50.1](gnome/gnome-settings-daemon.md)
        -   [Tecla-50.0](gnome/tecla.md)
        -   [gnome-control-center-50.2](gnome/gnome-control-center.md)
        -   [Mutter-50.1](gnome/mutter.md)
        -   [gnome-shell-50.2](gnome/gnome-shell.md)
        -   [gnome-shell-extensions-50.2](gnome/gnome-shell-extensions.md)
        -   [gnome-session-50.1](gnome/gnome-session.md)
        -   [gnome-tweaks-49.0](gnome/gnome-tweaks.md)
        -   [gnome-user-docs-50.2](gnome/gnome-user-docs.md)
        -   [Yelp-49.0](gnome/yelp.md)

    -   #### [34. [GNOME Applications]{.phrase}](gnome/applications.md)

        -   [Baobab-50.0](gnome/baobab.md)
        -   [Brasero-3.12.3](gnome/brasero.md)
        -   [Evince-48.4](gnome/evince.md)
        -   [Evolution-3.60.2](gnome/evolution.md)
        -   [File-Roller-44.6](gnome/file-roller.md)
        -   [gnome-calculator-50.0](gnome/gnome-calculator.md)
        -   [gnome-color-manager-3.36.2](gnome/gnome-color-manager.md)
        -   [gnome-connections-50.0](gnome/gnome-connections.md)
        -   [gnome-disk-utility-46.1](gnome/gnome-disk-utility.md)
        -   [gnome-logs-45.0](gnome/gnome-logs.md)
        -   [gnome-maps-50.1](gnome/gnome-maps.md)
        -   [gnome-nettool-42.0](gnome/gnome-nettool.md)
        -   [gnome-power-manager-50.0](gnome/gnome-power-manager.md)
        -   [gnome-system-monitor-50.0](gnome/gnome-system-monitor.md)
        -   [gnome-terminal-3.60.0](gnome/gnome-terminal.md)
        -   [gnome-weather-48.0](gnome/gnome-weather.md)
        -   [Gucharmap-17.0.2](gnome/gucharmap.md)
        -   [Loupe-49.2](gnome/loupe.md)
        -   [Seahorse-47.0.1](gnome/seahorse.md)
        -   [Showtime-49.1](gnome/showtime.md)
        -   [Snapshot-50.0](gnome/snapshot.md)

-   ### [IX. Xfce](xfce/xfce.md)

    -   #### [35. Xfce Desktop](xfce/xfce-core.md)

        -   [libxfce4util-4.20.1](xfce/libxfce4util.md)
        -   [Xfconf-4.20.0](xfce/xfconf.md)
        -   [libxfce4ui-4.20.2](xfce/libxfce4ui.md)
        -   [Exo-4.20.0](xfce/exo.md)
        -   [Garcon-4.20.0](xfce/garcon.md)
        -   [libwnck-43.3](xfce/libwnck.md)
        -   [xfce4-dev-tools-4.20.0](xfce/xfce4-dev-tools.md)
        -   [libxfce4windowing-4.20.6](xfce/libxfce4windowing.md)
        -   [xfce4-panel-4.20.7](xfce/xfce4-panel.md)
        -   [thunar-4.20.8](xfce/thunar.md)
        -   [thunar-volman-4.20.0](xfce/thunar-volman.md)
        -   [tumbler-4.20.1](xfce/tumbler.md)
        -   [xfce4-appfinder-4.20.0](xfce/xfce4-appfinder.md)
        -   [xfce4-power-manager-4.20.0](xfce/xfce4-power-manager.md)
        -   [xfce4-settings-4.20.4](xfce/xfce4-settings.md)
        -   [Xfdesktop-4.20.2](xfce/xfdesktop.md)
        -   [Xfwm4-4.20.0](xfce/xfwm4.md)
        -   [xfce4-session-4.20.4](xfce/xfce4-session.md)

    -   #### [36. Xfce Applications](xfce/xfce-apps.md)

        -   [Parole-4.20.0](xfce/parole.md)
        -   [xfce4-terminal-1.2.0](xfce/xfce4-terminal.md)
        -   [Xfburn-0.8.0](xfce/xfburn.md)
        -   [ristretto-0.14.0](xfce/ristretto.md)
        -   [xfce4-notifyd-0.9.7](xfce/xfce4-notifyd.md)
        -   [xfce4-pulseaudio-plugin-0.5.1](xfce/xfce4-pulseaudio-plugin.md)

-   ### [X. LXQt](lxqt/lxqt.md)

    -   #### [37. LXQt Desktop](lxqt/lxqt-desktop.md)

        -   [LXQt Desktop Pre-Install Instructions](lxqt/pre-install.md)
        -   [KF6, Plasma, and Misc Dependencies]{.dummy}
        -   [kwindowsystem-6.26.0 for lxqt](lxqt/lxqt-kwindowsystem.md)
        -   [kconfig-6.26.0 for lxqt](lxqt/lxqt-kconfig.md)
        -   [solid-6.26.0 for lxqt](lxqt/lxqt-solid.md)
        -   [kidletime-6.26.0 for lxqt](lxqt/lxqt-kidletime.md)
        -   [kwayland-6.6.5 for lxqt](lxqt/lxqt-kwayland.md)
        -   [libkscreen-6.6.5 for lxqt](lxqt/lxqt-libkscreen.md)
        -   [layer-shell-qt-6.6.5 for lxqt](lxqt/lxqt-layer-shell-qt.md)
        -   [muparser-2.3.5](lxqt/muparser.md)
        -   [LXQt Desktop Components]{.dummy}
        -   [lxqt-build-tools-2.4.0](lxqt/lxqt-build-tools.md)
        -   [libdbusmenu-lxqt-0.4.0](lxqt/libdbusmenu-lxqt.md)
        -   [libqtxdg-4.4.0](lxqt/libqtxdg.md)
        -   [lxqt-menu-data-2.4.0](lxqt/lxqt-menu-data.md)
        -   [liblxqt-2.4.0](lxqt/liblxqt.md)
        -   [libsysstat-1.1.0](lxqt/libsysstat.md)
        -   [qtxdg-tools-4.4.0](lxqt/qtxdg-tools.md)
        -   [libfm-extra-1.3.2](lxqt/libfm-extra.md)
        -   [menu-cache-1.1.1](lxqt/menu-cache.md)
        -   [libfm-qt-2.4.0](lxqt/libfm-qt.md)
        -   [lxqt-globalkeys-2.4.0](lxqt/lxqt-globalkeys.md)
        -   [lxqt-qtplugin-2.4.0](lxqt/lxqt-qtplugin.md)
        -   [lxqt-panel-2.4.1](lxqt/lxqt-panel.md)
        -   [pcmanfm-qt-2.4.0](lxqt/pcmanfm-qt.md)
        -   [lxqt-powermanagement-2.4.0](lxqt/lxqt-powermanagement.md)
        -   [lxqt-runner-2.4.0](lxqt/lxqt-runner.md)
        -   [lxqt-themes-2.4.0](lxqt/lxqt-themes.md)
        -   [lxqt-admin-2.4.0](lxqt/lxqt-admin.md)
        -   [lxqt-about-2.4.0](lxqt/lxqt-about.md)
        -   [lxqt-config-2.4.0](lxqt/lxqt-config.md)
        -   [lxqt-policykit-2.4.0](lxqt/lxqt-policykit.md)
        -   [lxqt-sudo-2.4.0](lxqt/lxqt-sudo.md)
        -   [lxqt-openssh-askpass-2.4.0](lxqt/lxqt-openssh-askpass.md)
        -   [lxqt-session-2.4.0](lxqt/lxqt-session.md)
        -   [lxqt-wayland-session-0.4.1](lxqt/lxqt-wayland-session.md)
        -   [xdg-desktop-portal-lxqt-1.4.0](lxqt/xdg-desktop-portal-lxqt.md)
        -   [obconf-qt-0.16.5](lxqt/obconf-qt.md)
        -   [LXQt Desktop Final Instructions](lxqt/post-install.md)

    -   #### [38. LXQt Applications](lxqt/lxqt-apps.md)

        -   [lximage-qt-2.4.0](lxqt/lximage-qt.md)
        -   [lxqt-archiver-1.4.0](lxqt/lxqt-archiver.md)
        -   [lxqt-notificationd-2.4.0](lxqt/lxqt-notificationd.md)
        -   [pavucontrol-qt-2.4.0](lxqt/pavucontrol-qt.md)
        -   [qps-2.13.0](lxqt/qps.md)
        -   [qtermwidget-2.4.0](lxqt/qtermwidget.md)
        -   [qterminal-2.4.0](lxqt/qterminal.md)
        -   [screengrab-3.2.0](lxqt/screengrab.md)

-   ### [XI. X Software](xsoft/xsoft.md)

    -   #### [39. Office Programs](xsoft/office.md)

        -   [Gnumeric-1.12.61](xsoft/gnumeric.md)
        -   [LibreOffice-26.2.2](xsoft/libreoffice.md)

    -   #### [40. Graphical Web Browsers](xsoft/graphweb.md)

        -   [Epiphany-50.4](xsoft/epiphany.md)
        -   [falkon-26.04.1](xsoft/falkon.md)
        -   [Firefox-140.11.0esr](xsoft/firefox.md)
        -   [Seamonkey-2.53.23](xsoft/seamonkey.md)

    -   #### [41. Other X-based Programs](xsoft/other.md)

        -   [Balsa-2.6.5](xsoft/balsa.md)
        -   [feh-3.12.2](xsoft/feh.md)
        -   [FontForge-20251009](xsoft/fontforge.md)
        -   [FreeRDP-3.26.0](xsoft/freerdp.md)
        -   [Gimp-3.2.4](xsoft/gimp.md)
        -   [Gparted-1.8.1](xsoft/gparted.md)
        -   [Inkscape-1.4.4](xsoft/inkscape.md)
        -   [rxvt-unicode-9.31](xsoft/rxvt-unicode.md)
        -   [Thunderbird-140.11.0esr](xsoft/thunderbird.md)
        -   [Tigervnc-1.16.0](xsoft/tigervnc.md)
        -   [Transmission-4.1.1](xsoft/transmission.md)
        -   [xarchiver-0.5.4.26](xsoft/xarchiver.md)
        -   [xdg-utils-1.2.1](xsoft/xdg-utils.md)
        -   [XScreenSaver-6.15](xsoft/xscreensaver.md)

-   ### [XII. Multimedia](multimedia/multimedia.md)

    -   #### [42. Multimedia Libraries and Drivers](multimedia/libdriv.md)

        -   [ALSA](multimedia/alsa.md)
        -   [alsa-lib-1.2.16](multimedia/alsa-lib.md)
        -   [alsa-plugins-1.2.12](multimedia/alsa-plugins.md)
        -   [alsa-utils-1.2.15.2](multimedia/alsa-utils.md)
        -   [alsa-tools-1.2.15](multimedia/alsa-tools.md)
        -   [alsa-firmware-1.2.4](multimedia/alsa-firmware.md)
        -   [AudioFile-0.3.6](multimedia/audiofile.md)
        -   [dav1d-1.5.3](multimedia/dav1d.md)
        -   [faac-1.50](multimedia/faac.md)
        -   [FAAD2-2.11.2](multimedia/faad2.md)
        -   [fdk-aac-2.0.3](multimedia/fdk-aac.md)
        -   [FLAC-1.5.0](multimedia/flac.md)
        -   [frei0r-3.1.3](multimedia/frei0r.md)
        -   [gavl-1.4.0](multimedia/gavl.md)
        -   [gstreamer-1.28.3](multimedia/gstreamer10.md)
        -   [gst-plugins-base-1.28.3](multimedia/gst10-plugins-base.md)
        -   [gst-plugins-good-1.28.3](multimedia/gst10-plugins-good.md)
        -   [gst-plugins-bad-1.28.3](multimedia/gst10-plugins-bad.md)
        -   [gst-plugins-ugly-1.28.3](multimedia/gst10-plugins-ugly.md)
        -   [gst-plugins-rs-1.28.3](multimedia/gst-plugins-rs.md)
        -   [gst-libav-1.28.3](multimedia/gst10-libav.md)
        -   [id3lib-3.8.3](multimedia/id3lib.md)
        -   [intel-media-driver-26.1.5](multimedia/intel-media-driver.md)
        -   [intel-vaapi-driver-2.4.1](multimedia/intel-vaapi-driver.md)
        -   [Liba52-0.8.0](multimedia/liba52.md)
        -   [Libao-1.2.0](multimedia/libao.md)
        -   [libaom-3.14.1](multimedia/libaom.md)
        -   [libass-0.17.4](multimedia/libass.md)
        -   [libcanberra-0.30](multimedia/libcanberra.md)
        -   [libcddb-1.3.2](multimedia/libcddb.md)
        -   [libcdio-2.1.0](multimedia/libcdio.md)
        -   [libde265-1.1.0](multimedia/libde265.md)
        -   [libdvdcss-1.5.0](multimedia/libdvdcss.md)
        -   [libdvdread-7.0.1](multimedia/libdvdread.md)
        -   [libdvdnav-7.0.0](multimedia/libdvdnav.md)
        -   [Libdv-1.0.0](multimedia/libdv.md)
        -   [libmad-0.15.1b](multimedia/libmad.md)
        -   [libmpeg2-0.5.1](multimedia/libmpeg2.md)
        -   [libmusicbrainz-5.1.0](multimedia/libmusicbrainz5.md)
        -   [libogg-1.3.6](multimedia/libogg.md)
        -   [libplacebo-7.360.1](multimedia/libplacebo.md)
        -   [libsamplerate-0.2.2](multimedia/libsamplerate.md)
        -   [libsndfile-1.2.2](multimedia/libsndfile.md)
        -   [libva-2.23.0](multimedia/libva.md)
        -   [libvorbis-1.3.7](multimedia/libvorbis.md)
        -   [libvpx-1.16.0](multimedia/libvpx.md)
        -   [MLT-7.38.0](multimedia/mlt.md)
        -   [Opus-1.6.1](multimedia/opus.md)
        -   [Pipewire-1.6.6](multimedia/pipewire.md)
        -   [PulseAudio-17.0](multimedia/pulseaudio.md)
        -   [SBC-2.2](multimedia/sbc.md)
        -   [sdl2-compat-2.32.68](multimedia/sdl2.md)
        -   [SDL3-3.4.10](multimedia/sdl3.md)
        -   [sound-theme-freedesktop-0.8](multimedia/sound-theme-freedesktop.md)
        -   [SoundTouch-2.4.1](multimedia/soundtouch.md)
        -   [Speex-1.2.1](multimedia/speex.md)
        -   [SVT-AV1-4.1.0](multimedia/svt-av1.md)
        -   [Taglib-2.3](multimedia/taglib.md)
        -   [v4l-utils-1.32.0](multimedia/v4l-utils.md)
        -   [Wireplumber-0.5.14](multimedia/wireplumber.md)
        -   [x264-20250815](multimedia/x264.md)
        -   [x265-4.2](multimedia/x265.md)
        -   [xine-lib-1.2.13](multimedia/xine-lib.md)
        -   [XviD-1.3.7](multimedia/xvid.md)

    -   #### [43. Audio Utilities](multimedia/audioutils.md)

        -   [Audacious-4.6](multimedia/audacious.md)
        -   [CDParanoia-III-10.2](multimedia/cdparanoia.md)
        -   [kwave-26.04.1](multimedia/kwave.md)
        -   [LAME-3.100](multimedia/lame.md)
        -   [mpg123-1.33.5](multimedia/mpg123.md)
        -   [pavucontrol-6.2](multimedia/pavucontrol.md)
        -   [pnmixer-0.7.2](multimedia/pnmixer.md)
        -   [vorbis-tools-1.4.3](multimedia/vorbistools.md)

    -   #### [44. Video Utilities](multimedia/videoutils.md)

        -   [FFmpeg-8.1.1](multimedia/ffmpeg.md)
        -   [mpv-0.41.0](multimedia/mpv.md)
        -   [VLC-3.0.23](multimedia/vlc.md)
        -   [xine-ui-0.99.14](multimedia/xine-ui.md)

    -   #### [45. CD/DVD-Writing Utilities](multimedia/cdwriteutils.md)

        -   [Cdrdao-1.2.6](multimedia/cdrdao.md)
        -   [Cdrtools-3.02a09](multimedia/cdrtools.md)
        -   [dvd+rw-tools-7.1](multimedia/dvd-rw-tools.md)
        -   [libburn-1.5.8](multimedia/libburn.md)
        -   [libisoburn-1.5.8.pl02](multimedia/libisoburn.md)
        -   [libisofs-1.5.8.pl02](multimedia/libisofs.md)

-   ### [XIII. Printing, Scanning and Typesetting](pst/pst.md)

    -   #### [46. Printing](pst/printing.md)

        -   [Cups-2.4.19](pst/cups.md)
        -   [cups-browsed-2.1.1](pst/cups-browsed.md)
        -   [cups-filters-2.0.1](pst/cups-filters.md)
        -   [ghostscript-10.07.1](pst/gs.md)
        -   [Gutenprint-5.3.5](pst/gutenprint.md)
        -   [libcupsfilters-2.1.1](pst/libcupsfilters.md)
        -   [libppd-2.1.1](pst/libppd.md)

    -   #### [47. Scanning](pst/scanning.md)

        -   [SANE-1.4.0](pst/sane.md)
        -   [Simple-scan-50.0](pst/simple-scan.md)

    -   #### [48. Standard Generalized Markup Language (SGML)](pst/sgml.md)

        -   [sgml-common-0.6.3](pst/sgml-common.md)
        -   [docbook-3.1-dtd](pst/docbook-3.1-dtd.md)
        -   [docbook-4.5-dtd](pst/docbook-4.5-dtd.md)
        -   [OpenSP-1.5.2](pst/opensp.md)
        -   [OpenJade-1.3.2](pst/openjade.md)
        -   [docbook-dsssl-1.79](pst/docbook-dsssl.md)
        -   [DocBook-utils-0.6.14](pst/docbook-utils.md)

    -   #### [49. Extensible Markup Language (XML)](pst/xml.md)

        -   [docbook-xml-4.5](pst/docbook.md)
        -   [docbook-xml-5.0](pst/docbook5.md)
        -   [docbook-xsl-nons-1.79.2](pst/docbook-xsl.md)
        -   [docbook-xsl-ns-1.79.2](pst/docbook-xsl-ns.md)
        -   [itstool-2.0.7](pst/itstool.md)
        -   [xmlto-0.0.29](pst/xmlto.md)

    -   #### [50. PostScript](pst/ps.md)

        -   [Enscript-1.6.6](pst/enscript.md)
        -   [ePDFView-gtk3-20200814](pst/epdfview.md)
        -   [fop-2.11](pst/fop.md)
        -   [MuPDF-1.26.12](pst/mupdf.md)
        -   [paps-0.8.0](pst/paps.md)

    -   #### [51. Typesetting](pst/typesetting.md)

        -   [Setting the PATH for TeX Live](pst/tex-path.md)
        -   [install-tl-unx](pst/tl-installer.md)
        -   [texlive-20250308-source](pst/texlive.md)
        -   [asymptote-3.10](pst/asymptote.md)
        -   [biber-2.21](pst/biber.md)
        -   [dvisvgm-3.6](pst/dvisvgm.md)
        -   [xindy-2.5.1](pst/xindy.md)

-   ### [A. Creative Commons License](appendices/creat-comm.md)

-   ### [B. The MIT License](mit.md)

-   ### [Glossary](appendices/glossary.md)

-   ### [Index](longindex.md)
:::
::::::::::::::::

::: navfooter
-   [Next](preface/preface.md "Preface"){accesskey="n"}

    Preface

-   .

-   .
:::
