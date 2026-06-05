::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Preface

-   [Prev](prerequisites.md "Prerequisites"){accesskey="p"}

    Prerequisites

-   [Next](package-choices.md "Rationale for Packages in the Book"){accesskey="n"}

    Rationale for Packages in the Book

-   [Up](preface.md "Preface"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#pre-standards}v. LFS and Standards {#v.-lfs-and-standards .sect1}

::::::: {.sect1 lang="en"}
The structure of LFS follows Linux standards as closely as possible. The primary standards are:

::: itemizedlist
-   [POSIX.1-2008](https://pubs.opengroup.org/onlinepubs/9699919799/){.ulink}.

-   [Filesystem Hierarchy Standard (FHS) Version 3.0](https://refspecs.linuxfoundation.org/FHS_3.0/fhs/index.html){.ulink}

-   [Linux Standard Base (LSB) Version 5.0 (2015)](https://refspecs.linuxfoundation.org/lsb.shtml){.ulink}

    The LSB has four separate specifications: Core, Desktop, Languages, and Imaging. Some parts of Core and Desktop specifications are architecture specific. There are also two trial specifications: Gtk3 and Graphics. LFS attempts to conform to the LSB specifications for the IA32 (32-bit x86) or AMD64 (x86_64) architectures discussed in the previous section.

    ::: {.admon .note}
    ![\[Note\]](../images/note.png)
    ### Note

    Many people do not agree with these requirements. The main purpose of the LSB is to ensure that proprietary software can be installed and run on a compliant system. Since LFS is source based, the user has complete control over what packages are desired; you may choose not to install some packages that are specified by the LSB.
    :::
:::

While it is possible to create a complete system that will pass the LSB certification tests ["[from scratch,]{.quote}"]{.quote} this can\'t be done without many additional packages that are beyond the scope of the LFS book. Installation instructions for some of these additional packages can be found in BLFS.

::: variablelist
### Packages supplied by LFS needed to satisfy the LSB Requirements

  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [[*LSB Core:*]{.emphasis}]{.term}                                Bash, Bc, Binutils, Coreutils, Diffutils, File, Findutils, Gawk, GCC, Gettext, Glibc, Grep, Gzip, M4, Man-DB, Procps, Psmisc, Sed, Shadow, [Systemd]{.phrase}, Tar, Util-linux, Zlib
  [[*LSB Desktop:*]{.emphasis}]{.term}                             None
  [[*LSB Languages:*]{.emphasis}]{.term}                           Perl
  [[*LSB Imaging:*]{.emphasis}]{.term}                             None
  [[*LSB Gtk3 and LSB Graphics (Trial Use):*]{.emphasis}]{.term}   None
  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::

::: variablelist
### Packages supplied by BLFS needed to satisfy the LSB Requirements

  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------
  [[*LSB Core:*]{.emphasis}]{.term}                                At, Batch (a part of At), BLFS Bash Startup Files, Cpio, Ed, Fcrontab, LSB-Tools, NSPR, NSS, Linux-PAM, Pax, Sendmail (or Postfix or Exim), Time
  [[*LSB Desktop:*]{.emphasis}]{.term}                             Alsa, ATK, Cairo, Desktop-file-utils, Freetype, Fontconfig, Gdk-pixbuf, Glib2, GLU, Icon-naming-utils, Libjpeg-turbo, Libxml2, Mesa, Pango, Xdg-utils, Xorg
  [[*LSB Languages:*]{.emphasis}]{.term}                           Libxml2, Libxslt
  [[*LSB Imaging:*]{.emphasis}]{.term}                             CUPS, Cups-filters, Ghostscript, SANE
  [[*LSB Gtk3 and LSB Graphics (Trial Use):*]{.emphasis}]{.term}   GTK+3
  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------
:::

::: variablelist
### Components not supplied or optionally supplied by LFS or BLFS needed to satisfy the LSB Requirements

  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [[*LSB Core:*]{.emphasis}]{.term}                                [**install_initd**]{.command}, `libcrypt.so.1`{.filename} (can be provided with optional instructions for the LFS Libxcrypt package), `libncurses.so.5`{.filename} (can be provided with optional instructions for the LFS Ncurses package), `libncursesw.so.5`{.filename} (but `libncursesw.so.6`{.filename} is provided by the LFS Ncurses package)
  [[*LSB Desktop:*]{.emphasis}]{.term}                             `libgdk-x11-2.0.so`{.filename} (but `libgdk-3.so`{.filename} is provided by the BLFS GTK+-3 package), `libgtk-x11-2.0.so`{.filename} (but `libgtk-3.so`{.filename} and `libgtk-4.so`{.filename} are provided by the BLFS GTK+-3 and GTK-4 packages), `libpng12.so`{.filename} (but `libpng16.so`{.filename} is provided by the BLFS Libpng package), `libQt*.so.4`{.filename} (but `libQt6*.so.6`{.filename} are provided by the BLFS Qt6 package), `libtiff.so.4`{.filename} (but `libtiff.so.6`{.filename} is provided by the BLFS Libtiff package)
  [[*LSB Languages:*]{.emphasis}]{.term}                           [**/usr/bin/python**]{.command} (LSB requires Python2 but LFS and BLFS only provide Python3)
  [[*LSB Imaging:*]{.emphasis}]{.term}                             None
  [[*LSB Gtk3 and LSB Graphics (Trial Use):*]{.emphasis}]{.term}   `libpng15.so`{.filename} (but `libpng16.so`{.filename} is provided by the BLFS Libpng package)
  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::

::: navfooter
-   [Prev](prerequisites.md "Prerequisites"){accesskey="p"}

    Prerequisites

-   [Next](package-choices.md "Rationale for Packages in the Book"){accesskey="n"}

    Rationale for Packages in the Book

-   [Up](preface.md "Preface"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
