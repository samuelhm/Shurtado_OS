<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](libpwquality.md "libpwquality-1.4.5")

    libpwquality-1.4.5

-   [Next](nettle.md "Nettle-4.0")

    Nettle-4.0

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# MIT Kerberos V5-1.22.2 {#mit-kerberos-v5-1.22.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to MIT Kerberos V5 {#introduction-to-mit-kerberos-v5}

<span class="application">MIT Kerberos V5</span> is a free implementation of Kerberos 5. Kerberos is a network authentication protocol. It centralizes the authentication database and uses kerberized applications to work with servers or services that support Kerberos allowing single logins and encrypted communication over internal networks or the Internet.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://kerberos.org/dist/krb5/1.22/krb5-1.22.2.tar.gz">https://kerberos.org/dist/krb5/1.22/krb5-1.22.2.tar.gz</a>

-   Download MD5 sum: 42472b11771d074329e0cc776d2eb5fd

-   Download size: 8.4 MB

-   Estimated disk space required: 149 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; add 3.8 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-upstream_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-upstream_fix-1.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-security_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-security_fix-1.patch</a>

-   Required patch for OpenSSL-4: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-openssl_4_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-openssl_4_fixes-1.patch</a>
</div>

### MIT Kerberos V5 Dependencies

#### Optional

<a class="xref" href="../basicnet/bind-utils.md" title="BIND Utilities-9.20.20">BIND Utilities-9.20.20</a>, <a class="xref" href="cracklib.md" title="CrackLib-2.10.3">CrackLib-2.10.3</a> (<code class="filename">/usr/share/dict/words</code> referred by some tests), <a class="xref" href="../general/keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (used during the test suite), <a class="xref" href="../general/yasm.md" title="yasm-1.3.0">yasm-1.3.0</a>, <a class="ulink" href="https://thrysoee.dk/editline/">libedit</a>, <a class="ulink" href="https://cmocka.org/">cmocka</a>, <a class="ulink" href="https://pypi.org/project/kdcproxy/">kdcproxy</a>, <a class="ulink" href="https://pypi.org/project/pyrad/">pyrad</a>, and <a class="ulink" href="https://cwrap.org/resolv_wrapper.md">resolv_wrapper</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Some sort of time synchronization facility on your system (like <span class="phrase">systemd-timesyncd</span>) is required since Kerberos won't authenticate if there is a time difference between a kerberized client and the KDC server.
</div>
</div>

<div class="installation" lang="en">
## Installation of MIT Kerberos V5 {#installation-of-mit-kerberos-v5}

First, fix an issue identified by glibc-2.43:

```bash
patch -Np1 -i ../mitkrb-1.22.2-upstream_fix-1.patch
```

Next, fix two security issues identified upstream:

```bash
patch -Np1 -i ../mitkrb-1.22.2-security_fix-1.patch
```

Next, fix building with OpenSSL-4:

```bash
patch -Np1 -i ../mitkrb-1.22.2-openssl_4_fixes-1.patch
```

Build <span class="application">MIT Kerberos V5</span> by running the following commands:

```bash
cd src &&
sed -i -e '/eq 0/{N;s/12 //}' plugins/kdb/db2/libdb2/test/run.test &&

./configure --prefix=/usr            \
            --sysconfdir=/etc        \
            --localstatedir=/var/lib \
            --runstatedir=/run       \
            --with-system-et         \
            --with-system-ss         \
            --with-system-verto=no   \
            --enable-dns-for-realm   \
            --disable-rpath          &&
make
```

To test the build, issue: <span class="command"><strong>make -j1 -k check</strong></span>. Some tests may fail with the latest version of dejagnu and glibc. Some tests may hang for a long time and fail if the system is not connected to a network. One test, <code class="filename">t_kadm5srv</code>, is known to fail. If <a class="xref" href="../general/keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a> is installed but <a class="xref" href="../general/keyutils.md#keyutils-test-kernel" title="Kernel Configuration">Keyutils Kernel Configuration</a> is not satisfied, some tests will fail complaining <code class="computeroutput">keyctl failed with code 1</code>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
cp -vfr ../doc -T /usr/share/doc/krb5-1.22.2
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

The <span class="command"><strong>sed</strong></span> command removes a test that is known to fail.

*`--localstatedir=/var/lib`*: This option is used so that the Kerberos variable runtime data is located in <code class="filename">/var/lib</code> instead of <code class="filename">/usr/var</code>.

*`--runstatedir=/run`*: This option is used so that the Kerberos runtime state information is located in <code class="filename">/run</code> instead of the deprecated <code class="filename">/var/run</code>.

*`--with-system-et`*: This switch causes the build to use the system-installed versions of the error-table support software.

*`--with-system-ss`*: This switch causes the build to use the system-installed versions of the subsystem command-line interface software.

*`--with-system-verto=no`*: This switch fixes a bug in the package where the build system does not recognize its own verto library if this package has been installed before. This is not a problem if you are reinstalling the same version, but can be problematic if you are updating because the old version of the verto library will be used instead of installing the newer version.

*`--enable-dns-for-realm`*: This switch allows realms to be resolved using the DNS server.

*`--disable-rpath`*: This switch prevents hard coding library search paths (rpath) into the binary executable files and shared libraries. This package does not need rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

<code class="option">--with-ldap</code>: Use this switch if you want to compile the <span class="application">OpenLDAP</span> database backend module.
</div>

<div class="configuration" lang="en">
## Configuring MIT Kerberos V5 {#configuring-mit-kerberos-v5}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/krb5.conf</code> and <code class="filename">/var/lib/krb5kdc/kdc.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<div class="sect4">
<div class="titlepage">


##### Kerberos Configuration {#kerberos-configuration}


</div>

<div class="admon tip">
![\[Tip\]](../images/tip.png)

### Tip

You should consider installing some sort of password checking dictionary so that you can configure the installation to only accept strong passwords. A suitable dictionary to use is installed in the <a class="xref" href="cracklib.md" title="CrackLib-2.10.3">CrackLib-2.10.3</a> instructions. Note that only one file can be used, but you can concatenate many files into one. The configuration file shown below assumes you have installed a dictionary to <code class="filename">/usr/share/dict/words</code>.
</div>

Create the Kerberos configuration file with the following commands issued by the <code class="systemitem">root</code> user:

```bash
cat > /etc/krb5.conf << "EOF"
# Begin /etc/krb5.conf

[libdefaults]
    default_realm = <EXAMPLE.ORG>
    encrypt = true

[realms]
    <EXAMPLE.ORG> = {
        kdc = <belgarath.example.org>
        admin_server = <belgarath.example.org>
        dict_file = /usr/share/dict/words
    }

[domain_realm]
    .<example.org> = <EXAMPLE.ORG>

[logging]
    kdc = SYSLOG:INFO:AUTH
    admin_server = SYSLOG:INFO:AUTH
    default = SYSLOG:DEBUG:DAEMON

# End /etc/krb5.conf
EOF
```

You will need to substitute your domain and proper hostname for the occurrences of the *`<belgarath>`* and *`<example.org>`* names.

<code class="option">default_realm</code> should be the name of your domain changed to ALL CAPS. This isn't required, but both <span class="application">Heimdal</span> and MIT recommend it.

<code class="option">encrypt = true</code> provides encryption of all traffic between kerberized clients and servers. It's not necessary and can be left off. If you leave it off, you can encrypt all traffic from the client to the server using a switch on the client program instead.

The <code class="option">[realms]</code> parameters tell the client programs where to look for the KDC authentication services.

The <code class="option">[domain_realm]</code> section maps a domain to a realm.

Next, create the KDC database:

```bash
kdb5_util create -r <EXAMPLE.ORG> -s
```

Now, you should populate the database with principals (users). For now, just use your regular login name or <code class="systemitem">root</code>.

```bash
kadmin.local
kadmin.local: add_policy dict-only
kadmin.local: addprinc -policy dict-only <loginname>
```

The KDC server and any machine running kerberized server daemons must have a host key installed:

```bash
kadmin.local: addprinc -randkey host/<belgarath.example.org>
```

After choosing the defaults when prompted, you will have to export the data to a keytab file:

```bash
kadmin.local: ktadd host/<belgarath.example.org>
```

This should have created a file in <code class="filename">/etc</code> named <code class="filename">krb5.keytab</code> (Kerberos 5). This file should have 600 (<code class="systemitem">root</code> rw only) permissions. Keeping the keytab files from public access is crucial to the overall security of the Kerberos installation.

Exit the <span class="command"><strong>kadmin</strong></span> program (use <span class="command"><strong>quit</strong></span> or <span class="command"><strong>exit</strong></span>) and return back to the shell prompt. Start the KDC daemon manually, just to test out the installation:

```bash
/usr/sbin/krb5kdc
```

Attempt to get a ticket with the following command:

```bash
kinit <loginname>
```

You will be prompted for the password you created. After you get your ticket, you can list it with the following command:

```bash
klist
```

Information about the ticket should be displayed on the screen.

To test the functionality of the keytab file, issue the following command as the <code class="systemitem">root</code> user:

```bash
ktutil
ktutil: rkt /etc/krb5.keytab
ktutil: l
```

This should dump a list of the host principal, along with the encryption methods used to access the principal.

Create an empty ACL file that can be modified later:

```bash
touch /var/lib/krb5kdc/kadm5.acl
```

At this point, if everything has been successful so far, you can feel fairly confident in the installation and configuration of the package.
</div>

<div class="sect4">
<div class="titlepage">


##### Additional Information {#additional-information}


</div>

For additional information consult the <a class="ulink" href="https://web.mit.edu/kerberos/www/krb5-1.22/#documentation">documentation for krb5-1.22.2</a> on which the above instructions are based.
</div>
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

If you want to start <span class="application">Kerberos</span> services at boot, install the <code class="filename">krb5-krdc.service</code>, <code class="filename">krb5-kpropd</code>, and <code class="filename">krb5-kadmind.service</code> units included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package using the following command:

```bash
make install-krb5
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gss-client, gss-server, k5srvutil, kadmin, kadmin.local, kadmind, kdb5_ldap_util (optional), kdb5_util, kdestroy, kinit, klist, kpasswd, kprop, kpropd, kproplog, krb5-config, krb5-send-pr, krb5kdc, ksu, kswitch, ktutil, kvno, sclient, sim_client, sim_server, sserver, uuclient, and uuserver</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgssapi_krb5.so, libgssrpc.so, libk5crypto.so, libkadm5clnt_mit.so, libkadm5clnt.so, libkadm5srv_mit.so, libkadm5srv.so, libkdb_ldap.so (optional), libkdb5.so, libkrad.so, libkrb5.so, libkrb5support.so, libverto.so, and some plugins under the /usr/lib/krb5 tree</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/{gssapi,gssrpc,kadm5,krb5}, /usr/lib/krb5, /usr/share/{doc/krb5-1.22.2,examples/krb5}, /var/lib/krb5kdc, and /run/krb5kdc</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gss-client"></a><span class="command"><span class="term"><strong>gss-client</strong></span></span>                      is a GSSAPI test client
  <a id="gss-server"></a><span class="command"><span class="term"><strong>gss-server</strong></span></span>                      is a GSSAPI test server
  <a id="k5srvutil"></a><span class="command"><span class="term"><strong>k5srvutil</strong></span></span>                        is a host keytable manipulation utility
  <a id="kadmin"></a><span class="command"><span class="term"><strong>kadmin</strong></span></span>                              is a utility used to make modifications to the Kerberos database
  <a id="kadmin.local"></a><span class="command"><span class="term"><strong>kadmin.local</strong></span></span>                  is a utility similar to <span class="command"><strong>kadmin</strong></span>, but if the database is db2, the local client <span class="command"><strong>kadmin.local</strong></span>, is intended to run directly on the master KDC without Kerberos authentication
  <a id="kadmind"></a><span class="command"><span class="term"><strong>kadmind</strong></span></span>                            is a server for administrative access to a Kerberos database
  <a id="kdb5_ldap_util"></a><span class="command"><span class="term"><strong>kdb5_ldap_util (optional)</strong></span></span>   allows an administrator to manage realms, Kerberos services and ticket policies
  <a id="kdb5_util"></a><span class="command"><span class="term"><strong>kdb5_util</strong></span></span>                        is the KDC database utility
  <a id="kdestroy"></a><span class="command"><span class="term"><strong>kdestroy</strong></span></span>                          removes the current set of tickets
  <a id="kinit"></a><span class="command"><span class="term"><strong>kinit</strong></span></span>                                is used to authenticate to the Kerberos server as a principal and acquire a ticket granting ticket that can later be used to obtain tickets for other services
  <a id="klist"></a><span class="command"><span class="term"><strong>klist</strong></span></span>                                reads and displays the current tickets in the credential cache
  <a id="kpasswd"></a><span class="command"><span class="term"><strong>kpasswd</strong></span></span>                            is a program for changing Kerberos 5 passwords
  <a id="kprop"></a><span class="command"><span class="term"><strong>kprop</strong></span></span>                                takes a principal database in a specified format and converts it into a stream of database records
  <a id="kpropd"></a><span class="command"><span class="term"><strong>kpropd</strong></span></span>                              receives a database sent by <span class="command"><strong>kprop</strong></span> and writes it as a local database
  <a id="kproplog"></a><span class="command"><span class="term"><strong>kproplog</strong></span></span>                          displays the contents of the KDC database update log to standard output
  <a id="krb5-config-prog2"></a><span class="command"><span class="term"><strong>krb5-config</strong></span></span>              provides information about how to link programs against the <span class="application">Kerberos 5</span> libraries
  <a id="krb5kdc"></a><span class="command"><span class="term"><strong>krb5kdc</strong></span></span>                            is the <span class="application">Kerberos 5</span> server
  <a id="krb5-send-pr"></a><span class="command"><span class="term"><strong>krb5-send-pr</strong></span></span>                  sends a problem report (PR) to a central support site
  <a id="ksu"></a><span class="command"><span class="term"><strong>ksu</strong></span></span>                                    is the super user program using the Kerberos protocol. It requires a properly configured <code class="filename">/etc/shells</code> and <code class="filename">~/.k5login</code> containing principals authorized to become super users
  <a id="kswitch"></a><span class="command"><span class="term"><strong>kswitch</strong></span></span>                            makes the specified credential cache the primary cache for the collection, if a cache collection is available
  <a id="ktutil"></a><span class="command"><span class="term"><strong>ktutil</strong></span></span>                              is a program for managing Kerberos keytabs
  <a id="kvno"></a><span class="command"><span class="term"><strong>kvno</strong></span></span>                                  prints keyversion numbers of Kerberos principals
  <a id="sclient"></a><span class="command"><span class="term"><strong>sclient</strong></span></span>                            is used to contact a sample server and authenticate to it using Kerberos 5 tickets, and then display the server's response
  <a id="sim_client"></a><span class="command"><span class="term"><strong>sim_client</strong></span></span>                      is a simple UDP-based sample client program for demonstration purposes
  <a id="sim_server"></a><span class="command"><span class="term"><strong>sim_server</strong></span></span>                      is a simple UDP-based server application for demonstration purposes
  <a id="sserver"></a><span class="command"><span class="term"><strong>sserver</strong></span></span>                            is a sample Kerberos 5 server
  <a id="uuclient"></a><span class="command"><span class="term"><strong>uuclient</strong></span></span>                          is another sample client
  <a id="uuserver"></a><span class="command"><span class="term"><strong>uuserver</strong></span></span>                          is another sample server
  <a id="libgssapi_krb5"></a><span class="term"><code class="filename">libgssapi_krb5.so</code></span>              contains the Generic Security Service Application Programming Interface (GSSAPI) functions which provide security services to callers in a generic fashion, supportable with a range of underlying mechanisms and technologies and hence allowing source-level portability of applications to different environments
  <a id="libkadm5clnt"></a><span class="term"><code class="filename">libkadm5clnt.so</code></span>                  contains the administrative authentication and password checking functions required by Kerberos 5 client-side programs
  <a id="libkadm5srv"></a><span class="term"><code class="filename">libkadm5srv.so</code></span>                    contains the administrative authentication and password checking functions required by Kerberos 5 servers
  <a id="libkdb5"></a><span class="term"><code class="filename">libkdb5.so</code></span>                            is a Kerberos 5 authentication/authorization database access library
  <a id="libkrad"></a><span class="term"><code class="filename">libkrad.so</code></span>                            contains the internal support library for RADIUS functionality
  <a id="libkrb5"></a><span class="term"><code class="filename">libkrb5.so</code></span>                            is an all-purpose <span class="application">Kerberos 5</span> library
  ----------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libpwquality.md "libpwquality-1.4.5")

    libpwquality-1.4.5

-   [Next](nettle.md "Nettle-4.0")

    Nettle-4.0

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
