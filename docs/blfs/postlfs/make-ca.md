<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](vulnerabilities.md "Vulnerabilities")

    Vulnerabilities

-   [Next](cracklib.md "CrackLib-2.10.3")

    CrackLib-2.10.3

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# make-ca-1.16.1 {#make-ca-1.16.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to make-ca {#introduction-to-make-ca}

Public Key Infrastructure (PKI) is a method to validate the authenticity of an otherwise unknown entity across untrusted networks. PKI works by establishing a chain of trust, rather than trusting each individual host or entity explicitly. In order for a certificate presented by a remote entity to be trusted, that certificate must present a complete chain of certificates that can be validated using the root certificate of a Certificate Authority (CA) that is trusted by the local machine.

Establishing trust with a CA involves validating things like company address, ownership, contact information, etc., and ensuring that the CA has followed best practices, such as undergoing periodic security audits by independent investigators and maintaining an always available certificate revocation list. This is well outside the scope of BLFS (as it is for most Linux distributions). The certificate store provided here is taken from the Mozilla Foundation, who have established very strict inclusion policies described <a class="ulink" href="https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/">here</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lfs-book/make-ca/archive/v1.16.1/make-ca-1.16.1.tar.gz">https://github.com/lfs-book/make-ca/archive/v1.16.1/make-ca-1.16.1.tar.gz</a>

-   Download size: 40 KB

-   Download MD5 Sum: bf9cea2d24fc5344d4951b49f275c595

-   Estimated disk space required: 164 KB (with all runtime deps)

-   Estimated build time: less than 0.1 SBU (with all runtime deps)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package ships a CA certificate for validating the identity of <a class="ulink" href="https://hg-edge.mozilla.org/">https://hg-edge.mozilla.org/</a>. If the trust chain of this website has been changed after the release of make-ca-1.16.1, it may fail to get the revision of <code class="filename">certdata.txt</code> from server. Use an updated make-ca release at <a class="ulink" href="https://github.com/lfs-book/make-ca/releases">the release page</a> if this issue happens.
</div>

### make-ca Dependencies

#### Required

<a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> (runtime, built after <a class="xref" href="../general/libtasn1.md" title="libtasn1-4.21.0">libtasn1-4.21.0</a>, required in the following instructions to generate certificate stores from trust anchors, and each time <span class="command"><strong>make-ca</strong></span> is run)

#### Optional (runtime)

<a class="xref" href="nss.md" title="NSS-3.124">nss-3.124</a> (to generate a shared NSSDB)
</div>

<div class="installation" lang="en">
## Installation of make-ca and Generation of the CA-certificates stores {#installation-of-make-ca-and-generation-of-the-ca-certificates-stores}

At first, remove the *`-t`* option from the <span class="command"><strong>mktemp</strong></span> commands in the script. This option is deprecated and it can cause unwanted effects if <code class="envar">TMPDIR</code> is set in the environment:

```bash
sed '/mktemp/s/-t //' -i make-ca
```

The <span class="application">make-ca</span> script will download and process the certificates included in the <code class="filename">certdata.txt</code> file for use as trust anchors for the <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> trust module. Additionally, it will generate system certificate stores used by BLFS applications (if the recommended and optional applications are present on the system). Any local certificates stored in <code class="filename">/etc/ssl/local</code> will be imported to both the trust anchors and the generated certificate stores (overriding Mozilla's trust). Additionally, any modified trust values will be copied from the trust anchors to <code class="filename">/etc/ssl/local</code> prior to any updates, preserving custom trust values that differ from Mozilla when using the <span class="command"><strong>trust</strong></span> utility from <span class="application">p11-kit</span> to operate on the trust store.

To install the various certificate stores, first install the <span class="application">make-ca</span> script into the correct location. As the <code class="systemitem">root</code> user:

```bash
make install &&
install -vdm755 /etc/ssl/local
```

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

Technically, this package is already installed at this point. But most packages listing <span class="application">make-ca</span> as a dependency actually require the system certificate store set up by this package, rather than the <span class="command"><strong>make-ca</strong></span> program itself. So the instructions for using <span class="command"><strong>make-ca</strong></span> for setting up the system certificate store are included in this section. You should make sure the required runtime dependency for <span class="application">make-ca</span> is satisfied now, and continue to follow the instructions.
</div>

As the <code class="systemitem">root</code> user, download the certificate source and prepare for system use with the following command:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If running the script a second time with the same version of <code class="filename">certdata.txt</code>, for instance, to update the stores when <span class="application">make-ca</span> is upgraded, or to add additional stores as the requisite software is installed, replace the *`-g`* switch with the *`-r`* switch in the command line. If packaging, run <span class="command"><strong>make-ca --help</strong></span> to see all available command line options.
</div>

```bash
/usr/sbin/make-ca -g
```

You should periodically update the store with the above command, either manually, or via a <span class="phrase">systemd timer. A timer is installed at <code class="filename">/usr/lib/systemd/system/update-pki.timer</code> that, if enabled, will check for updates weekly.</span> <span class="phrase">Execute</span> the following commands, as the <code class="systemitem">root</code> user, to <span class="phrase">enable the systemd timer:</span>

```bash
systemctl enable update-pki.timer
```
</div>

<div class="configuration" lang="en">
## Configuring make-ca {#configuring-make-ca}

For most users, no additional configuration is necessary, however, the default <code class="filename">certdata.txt</code> file provided by make-ca is obtained from the mozilla-release branch, and is modified to provide a Mercurial revision. This will be the correct version for most systems. There are several other variants of the file available for use that might be preferred for one reason or another, including the files shipped with Mozilla products in this book. RedHat and OpenSUSE, for instance, use the version included in <a class="xref" href="nss.md" title="NSS-3.124">nss-3.124</a>. Additional upstream downloads are available at the links included in <code class="filename">/etc/make-ca/make-ca.conf.dist</code>. Simply copy the file to <code class="filename">/etc/make-ca.conf</code> and edit as appropriate.

### About Trust Arguments

There are three trust types that are recognized by the <span class="application">make-ca</span> script, SSL/TLS, S/Mime, and code signing. For <span class="application">OpenSSL</span>, these are *`serverAuth`*, *`emailProtection`*, and *`codeSigning`* respectively. If one of the three trust arguments is omitted, the certificate is neither trusted, nor rejected for that role. Clients that use <span class="application">OpenSSL</span> or <span class="application">NSS</span> encountering this certificate will present a warning to the user. Clients using <span class="application">GnuTLS</span> without <span class="application">p11-kit</span> support are not aware of trusted certificates. To include this CA into the <code class="filename">ca-bundle.crt</code>, <code class="filename">email-ca-bundle.crt</code>, or <code class="filename">objsign-ca-bundle.crt</code> files (the <span class="application">GnuTLS</span> legacy bundles), it must have the appropriate trust arguments.

### Adding Additional CA Certificates

The <code class="filename">/etc/ssl/local</code> directory is available to add additional CA certificates to the system trust store. This directory is also used to store certificates that were added to or modified in the system trust store by <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> so that trust values are maintained across upgrades. Files in this directory must be in the <span class="application">OpenSSL</span> trusted certificate format. Certificates imported using the <span class="command"><strong>trust</strong></span> utility from <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> will utilize the x509 Extended Key Usage values to assign default trust values for the system anchors.

If you need to override trust values, or otherwise need to create an <span class="application">OpenSSL</span> trusted certificate manually from a regular PEM encoded file, you need to add trust arguments to the <span class="command"><strong>openssl</strong></span> command, and create a new certificate. For example, using the <a class="ulink" href="http://www.cacert.org/">CAcert</a> roots, if you want to trust both for all three roles, the following commands will create appropriate OpenSSL trusted certificates (run as the <code class="systemitem">root</code> user after <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a> is installed):

```bash
wget http://www.cacert.org/certs/root.crt &&
wget http://www.cacert.org/certs/class3.crt &&
openssl x509 -in root.crt -text -fingerprint -setalias "CAcert Class 1 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_1_root.pem &&
openssl x509 -in class3.crt -text -fingerprint -setalias "CAcert Class 3 root" \
        -addtrust serverAuth -addtrust emailProtection -addtrust codeSigning \
        > /etc/ssl/local/CAcert_Class_3_root.pem &&
/usr/sbin/make-ca -r
```

### Overriding Mozilla Trust

Occasionally, there may be instances where you don't agree with Mozilla's inclusion of a particular certificate authority. If you'd like to override the default trust of a particular CA, simply create a copy of the existing certificate in <code class="filename">/etc/ssl/local</code> with different trust arguments. For example, if you'd like to distrust the "Makebelieve_CA_Root" file, run the following commands:

```bash
openssl x509 -in /etc/ssl/certs/Makebelieve_CA_Root.pem \
             -text \
             -fingerprint \
             -setalias "Disabled Makebelieve CA Root" \
             -addreject serverAuth \
             -addreject emailProtection \
             -addreject codeSigning \
       > /etc/ssl/local/Disabled_Makebelieve_CA_Root.pem &&
/usr/sbin/make-ca -r
```
</div>

<div class="configuration" lang="en">
## Using make-ca with Python3 {#using-make-ca-with-python3}

When <span class="application">Python3</span> was installed in LFS, it included the <span class="application">pip3</span> module with vendored certificates from the <span class="application">Certifi</span> module. That was necessary, but it means that whenever <span class="command"><strong>pip3</strong></span> is used it can reference those certificates, primarily when creating a virtual environment or when installing a module with all its wheel dependencies in one go.

It is generally considered that the System Administrator should be in charge of which certificates are available. Now that <a class="xref" href="make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> and <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> have been installed and <span class="application">make-ca</span> has been configured, it is possible to make <span class="command"><strong>pip3</strong></span> use the system certificates.

The vendored certificates installed in LFS are a snapshot from when the pulled-in version of <span class="application">Certifi</span> was created. If you regularly update the system certificates, the vendored version will become out of date.

To use the system certificates in <span class="application">Python3</span>, you should set <code class="envar">_PIP_STANDALONE_CERT</code> to point to them, e.g for the <span class="application">bash</span> shell:

```bash
export _PIP_STANDALONE_CERT=/etc/pki/tls/certs/ca-bundle.crt
```

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If you have created virtual environments, for example when testing modules, and those include the <span class="application">Requests</span> and <span class="application">Certifi</span> modules in <code class="filename">~/.local/lib/python3.14/</code>, then those local modules will be used instead of the system certificates unless you remove the local modules.
</div>

To use the system certificates in <span class="application">Python3</span> with the BLFS profiles, add the following variable to your system or personal profiles:

```bash
mkdir -pv /etc/profile.d &&
cat > /etc/profile.d/pythoncerts.sh << "EOF"
# Begin /etc/profile.d/pythoncerts.sh

export _PIP_STANDALONE_CERT=/etc/pki/tls/certs/ca-bundle.crt

# End /etc/profile.d/pythoncerts.sh
EOF
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">make-ca</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/ssl/{certs,local} and /etc/pki/{nssdb,anchors,tls/{certs,java}}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  <a id="make-ca-bin"></a><span class="command"><span class="term"><strong>make-ca</strong></span></span>   is a shell script that adapts a current version of <code class="filename">certdata.txt</code>, and prepares it for use as the system trust store
  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](vulnerabilities.md "Vulnerabilities")

    Vulnerabilities

-   [Next](cracklib.md "CrackLib-2.10.3")

    CrackLib-2.10.3

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
