::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sysstat.md "Sysstat-12.7.9"){accesskey="p"}

    Sysstat-12.7.9

-   [Next](udisks2.md "UDisks-2.11.1"){accesskey="n"}

    UDisks-2.11.1

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#systemd}Systemd-260.2 {#systemd-260.2 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to systemd {#introduction-to-systemd .sect2}

While [systemd]{.application} was installed when building LFS, there are many features provided by the package that were not included in the initial installation because [Linux-PAM]{.application} was not yet installed. The [systemd]{.application} package needs to be rebuilt to provide a working [**systemd-logind**]{.command} service, which provides many additional features for dependent packages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/systemd/systemd/archive/v260.2/systemd-260.2.tar.gz](https://github.com/systemd/systemd/archive/v260.2/systemd-260.2.tar.gz){.ulink}

-   Download MD5 sum: 9f066cdb9c32177830add1e21d13c4f6

-   Download size: 17 MB

-   Estimated disk space required: 420 MB (with tests)

-   Estimated build time: 1.3 SBU (with tests using 4 cores)
:::

### systemd Dependencies

#### Recommended

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref} is not strictly required to build [systemd]{.application}, but the main reason to rebuild [systemd]{.application} in BLFS (it's already built in LFS anyway) is for the [**systemd-logind**]{.command} daemon and the `pam_systemd.so`{.filename} PAM module. [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref} is required for them. All packages in BLFS book with a dependency on [systemd]{.application} expect that it has been rebuilt with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}.
:::

[Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref} and [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref} (runtime)

#### Optional

[btrfs-progs-7.0](../postlfs/btrfs-progs.md "btrfs-progs-7.0"){.xref}, [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref}, [git-2.54.0](git.md "Git-2.54.0"){.xref}, [iptables-1.8.13](../postlfs/iptables.md "iptables-1.8.13"){.xref}, [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref}, [libidn2-2.3.8](libidn2.md "libidn2-2.3.8"){.xref}, [libpwquality-1.4.5](../postlfs/libpwquality.md "libpwquality-1.4.5"){.xref}, [libseccomp-2.6.0](libseccomp.md "libseccomp-2.6.0"){.xref}, [libxkbcommon-1.13.2](libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}, [p11-kit-0.26.2](../postlfs/p11-kit.md "p11-kit-0.26.2"){.xref}, [qemu-11.0.1](../postlfs/qemu.md "qemu-11.0.1"){.xref}, [libqrencode-4.1.1](libqrencode.md "libqrencode-4.1.1"){.xref}, [rsync-3.4.3](../basicnet/rsync.md "rsync-3.4.3"){.xref}, [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}, [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, [zsh-5.9.1](../postlfs/zsh.md "zsh-5.9.1"){.xref} (for the zsh completions), [AppArmor](https://www.apparmor.net/){.ulink}, [audit-userspace](https://github.com/linux-audit/audit-userspace){.ulink}, [bash-completion](https://github.com/scop/bash-completion){.ulink}, [jekyll](https://jekyllrb.com/){.ulink}, [kexec-tools](https://www.kernel.org/pub/linux/utils/kernel/kexec/){.ulink}, [libbpf](https://github.com/libbpf/libbpf){.ulink}, [libdw](https://sourceware.org/elfutils/){.ulink}, [libfido2](https://developers.yubico.com/libfido2/){.ulink}, [libmicrohttpd](https://www.gnu.org/software/libmicrohttpd/){.ulink}, [pefile](https://pypi.org/project/pefile/){.ulink}, [pyelftools](https://pypi.org/project/pyelftools/){.ulink}, [quota-tools](https://sourceforge.net/projects/linuxquota/){.ulink}, [rpm](https://rpm.org/){.ulink}, [SELinux](https://github.com/SELinuxProject/selinux){.ulink}, [systemtap](https://sourceware.org/systemtap/){.ulink}, [tpm2-tss](https://tpm2-tss.readthedocs.io/en/latest/){.ulink} and [Xen](https://xenproject.org){.ulink}

#### Optional (to rebuild the manual pages)

[docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}, and [lxml-6.1.1](python-modules.md#lxml "lxml-6.1.1"){.xref} (to build the index of systemd manual pages)

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/Logind](https://wiki.linuxfromscratch.org/blfs/wiki/Logind){.ulink}
::::::

::::: {.installation lang="en"}
## Installation of systemd {#installation-of-systemd .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If a previous version of systemd has been installed, remove a service that will generate errors on following boots. As the `root`{.systemitem} user:

``` root
rm -fv /usr/lib/systemd/system/systemd-update-utmp-runlevel.service
```
:::

Remove two unneeded groups, `render`{.systemitem} and `sgx`{.systemitem}, from the default udev rules:

``` userinput
sed -i -e 's/GROUP="render"/GROUP="video"/' \
       -e 's/GROUP="sgx", //' rules.d/50-udev-default.rules.in
```

Rebuild [systemd]{.application} by running the following commands:

``` userinput
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

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

For the best test results, make sure you run the test suite from a system that is booted by the same [systemd]{.application} version you are rebuilding.
:::

To test the results, issue: [**ninja test**]{.command}. The test named `test-stat-util`{.filename} is known to fail if some kernel features are not enabled. If the test suite is run as the `root`{.systemitem} user, some other tests may fail because they depend on various kernel configuration options.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D pamconfdir=/etc/pam.d`*: Forces the PAM files to be installed in /etc/pam.d rather than /usr/lib/pam.d.

*`-D homed=disabled`*: Removes a daemon that does not offer any use under a traditional BLFS configuration, especially using accounts created with useradd. To enable systemd-homed, first ensure that you have [cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref} and [libpwquality-1.4.5](../postlfs/libpwquality.md "libpwquality-1.4.5"){.xref} installed, and then change [“[disabled]{.quote}”]{.quote} to [“[enabled]{.quote}”]{.quote} in the above [**meson setup**]{.command} command.

*`-D ukify=disabled`*: Removes a script for combining a kernel, an initramfs, and a kernel command line etc. into an UEFI application which can be loaded by the UEFI firmware to start the embedded Linux kernel. It's not needed for booting a BLFS system with UEFI. Additionally, it requires the [pefile]{.application} Python module at runtime, so if it's enabled but [pefile]{.application} is not installed, one test for it will fail in the test suite. To enable [**systemd-ukify**]{.command}, install the [pefile]{.application} module and then change [“[disabled]{.quote}”]{.quote} to [“[enabled]{.quote}”]{.quote} in the above [**meson setup**]{.command} command.
:::

::::: {.configuration lang="en"}
## Configuring systemd {#configuring-systemd .sect2}

The `/etc/pam.d/system-session`{.filename} file needs to be modified and a new file needs to be created in order for [**systemd-logind**]{.command} to work correctly. Run the following commands as the `root`{.systemitem} user:

``` root
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

As the `root`{.systemitem} user, replace the running [**systemd**]{.command} manager (the [**init**]{.command} process) with the [**systemd**]{.command} executable newly built and installed:

``` root
systemctl daemon-reexec
```

A desktop environment often runs as a group of systemd user services. Those services are spawned by the systemd per-user instance, instead of the login shell. To ensure those services get the environment variables we've set via `/etc/profile.d`{.filename}, as the `root`{.systemitem} user, install a systemd environment generator to dump all the relevant exported environment variables into the systemd per-user instance when the instance starts to run:

``` root
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

Read [systemd.environment-generator(7)](https://man.archlinux.org/man/systemd.environment-generator.7){.ulink} for details about the systemd environment generators. Note that if you've edited the content of `/etc/profile.d`{.filename} when a desktop environment is running, you need to sync the change into the systemd per-user instance:

``` userinput
systemctl --user unset-environment \
  $(/etc/systemd/user-environment-generators/50-profile.sh | sed 's/=.*//')
systemctl --user daemon-reload
```

And then log out and log in again to sync the change into the desktop environment. The [**systemctl --user unset-environment**]{.command} command is needed on some desktop environments which write the environment variables into the runtime environment variable pool of the per-user systemd instance because the content of that pool would override the setting from the generator.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Now ensure [Shadow-4.19.4](../postlfs/shadow.md "Shadow-4.19.4"){.xref} has been already rebuilt with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref} support first, then logout, and login again. This will ensure that the running login session is registered with [**systemd-logind**]{.command}, and that a per-user systemd instance is running for each user owning a login session. Many BLFS packages listing systemd as a dependency need the [**systemd-logind**]{.command} integration and/or a running per-user systemd instance at runtime.
:::

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If you are upgrading from a previous version of systemd and an initrd is used for system boot, you should generate a new initrd before rebooting the system.
:::
:::::

::::::: {.content lang="en"}
## Contents {#contents .sect2}

A list of the installed files, along with their short descriptions can be found at [../../../../lfs/view/systemd/chapter08/systemd.md#contents-systemd](../../../../lfs/view/systemd/chapter08/systemd.md#contents-systemd){.ulink}.

Listed below are the newly installed programs along with short descriptions.

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [homectl (optional), systemd-cryptenroll (if [cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref} is installed), and systemd-cryptsetup (if [cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref} is installed),]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#homectl}[[**homectl**]{.command}]{.term}                           is a tool to create, remove, change, or inspect a home directory managed by [**systemd-homed**]{.command}; note that it's useless for the classic UNIX users and home directories which we are using in LFS/BLFS book
  []{#systemd-cryptenroll}[[**systemd-cryptenroll**]{.command}]{.term}   Is used to enroll or remove a system from full disk encryption, as well as set and query private keys and recovery keys
  []{#systemd-cryptsetup}[[**systemd-cryptsetup**]{.command}]{.term}     Attaches or removes an encrypted block device
  []{#pam_systemd}[`pam_systemd.so`{.filename}]{.term}                   is a PAM module used to register user sessions with the [systemd]{.application} login manager, [**systemd-logind**]{.command}
  ---------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::
:::::::::::::::::::

::: navfooter
-   [Prev](sysstat.md "Sysstat-12.7.9"){accesskey="p"}

    Sysstat-12.7.9

-   [Next](udisks2.md "UDisks-2.11.1"){accesskey="n"}

    UDisks-2.11.1

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
