<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](shadow.md "Shadow-4.19.4")

    Shadow-4.19.4

-   [Next](stunnel.md "stunnel-5.78")

    stunnel-5.78

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ssh-askpass-10.3p1 {#ssh-askpass-10.3p1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ssh-askpass {#introduction-to-ssh-askpass}

The <span class="application">ssh-askpass</span> is a generic executable name for many packages, with similar names, that provide a interactive X service to grab password for packages requiring administrative privileges to be run. It prompts the user with a window box where the necessary password can be inserted. Here, we choose Damien Miller's package distributed in the <span class="application">OpenSSH</span> tarball.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.3p1.tar.gz">https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.3p1.tar.gz</a>

-   Download MD5 sum: 0b5662e0aa255c8d20f18dcca1bda65c

-   Download size: 1.9 MB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
</div>

### ssh-askpass Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> (runtime), <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>, and <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of ssh-askpass {#installation-of-ssh-askpass}

Install <span class="application">ssh-askpass</span> by running the following commands:

```bash
cd contrib &&
make gnome-ssh-askpass3
```

Now, as the <code class="systemitem">root</code> user:

```bash
install -v -d -m755                    /usr/libexec/openssh/contrib  &&
install -v -m755    gnome-ssh-askpass3 /usr/libexec/openssh/contrib  &&
ln -sv -f contrib/gnome-ssh-askpass3   /usr/libexec/openssh/ssh-askpass
```

The use of /usr/libexec/openssh/contrib and a symlink is justified by the eventual necessity of a different program for that service.
</div>

<div class="configuration" lang="en">
## Configuring ssh-askpass {#configuring-ssh-askpass}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

As the <code class="systemitem">root</code> user, configure <a class="xref" href="sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> to use <span class="application">ssh-askpass</span>:

```bash
cat >> /etc/sudo.conf << "EOF" &&
# Path to askpass helper program
Path askpass /usr/libexec/openssh/ssh-askpass
EOF
chmod -v 0644 /etc/sudo.conf
```

If a given graphical \<application\> requires administrative privileges, use <span class="command"><strong>sudo -A \<application\></strong></span> from an x-terminal, from a Window Manager menu and/or replace "Exec=\<application\> ..." by "Exec=sudo -A \<application\> ..." in the \<application\>.desktop file.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnome-ssh-askpass3, ssh-askpass (symlink to <code class="filename">gnome-ssh-askpass3</code>)</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/libexec/openssh/contrib</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](shadow.md "Shadow-4.19.4")

    Shadow-4.19.4

-   [Next](stunnel.md "stunnel-5.78")

    stunnel-5.78

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
