::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](libcap.md "libcap-2.78 with PAM"){accesskey="p"}

    libcap-2.78 with PAM

-   [Next](liboauth.md "liboauth-1.0.3"){accesskey="n"}

    liboauth-1.0.3

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#linux-pam}Linux-PAM-1.7.2 {#linux-pam-1.7.2 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Linux PAM {#introduction-to-linux-pam .sect2}

The [Linux PAM]{.application} package contains Pluggable Authentication Modules used by the local system administrator to control how application programs authenticate users.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/linux-pam/linux-pam/releases/download/v1.7.2/Linux-PAM-1.7.2.tar.xz](https://github.com/linux-pam/linux-pam/releases/download/v1.7.2/Linux-PAM-1.7.2.tar.xz){.ulink}

-   Download MD5 sum: 934c26eca3fada956356a30489e86291

-   Download size: 500 KB

-   Estimated disk space required: 16 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::

### Additional Downloads

::: itemizedlist
**Optional Documentation**

-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/Linux-PAM/Linux-PAM-1.7.2-docs.tar.xz](https://anduin.linuxfromscratch.org/BLFS/Linux-PAM/Linux-PAM-1.7.2-docs.tar.xz){.ulink}

-   Download MD5 sum: 8b0c69931e4805ee5c297192c46d0e28

-   Download size: 500 KB
:::

### Linux PAM Dependencies

#### Optional

[libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, [libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref}, [rpcsvc-proto-1.4.4](../basicnet/rpcsvc-proto.md "rpcsvc-proto-1.4.4"){.xref}, [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated), [libaudit](https://github.com/linux-audit/audit-userspace){.ulink}, and [libeconf](https://github.com/openSUSE/libeconf){.ulink}

#### Optional (To build the Documentation and Man Pages)

[docbook-xml-5.0](../pst/docbook5.md "docbook-xml-5.0"){.xref}, [docbook-xsl-ns-1.79.2](../pst/docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){.xref}, [fop-2.11](../pst/fop.md "fop-2.11"){.xref} (for the PDF format), [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, and [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref} (for the plain text format)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[Shadow-4.19.4](shadow.md "Shadow-4.19.4"){.xref} [and [Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} must]{.phrase} be reinstalled and reconfigured after installing and configuring [Linux PAM]{.application}.

With Linux-PAM-1.4.0 and higher, the pam_cracklib module is not installed by default. Use [libpwquality-1.4.5](libpwquality.md "libpwquality-1.4.5"){.xref} to enforce strong passwords.
:::
:::::::

::: {.kernel lang="en"}
## []{#linux-pam-kernel}Kernel Configuration {#kernel-configuration .sect2}

For the PAM module `pam_loginuid.so`{.filename} (referred by the PAM configuration file `system-session`{.filename} if [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} is rebuilt with PAM support]{.phrase} later) to work, a kernel configuration parameter need to be set or the module will just do nothing:

``` screen
General setup --->
  [*] Auditing support                                                   [AUDIT]
```
:::

:::: {.installation lang="en"}
## Installation of Linux PAM {#installation-of-linux-pam .sect2}

If you've installed [docbook-xml-5.0](../pst/docbook5.md "docbook-xml-5.0"){.xref}, [docbook-xsl-ns-1.79.2](../pst/docbook-xsl-ns.md "docbook-xsl-ns-1.79.2"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, and [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref} and you wish to generate the plain text format of the documentations, modify `meson.build`{.filename} to use [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref} instead of W3m or Elinks that BLFS does not provide:

``` userinput
sed -e "s/'elinks'/'lynx'/"                       \
    -e "s/'-no-numbering', '-no-references'/      \
          '-force-html', '-nonumbers', '-stdin'/" \
    -i meson.build
```

Compile and link [Linux PAM]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..        \
  --prefix=/usr       \
  --buildtype=release \
  -D docdir=/usr/share/doc/Linux-PAM-1.7.2 &&

ninja
```

To test the results, a suitable `/etc/pam.d/other`{.filename} configuration file must exist.

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Reinstallation or Upgrade of Linux PAM

If you have a system with Linux PAM installed and working, be careful when modifying the files in `/etc/pam.d`{.filename}, since your system may become totally unusable. If you want to run the tests, you do not need to create another `/etc/pam.d/other`{.filename} file. The existing file can be used for the tests.
:::

For a first-time installation, create a configuration file by issuing the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -d /etc/pam.d &&

cat > /etc/pam.d/other << "EOF"
auth     required       pam_deny.so
account  required       pam_deny.so
password required       pam_deny.so
session  required       pam_deny.so
EOF
```

Now run the tests by issuing [**ninja test**]{.command}. Be sure the tests produced no errors before continuing the installation.

For a first-time installation, remove the configuration file created earlier by issuing the following command as the `root`{.systemitem} user:

``` root
rm -fv /etc/pam.d/other
```

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
chmod -v 4755 /usr/sbin/unix_chkpwd
```

If you do not have the optional dependencies installed to build the documentation and downloaded the optional pre-built documentation, again as the `root`{.systemitem} user:

``` root
tar -C / -xvf ../../Linux-PAM-1.7.2-docs.tar.xz
```
::::

:::::: {.configuration lang="en"}
## Configuring Linux-PAM {#configuring-linux-pam .sect2}

::: {.sect3 lang="en"}
### []{#pam-config}Configuration Files {#configuration-files .sect3}

`/etc/security/*`{.filename} and `/etc/pam.d/*`{.filename}
:::

:::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Configuration information is placed in `/etc/pam.d/`{.filename}. Here is a sample file:

``` screen
# Begin /etc/pam.d/other

auth            required        pam_unix.so     nullok
account         required        pam_unix.so
session         required        pam_unix.so
password        required        pam_unix.so     nullok

# End /etc/pam.d/other
```

Now create some generic configuration files. As the `root`{.systemitem} user:

``` root
install -vdm755 /etc/pam.d &&
cat > /etc/pam.d/system-account << "EOF" &&
# Begin /etc/pam.d/system-account

account   required    pam_unix.so

# End /etc/pam.d/system-account
EOF

cat > /etc/pam.d/system-auth << "EOF" &&
# Begin /etc/pam.d/system-auth

auth      required    pam_unix.so

# End /etc/pam.d/system-auth
EOF

cat > /etc/pam.d/system-session << "EOF" &&
# Begin /etc/pam.d/system-session

session   required    pam_unix.so

# End /etc/pam.d/system-session
EOF

cat > /etc/pam.d/system-password << "EOF"
# Begin /etc/pam.d/system-password

# use yescrypt hash for encryption, use shadow, and try to use any
# previously defined authentication token (chosen password) set by any
# prior module.
password  required    pam_unix.so       yescrypt shadow try_first_pass

# End /etc/pam.d/system-password
EOF
```

If you wish to enable strong password support, install [libpwquality-1.4.5](libpwquality.md "libpwquality-1.4.5"){.xref}, and follow the instructions on that page to configure the pam_pwquality PAM module with strong password support.

Next, add a restrictive `/etc/pam.d/other`{.filename} configuration file. With this file, programs that are PAM aware will not run unless a configuration file specifically for that application exists.

``` root
cat > /etc/pam.d/other << "EOF"
# Begin /etc/pam.d/other

auth        required        pam_warn.so
auth        required        pam_deny.so
account     required        pam_warn.so
account     required        pam_deny.so
password    required        pam_warn.so
password    required        pam_deny.so
session     required        pam_warn.so
session     required        pam_deny.so

# End /etc/pam.d/other
EOF
```

The [PAM]{.application} man page ([**man pam**]{.command}) provides a good starting point to learn about the several fields, and allowable entries. The Linux-PAM System Administrators' Guide at `/usr/share/doc/Linux-PAM-1.7.0/Linux-PAM_SAG.txt`{.filename} is recommended for additional information.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

You should now reinstall the [Shadow-4.19.4](shadow.md "Shadow-4.19.4"){.xref} [and [Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} packages.]{.phrase}
:::
::::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [faillock, mkhomedir_helper, pam_namespace_helper, pam_timestamp_check, pwhistory_helper, and unix_chkpwd]{.segbody}
:::

::: seg
**Installed Libraries:** [libpam.so, libpamc.so and libpam_misc.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/security, /usr/lib/security, /usr/include/security and /usr/share/doc/Linux-PAM-1.7.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------
  []{#faillock}[[**faillock**]{.command}]{.term}                           displays and modifies the authentication failure record files
  []{#mkhomedir_helper}[[**mkhomedir_helper**]{.command}]{.term}           is a helper binary that creates home directories
  []{#pam_namespace_helper}[[**pam_namespace_helper**]{.command}]{.term}   is a helper program used to configure a private namespace for a user session
  []{#pwhistory_helper}[[**pwhistory_helper**]{.command}]{.term}           is a helper program that transfers password hashes from passwd or shadow to opasswd
  []{#pam_timestamp_check}[[**pam_timestamp_check**]{.command}]{.term}     is used to check if the default timestamp is valid
  []{#unix_chkpwd}[[**unix_chkpwd**]{.command}]{.term}                     is a helper binary that verifies the password of the current user
  []{#libpam}[`libpam.so`{.filename}]{.term}                               provides the interfaces between applications and the PAM modules
  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](libcap.md "libcap-2.78 with PAM"){accesskey="p"}

    libcap-2.78 with PAM

-   [Next](liboauth.md "liboauth-1.0.3"){accesskey="n"}

    liboauth-1.0.3

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
