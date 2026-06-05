<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sysstat.md "Sysstat-12.7.9")

    Sysstat-12.7.9

-   [Next](udisks2.md "UDisks-2.11.1")

    UDisks-2.11.1

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Systemd-260.2 {#systemd-260.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to systemd {#introduction-to-systemd}

While <span class="application">systemd</span> was installed when building LFS, there are many features provided by the package that were not included in the initial installation because <span class="application">Linux-PAM</span> was not yet installed. The <span class="application">systemd</span> package needs to be rebuilt to provide a working <span class="command"><strong>systemd-logind</strong></span> service, which provides many additional features for dependent packages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/systemd/systemd/archive/v260.2/systemd-260.2.tar.gz">https://github.com/systemd/systemd/archive/v260.2/systemd-260.2.tar.gz</a>

-   Download MD5 sum: 9f066cdb9c32177830add1e21d13c4f6

-   Download size: 17 MB

-   Estimated disk space required: 420 MB (with tests)

-   Estimated build time: 1.3 SBU (with tests using 4 cores)
</div>

### systemd Dependencies

#### Recommended

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> is not strictly required to build <span class="application">systemd</span>, but the main reason to rebuild <span class="application">systemd</span> in BLFS (it's already built in LFS anyway) is for the <span class="command"><strong>systemd-logind</strong></span> daemon and the <code class="filename">pam_systemd.so</code> PAM module. <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> is required for them. All packages in BLFS book with a dependency on <span class="application">systemd</span> expect that it has been rebuilt with <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>.
</div>

<a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> and <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a> (runtime)

#### Optional

<a class="xref" href="../postlfs/btrfs-progs.md" title="btrfs-progs-7.0">btrfs-progs-7.0</a>, <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">cryptsetup-2.8.6</a>, <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="../postlfs/iptables.md" title="iptables-1.8.13">iptables-1.8.13</a>, <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="libidn2.md" title="libidn2-2.3.8">libidn2-2.3.8</a>, <a class="xref" href="../postlfs/libpwquality.md" title="libpwquality-1.4.5">libpwquality-1.4.5</a>, <a class="xref" href="libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, <a class="xref" href="libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>, <a class="xref" href="../postlfs/p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a>, <a class="xref" href="../postlfs/qemu.md" title="qemu-11.0.1">qemu-11.0.1</a>, <a class="xref" href="libqrencode.md" title="libqrencode-4.1.1">libqrencode-4.1.1</a>, <a class="xref" href="../basicnet/rsync.md" title="rsync-3.4.3">rsync-3.4.3</a>, <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>, <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="../postlfs/zsh.md" title="zsh-5.9.1">zsh-5.9.1</a> (for the zsh completions), <a class="ulink" href="https://www.apparmor.net/">AppArmor</a>, <a class="ulink" href="https://github.com/linux-audit/audit-userspace">audit-userspace</a>, <a class="ulink" href="https://github.com/scop/bash-completion">bash-completion</a>, <a class="ulink" href="https://jekyllrb.com/">jekyll</a>, <a class="ulink" href="https://www.kernel.org/pub/linux/utils/kernel/kexec/">kexec-tools</a>, <a class="ulink" href="https://github.com/libbpf/libbpf">libbpf</a>, <a class="ulink" href="https://sourceware.org/elfutils/">libdw</a>, <a class="ulink" href="https://developers.yubico.com/libfido2/">libfido2</a>, <a class="ulink" href="https://www.gnu.org/software/libmicrohttpd/">libmicrohttpd</a>, <a class="ulink" href="https://pypi.org/project/pefile/">pefile</a>, <a class="ulink" href="https://pypi.org/project/pyelftools/">pyelftools</a>, <a class="ulink" href="https://sourceforge.net/projects/linuxquota/">quota-tools</a>, <a class="ulink" href="https://rpm.org/">rpm</a>, <a class="ulink" href="https://github.com/SELinuxProject/selinux">SELinux</a>, <a class="ulink" href="https://sourceware.org/systemtap/">systemtap</a>, <a class="ulink" href="https://tpm2-tss.readthedocs.io/en/latest/">tpm2-tss</a> and <a class="ulink" href="https://xenproject.org">Xen</a>

#### Optional (to rebuild the manual pages)

<a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a> (to build the index of systemd manual pages)

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/Logind">https://wiki.linuxfromscratch.org/blfs/wiki/Logind</a>
</div>

<div class="installation" lang="en">
## Installation of systemd {#installation-of-systemd}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If a previous version of systemd has been installed, remove a service that will generate errors on following boots. As the <code class="systemitem">root</code> user:

```bash
rm -fv /usr/lib/systemd/system/systemd-update-utmp-runlevel.service
```
</div>

Remove two unneeded groups, <code class="systemitem">render</code> and <code class="systemitem">sgx</code>, from the default udev rules:

```bash
sed -i -e 's/GROUP="render"/GROUP="video"/' \
       -e 's/GROUP="sgx", //' rules.d/50-udev-default.rules.in
```

Rebuild <span class="application">systemd</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                 \
      --prefix=/usr            \
      --buildtype=release      \
      -D default-dnssec=no     \
      -D firstboot=false       \
      -D install-tests=false   \
      -D ldconfig=false        \
      -D man=auto              \
      -D sysusers=false        \
      -D rpmmacrosdir=no       \
      -D homed=disabled        \
      -D mode=release          \
      -D pam=enabled           \
      -D pamconfdir=/etc/pam.d \
      -D dev-kvm-mode=0660     \
      -D nobody-group=nogroup  \
      -D sysupdate=disabled    \
      -D ukify=disabled        \
      -D docdir=/usr/share/doc/systemd-260.2 &&

ninja
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

For the best test results, make sure you run the test suite from a system that is booted by the same <span class="application">systemd</span> version you are rebuilding.
</div>

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The test named <code class="filename">test-stat-util</code> is known to fail if some kernel features are not enabled. If the test suite is run as the <code class="systemitem">root</code> user, some other tests may fail because they depend on various kernel configuration options.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D pamconfdir=/etc/pam.d`*: Forces the PAM files to be installed in /etc/pam.d rather than /usr/lib/pam.d.

*`-D homed=disabled`*: Removes a daemon that does not offer any use under a traditional BLFS configuration, especially using accounts created with useradd. To enable systemd-homed, first ensure that you have <a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">cryptsetup-2.8.6</a> and <a class="xref" href="../postlfs/libpwquality.md" title="libpwquality-1.4.5">libpwquality-1.4.5</a> installed, and then change <span class="quote">“<span class="quote">disabled</span>”</span> to <span class="quote">“<span class="quote">enabled</span>”</span> in the above <span class="command"><strong>meson setup</strong></span> command.

*`-D ukify=disabled`*: Removes a script for combining a kernel, an initramfs, and a kernel command line etc. into an UEFI application which can be loaded by the UEFI firmware to start the embedded Linux kernel. It's not needed for booting a BLFS system with UEFI. Additionally, it requires the <span class="application">pefile</span> Python module at runtime, so if it's enabled but <span class="application">pefile</span> is not installed, one test for it will fail in the test suite. To enable <span class="command"><strong>systemd-ukify</strong></span>, install the <span class="application">pefile</span> module and then change <span class="quote">“<span class="quote">disabled</span>”</span> to <span class="quote">“<span class="quote">enabled</span>”</span> in the above <span class="command"><strong>meson setup</strong></span> command.
</div>

<div class="configuration" lang="en">
## Configuring systemd {#configuring-systemd}

The <code class="filename">/etc/pam.d/system-session</code> file needs to be modified and a new file needs to be created in order for <span class="command"><strong>systemd-logind</strong></span> to work correctly. Run the following commands as the <code class="systemitem">root</code> user:

```bash
grep 'pam_systemd' /etc/pam.d/system-session ||
cat >> /etc/pam.d/system-session << "EOF"
# Begin Systemd addition

session  required    pam_loginuid.so
session  optional    pam_systemd.so

# End Systemd addition
EOF

cat > /etc/pam.d/systemd-user << "EOF"
# Begin /etc/pam.d/systemd-user

account  required    pam_access.so
account  include     system-account

session  required    pam_env.so
session  required    pam_limits.so
session  required    pam_loginuid.so
session  optional    pam_keyinit.so force revoke
session  optional    pam_systemd.so

auth     required    pam_deny.so
password required    pam_deny.so

# End /etc/pam.d/systemd-user
EOF
```

As the <code class="systemitem">root</code> user, replace the running <span class="command"><strong>systemd</strong></span> manager (the <span class="command"><strong>init</strong></span> process) with the <span class="command"><strong>systemd</strong></span> executable newly built and installed:

```bash
systemctl daemon-reexec
```

A desktop environment often runs as a group of systemd user services. Those services are spawned by the systemd per-user instance, instead of the login shell. To ensure those services get the environment variables we've set via <code class="filename">/etc/profile.d</code>, as the <code class="systemitem">root</code> user, install a systemd environment generator to dump all the relevant exported environment variables into the systemd per-user instance when the instance starts to run:

```bash
install -vdm755 /etc/systemd/user-environment-generators &&
cat > /etc/systemd/user-environment-generators/50-profile.sh << "EOF" &&
#!/usr/bin/env -S -i /usr/bin/bash
# SPDX-License-Identifier: MIT

. /etc/profile

# Systemd should have already set a better value for them.
unset XDG_RUNTIME_DIR
for i in $(locale); do
  unset ${i%=*}
done

# Some shell magic that we don't want to expose.
unset SHLVL

# Systemd does not want to pass functions to the environment
for i in $(declare -pF | awk '{print $3}'); do
  unset -f $i
done

python3 << _EOF
import os
for var in os.environ:
  # Simply unsetting them in shell does not work.
  if var in ['LC_CTYPE', '_']:
    continue

  print(var + '=' + os.environ[var])
_EOF
EOF

chmod -v 755 /etc/systemd/user-environment-generators/50-profile.sh
```

Read <a class="ulink" href="https://man.archlinux.org/man/systemd.environment-generator.7">systemd.environment-generator(7)</a> for details about the systemd environment generators. Note that if you've edited the content of <code class="filename">/etc/profile.d</code> when a desktop environment is running, you need to sync the change into the systemd per-user instance:

```bash
systemctl --user unset-environment \
  $(/etc/systemd/user-environment-generators/50-profile.sh | sed 's/=.*//')
systemctl --user daemon-reload
```

And then log out and log in again to sync the change into the desktop environment. The <span class="command"><strong>systemctl --user unset-environment</strong></span> command is needed on some desktop environments which write the environment variables into the runtime environment variable pool of the per-user systemd instance because the content of that pool would override the setting from the generator.

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

Now ensure <a class="xref" href="../postlfs/shadow.md" title="Shadow-4.19.4">Shadow-4.19.4</a> has been already rebuilt with <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> support first, then logout, and login again. This will ensure that the running login session is registered with <span class="command"><strong>systemd-logind</strong></span>, and that a per-user systemd instance is running for each user owning a login session. Many BLFS packages listing systemd as a dependency need the <span class="command"><strong>systemd-logind</strong></span> integration and/or a running per-user systemd instance at runtime.
</div>

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If you are upgrading from a previous version of systemd and an initrd is used for system boot, you should generate a new initrd before rebooting the system.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

A list of the installed files, along with their short descriptions can be found at <a class="ulink" href="../../../../lfs/view/systemd/chapter08/systemd.md#contents-systemd">../../../../lfs/view/systemd/chapter08/systemd.md#contents-systemd</a>.

Listed below are the newly installed programs along with short descriptions.

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">homectl (optional), systemd-cryptenroll (if <span class="segbody">cryptsetup-2.8.6</a> is installed), and systemd-cryptsetup (if <a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">cryptsetup-2.8.6</a> is installed),</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="homectl"></a><span class="command"><span class="term"><strong>homectl</strong></span></span>                           is a tool to create, remove, change, or inspect a home directory managed by <span class="command"><strong>systemd-homed</strong></span>; note that it's useless for the classic UNIX users and home directories which we are using in LFS/BLFS book
  <a id="systemd-cryptenroll"></a><span class="command"><span class="term"><strong>systemd-cryptenroll</strong></span></span>   Is used to enroll or remove a system from full disk encryption, as well as set and query private keys and recovery keys
  <a id="systemd-cryptsetup"></a><span class="command"><span class="term"><strong>systemd-cryptsetup</strong></span></span>     Attaches or removes an encrypted block device
  <a id="pam_systemd"></a><span class="term"><code class="filename">pam_systemd.so</code></span>                   is a PAM module used to register user sessions with the <span class="application">systemd</span> login manager, <span class="command"><strong>systemd-logind</strong></span>
  ---------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sysstat.md "Sysstat-12.7.9")

    Sysstat-12.7.9

-   [Next](udisks2.md "UDisks-2.11.1")

    UDisks-2.11.1

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
