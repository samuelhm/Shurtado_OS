<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](pinentry.md "pinentry-1.3.2")

    pinentry-1.3.2

-   [Next](shared-mime-info.md "shared-mime-info-2.4")

    shared-mime-info-2.4

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Screen-5.0.1 {#screen-5.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Screen {#introduction-to-screen}

<span class="application">Screen</span> is a terminal multiplexor that runs several separate processes, typically interactive shells, on a single physical character-based terminal. Each virtual terminal emulates a DEC VT100 plus several ANSI X3.64 and ISO 2022 functions and also provides configurable input and output translation, serial port support, configurable logging, multi-user support, and many character encodings, including UTF-8. Screen sessions can be detached and resumed later on a different terminal.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/screen/screen-5.0.1.tar.gz">https://ftpmirror.gnu.org/screen/screen-5.0.1.tar.gz</a>

-   Download MD5 sum: fb5e5dfc9353225c2d6929777344b1a6

-   Download size: 880 KB

-   Estimated disk space required: 8.9 MB

-   Estimated build time: 0.1 SBU
</div>

### Screen Dependencies

#### Optional

<a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>
</div>

<div class="installation" lang="en">
## Installation of Screen {#installation-of-screen}

Fix an issue causing the info page to fail to build:

```bash
sed 's/\([a-z]\)@opensuse/\1@@opensuse/' -i doc/screen.texinfo
```

Install <span class="application">Screen</span> by running the following commands:

```bash
./configure --prefix=/usr                   \
            --infodir=/usr/share/info       \
            --mandir=/usr/share/man         \
            --disable-pam                   \
            --enable-socket-dir=/run/screen \
            --with-pty-group=5              \
            --with-system_screenrc=/etc/screenrc &&

sed -i -e "s%/usr/local/etc/screenrc%/etc/screenrc%" {etc,doc}/* &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -m 644 etc/etcscreenrc /etc/screenrc
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-pam`*: This option removes a build dependency on Linux-PAM. Remove this option if you want PAM support.

*`--enable-socket-dir=/run/screen`*: This option places the per-user sockets in a standard location.

*`--with-system_screenrc=/etc/screenrc`*: This option places the global screenrc file in <code class="filename">/etc</code>.

*`--with-pty-group=5`*: This option sets the gid to the value used by LFS.

<span class="command"><strong>sed -i -e "s%/usr/local/etc/screenrc%/etc/screenrc%" {etc,doc}/\</strong>*</span>: This command corrects the configuration and documentation files to the location that is used here for the global screenrc file.
</div>

<div class="configuration" lang="en">
## Configuring Screen {#configuring-screen}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/screenrc</code> and <code class="filename">~/.screenrc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

You may want to look at the example configuration file that was installed and customize it for your needs.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">screen (symlink) and screen-5.0.1</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/screen and /run/screen</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------- --------------------------------------------------------------
  <a id="screen-prog"></a><span class="command"><span class="term"><strong>screen</strong></span></span>   is a terminal multiplexor with VT100/ANSI terminal emulation
  ------------------------------------------------- --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pinentry.md "pinentry-1.3.2")

    pinentry-1.3.2

-   [Next](shared-mime-info.md "shared-mime-info-2.4")

    shared-mime-info-2.4

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
