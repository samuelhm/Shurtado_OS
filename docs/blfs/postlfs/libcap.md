<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](firewall.md "Setting Up a Network Firewall")

    Setting Up a Network Firewall

-   [Next](linux-pam.md "Linux-PAM-1.7.2")

    Linux-PAM-1.7.2

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libcap-2.78 with PAM {#libcap-2.78-with-pam}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libcap with PAM {#introduction-to-libcap-with-pam}

The <span class="application">libcap</span> package was installed in LFS, but if <span class="application">Linux-PAM</span> support is desired, the PAM module must be built (after installation of <span class="application">Linux-PAM</span>).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.78.tar.xz">https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.78.tar.xz</a>

-   Download MD5 sum: 0ff11419aa4813c0a0f84fe67bf3b39e

-   Download size: 200 KB

-   Estimated disk space required: 2.3 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libcap Dependencies

#### Required

<a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>
</div>

<div class="installation" lang="en">
## Installation of libcap {#installation-of-libcap}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are upgrading libcap from a previous version, use the instructions in <a class="ulink" href="../../../../lfs/view/systemd/chapter08/libcap.md">LFS libcap page</a> to upgrade libcap. If <a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> has been built, the PAM module will automatically be built too.
</div>

Install <span class="application">libcap</span> by running the following commands:

```bash
make -C pam_cap
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
install -v -m755 pam_cap/pam_cap.so      /usr/lib/security &&
install -v -m644 pam_cap/capability.conf /etc/security
```
</div>

<div class="configuration" lang="en">
## Configuring Libcap {#configuring-libcap}

In order to allow <span class="application">Linux-PAM</span> to grant privileges based on POSIX capabilities, you need to add the libcap module to the beginning of the <code class="filename">/etc/pam.d/system-auth</code> file. Make the required edits with the following commands:

```bash
mv -v /etc/pam.d/system-auth{,.bak} &&
cat > /etc/pam.d/system-auth << "EOF" &&
# Begin /etc/pam.d/system-auth

auth      optional    pam_cap.so
EOF
tail -n +3 /etc/pam.d/system-auth.bak >> /etc/pam.d/system-auth
```

Additionally, you'll need to modify the <code class="filename">/etc/security/capability.conf</code> file to grant necessary privileges to users, and utilize the <span class="command"><strong>setcap</strong></span> utility to set capabilities on specific utilities as needed. See <span class="command"><strong>man 8 setcap</strong></span> and <span class="command"><strong>man 3 cap_from_text</strong></span> for additional information.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">pam_cap.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](firewall.md "Setting Up a Network Firewall")

    Setting Up a Network Firewall

-   [Next](linux-pam.md "Linux-PAM-1.7.2")

    Linux-PAM-1.7.2

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
