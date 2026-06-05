<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](libcap.md "libcap-2.78 with PAM")

    libcap-2.78 with PAM

-   [Next](liboauth.md "liboauth-1.0.3")

    liboauth-1.0.3

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Linux-PAM-1.7.2 {#linux-pam-1.7.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Linux PAM {#introduction-to-linux-pam}

The <span class="application">Linux PAM</span> package contains Pluggable Authentication Modules used by the local system administrator to control how application programs authenticate users.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/linux-pam/linux-pam/releases/download/v1.7.2/Linux-PAM-1.7.2.tar.xz">https://github.com/linux-pam/linux-pam/releases/download/v1.7.2/Linux-PAM-1.7.2.tar.xz</a>

-   Download MD5 sum: 934c26eca3fada956356a30489e86291

-   Download size: 500 KB

-   Estimated disk space required: 16 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
**Optional Documentation**

-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/Linux-PAM/Linux-PAM-1.7.2-docs.tar.xz">https://anduin.linuxfromscratch.org/BLFS/Linux-PAM/Linux-PAM-1.7.2-docs.tar.xz</a>

-   Download MD5 sum: 8b0c69931e4805ee5c297192c46d0e28

-   Download size: 500 KB
</div>

### Linux PAM Dependencies

#### Optional

<a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>, <a class="xref" href="../basicnet/rpcsvc-proto.md" title="rpcsvc-proto-1.4.4">rpcsvc-proto-1.4.4</a>, <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated), <a class="ulink" href="https://github.com/linux-audit/audit-userspace">libaudit</a>, and <a class="ulink" href="https://github.com/openSUSE/libeconf">libeconf</a>

#### Optional (To build the Documentation and Man Pages)

<a class="xref" href="../pst/docbook5.md" title="docbook-xml-5.0">docbook-xml-5.0</a>, <a class="xref" href="../pst/docbook-xsl-ns.md" title="docbook-xsl-ns-1.79.2">docbook-xsl-ns-1.79.2</a>, <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a> (for the PDF format), <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a> (for the plain text format)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<a class="xref" href="shadow.md" title="Shadow-4.19.4">Shadow-4.19.4</a> <a class="xref" href="../general/systemd.md" title="Systemd-260.2">and <span class="phrase">Systemd-260.2</a> must</span> be reinstalled and reconfigured after installing and configuring <span class="application">Linux PAM</span>.

With Linux-PAM-1.4.0 and higher, the pam_cracklib module is not installed by default. Use <a class="xref" href="libpwquality.md" title="libpwquality-1.4.5">libpwquality-1.4.5</a> to enforce strong passwords.
</div>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

For the PAM module <code class="filename">pam_loginuid.so</code> (referred by the PAM configuration file <code class="filename">system-session</code> if <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> is rebuilt with PAM support</span> later) to work, a kernel configuration parameter need to be set or the module will just do nothing:

```console
General setup --->
  [*] Auditing support                                                   [AUDIT]
```
</div>

<div class="installation" lang="en">
## Installation of Linux PAM {#installation-of-linux-pam}

If you've installed <a class="xref" href="../pst/docbook5.md" title="docbook-xml-5.0">docbook-xml-5.0</a>, <a class="xref" href="../pst/docbook-xsl-ns.md" title="docbook-xsl-ns-1.79.2">docbook-xsl-ns-1.79.2</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a> and you wish to generate the plain text format of the documentations, modify <code class="filename">meson.build</code> to use <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a> instead of W3m or Elinks that BLFS does not provide:

```bash
sed -e "s/'elinks'/'lynx'/"                       \
    -e "s/'-no-numbering', '-no-references'/      \
          '-force-html', '-nonumbers', '-stdin'/" \
    -i meson.build
```

Compile and link <span class="application">Linux PAM</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..        \
  --prefix=/usr       \
  --buildtype=release \
  -D docdir=/usr/share/doc/Linux-PAM-1.7.2 &&

ninja
```

To test the results, a suitable <code class="filename">/etc/pam.d/other</code> configuration file must exist.

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Reinstallation or Upgrade of Linux PAM

If you have a system with Linux PAM installed and working, be careful when modifying the files in <code class="filename">/etc/pam.d</code>, since your system may become totally unusable. If you want to run the tests, you do not need to create another <code class="filename">/etc/pam.d/other</code> file. The existing file can be used for the tests.
</div>

For a first-time installation, create a configuration file by issuing the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d /etc/pam.d &&

cat > /etc/pam.d/other << "EOF"
auth     required       pam_deny.so
account  required       pam_deny.so
password required       pam_deny.so
session  required       pam_deny.so
EOF
```

Now run the tests by issuing <span class="command"><strong>ninja test</strong></span>. Be sure the tests produced no errors before continuing the installation.

For a first-time installation, remove the configuration file created earlier by issuing the following command as the <code class="systemitem">root</code> user:

```bash
rm -fv /etc/pam.d/other
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
chmod -v 4755 /usr/sbin/unix_chkpwd
```

If you do not have the optional dependencies installed to build the documentation and downloaded the optional pre-built documentation, again as the <code class="systemitem">root</code> user:

```bash
tar -C / -xvf ../../Linux-PAM-1.7.2-docs.tar.xz
```
</div>

<div class="configuration" lang="en">
## Configuring Linux-PAM {#configuring-linux-pam}

<div class="sect3" lang="en">
### Configuration Files {#configuration-files}

<code class="filename">/etc/security/*</code> and <code class="filename">/etc/pam.d/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Configuration information is placed in <code class="filename">/etc/pam.d/</code>. Here is a sample file:

```console
# Begin /etc/pam.d/other

auth            required        pam_unix.so     nullok
account         required        pam_unix.so
session         required        pam_unix.so
password        required        pam_unix.so     nullok

# End /etc/pam.d/other
```

Now create some generic configuration files. As the <code class="systemitem">root</code> user:

```bash
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

If you wish to enable strong password support, install <a class="xref" href="libpwquality.md" title="libpwquality-1.4.5">libpwquality-1.4.5</a>, and follow the instructions on that page to configure the pam_pwquality PAM module with strong password support.

Next, add a restrictive <code class="filename">/etc/pam.d/other</code> configuration file. With this file, programs that are PAM aware will not run unless a configuration file specifically for that application exists.

```bash
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

The <span class="application">PAM</span> man page (<span class="command"><strong>man pam</strong></span>) provides a good starting point to learn about the several fields, and allowable entries. The Linux-PAM System Administrators' Guide at <code class="filename">/usr/share/doc/Linux-PAM-1.7.0/Linux-PAM_SAG.txt</code> is recommended for additional information.

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

You should now reinstall the <a class="xref" href="shadow.md" title="Shadow-4.19.4">Shadow-4.19.4</a> <a class="xref" href="../general/systemd.md" title="Systemd-260.2">and <span class="phrase">Systemd-260.2</a> packages.</span>
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">faillock, mkhomedir_helper, pam_namespace_helper, pam_timestamp_check, pwhistory_helper, and unix_chkpwd</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpam.so, libpamc.so and libpam_misc.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/security, /usr/lib/security, /usr/include/security and /usr/share/doc/Linux-PAM-1.7.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------
  <a id="faillock"></a><span class="command"><span class="term"><strong>faillock</strong></span></span>                           displays and modifies the authentication failure record files
  <a id="mkhomedir_helper"></a><span class="command"><span class="term"><strong>mkhomedir_helper</strong></span></span>           is a helper binary that creates home directories
  <a id="pam_namespace_helper"></a><span class="command"><span class="term"><strong>pam_namespace_helper</strong></span></span>   is a helper program used to configure a private namespace for a user session
  <a id="pwhistory_helper"></a><span class="command"><span class="term"><strong>pwhistory_helper</strong></span></span>           is a helper program that transfers password hashes from passwd or shadow to opasswd
  <a id="pam_timestamp_check"></a><span class="command"><span class="term"><strong>pam_timestamp_check</strong></span></span>     is used to check if the default timestamp is valid
  <a id="unix_chkpwd"></a><span class="command"><span class="term"><strong>unix_chkpwd</strong></span></span>                     is a helper binary that verifies the password of the current user
  <a id="libpam"></a><span class="term"><code class="filename">libpam.so</code></span>                               provides the interfaces between applications and the PAM modules
  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libcap.md "libcap-2.78 with PAM")

    libcap-2.78 with PAM

-   [Next](liboauth.md "liboauth-1.0.3")

    liboauth-1.0.3

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
