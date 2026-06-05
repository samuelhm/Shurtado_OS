::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](vulnerabilities.md "Vulnerabilities"){accesskey="p"}

    Vulnerabilities

-   [Next](cracklib.md "CrackLib-2.10.3"){accesskey="n"}

    CrackLib-2.10.3

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#make-ca}make-ca-1.16.1 {#make-ca-1.16.1 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to make-ca {#introduction-to-make-ca .sect2}

Public Key Infrastructure (PKI) is a method to validate the authenticity of an otherwise unknown entity across untrusted networks. PKI works by establishing a chain of trust, rather than trusting each individual host or entity explicitly. In order for a certificate presented by a remote entity to be trusted, that certificate must present a complete chain of certificates that can be validated using the root certificate of a Certificate Authority (CA) that is trusted by the local machine.

Establishing trust with a CA involves validating things like company address, ownership, contact information, etc., and ensuring that the CA has followed best practices, such as undergoing periodic security audits by independent investigators and maintaining an always available certificate revocation list. This is well outside the scope of BLFS (as it is for most Linux distributions). The certificate store provided here is taken from the Mozilla Foundation, who have established very strict inclusion policies described [here](https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/policy/){.ulink}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lfs-book/make-ca/archive/v1.16.1/make-ca-1.16.1.tar.gz](https://github.com/lfs-book/make-ca/archive/v1.16.1/make-ca-1.16.1.tar.gz){.ulink}

-   Download size: 40 KB

-   Download MD5 Sum: bf9cea2d24fc5344d4951b49f275c595

-   Estimated disk space required: 164 KB (with all runtime deps)

-   Estimated build time: less than 0.1 SBU (with all runtime deps)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package ships a CA certificate for validating the identity of [https://hg-edge.mozilla.org/](https://hg-edge.mozilla.org/){.ulink}. If the trust chain of this website has been changed after the release of make-ca-1.16.1, it may fail to get the revision of `certdata.txt`{.filename} from server. Use an updated make-ca release at [the release page](https://github.com/lfs-book/make-ca/releases){.ulink} if this issue happens.
:::

### make-ca Dependencies

#### Required

[p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} (runtime, built after [libtasn1-4.21.0](../general/libtasn1.md "libtasn1-4.21.0"){.xref}, required in the following instructions to generate certificate stores from trust anchors, and each time [**make-ca**]{.command} is run)

#### Optional (runtime)

[nss-3.124](nss.md "NSS-3.124"){.xref} (to generate a shared NSSDB)
::::::

::::: {.installation lang="en"}
## Installation of make-ca and Generation of the CA-certificates stores {#installation-of-make-ca-and-generation-of-the-ca-certificates-stores .sect2}

At first, remove the *`-t`* option from the [**mktemp**]{.command} commands in the script. This option is deprecated and it can cause unwanted effects if `TMPDIR`{.envar} is set in the environment:

``` userinput
sed '/mktemp/s/-t //' -i make-ca
```

The [make-ca]{.application} script will download and process the certificates included in the `certdata.txt`{.filename} file for use as trust anchors for the [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} trust module. Additionally, it will generate system certificate stores used by BLFS applications (if the recommended and optional applications are present on the system). Any local certificates stored in `/etc/ssl/local`{.filename} will be imported to both the trust anchors and the generated certificate stores (overriding Mozilla's trust). Additionally, any modified trust values will be copied from the trust anchors to `/etc/ssl/local`{.filename} prior to any updates, preserving custom trust values that differ from Mozilla when using the [**trust**]{.command} utility from [p11-kit]{.application} to operate on the trust store.

To install the various certificate stores, first install the [make-ca]{.application} script into the correct location. As the `root`{.systemitem} user:

``` root
make install &&
install -vdm755 /etc/ssl/local
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Technically, this package is already installed at this point. But most packages listing [make-ca]{.application} as a dependency actually require the system certificate store set up by this package, rather than the [**make-ca**]{.command} program itself. So the instructions for using [**make-ca**]{.command} for setting up the system certificate store are included in this section. You should make sure the required runtime dependency for [make-ca]{.application} is satisfied now, and continue to follow the instructions.
:::

As the `root`{.systemitem} user, download the certificate source and prepare for system use with the following command:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If running the script a second time with the same version of `certdata.txt`{.filename}, for instance, to update the stores when [make-ca]{.application} is upgraded, or to add additional stores as the requisite software is installed, replace the *`-g`* switch with the *`-r`* switch in the command line. If packaging, run [**make-ca --help**]{.command} to see all available command line options.
:::

``` root
/usr/sbin/make-ca -g
```

You should periodically update the store with the above command, either manually, or via a [systemd timer. A timer is installed at `/usr/lib/systemd/system/update-pki.timer`{.filename} that, if enabled, will check for updates weekly.]{.phrase} [Execute]{.phrase} the following commands, as the `root`{.systemitem} user, to [enable the systemd timer:]{.phrase}

``` root
systemctl enable update-pki.timer
```
:::::

::: {.configuration lang="en"}
## []{#make-ca-config}Configuring make-ca {#configuring-make-ca .sect2}

For most users, no additional configuration is necessary, however, the default `certdata.txt`{.filename} file provided by make-ca is obtained from the mozilla-release branch, and is modified to provide a Mercurial revision. This will be the correct version for most systems. There are several other variants of the file available for use that might be preferred for one reason or another, including the files shipped with Mozilla products in this book. RedHat and OpenSUSE, for instance, use the version included in [nss-3.124](nss.md "NSS-3.124"){.xref}. Additional upstream downloads are available at the links included in `/etc/make-ca/make-ca.conf.dist`{.filename}. Simply copy the file to `/etc/make-ca.conf`{.filename} and edit as appropriate.

### About Trust Arguments

There are three trust types that are recognized by the [make-ca]{.application} script, SSL/TLS, S/Mime, and code signing. For [OpenSSL]{.application}, these are *`serverAuth`*, *`emailProtection`*, and *`codeSigning`* respectively. If one of the three trust arguments is omitted, the certificate is neither trusted, nor rejected for that role. Clients that use [OpenSSL]{.application} or [NSS]{.application} encountering this certificate will present a warning to the user. Clients using [GnuTLS]{.application} without [p11-kit]{.application} support are not aware of trusted certificates. To include this CA into the `ca-bundle.crt`{.filename}, `email-ca-bundle.crt`{.filename}, or `objsign-ca-bundle.crt`{.filename} files (the [GnuTLS]{.application} legacy bundles), it must have the appropriate trust arguments.

### Adding Additional CA Certificates

The `/etc/ssl/local`{.filename} directory is available to add additional CA certificates to the system trust store. This directory is also used to store certificates that were added to or modified in the system trust store by [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} so that trust values are maintained across upgrades. Files in this directory must be in the [OpenSSL]{.application} trusted certificate format. Certificates imported using the [**trust**]{.command} utility from [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} will utilize the x509 Extended Key Usage values to assign default trust values for the system anchors.

If you need to override trust values, or otherwise need to create an [OpenSSL]{.application} trusted certificate manually from a regular PEM encoded file, you need to add trust arguments to the [**openssl**]{.command} command, and create a new certificate. For example, using the [CAcert](http://www.cacert.org/){.ulink} roots, if you want to trust both for all three roles, the following commands will create appropriate OpenSSL trusted certificates (run as the `root`{.systemitem} user after [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref} is installed):

``` userinput
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

Occasionally, there may be instances where you don't agree with Mozilla's inclusion of a particular certificate authority. If you'd like to override the default trust of a particular CA, simply create a copy of the existing certificate in `/etc/ssl/local`{.filename} with different trust arguments. For example, if you'd like to distrust the "Makebelieve_CA_Root" file, run the following commands:

``` userinput
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
:::

:::: {.configuration lang="en"}
## []{#make-ca-python}Using make-ca with Python3 {#using-make-ca-with-python3 .sect2}

When [Python3]{.application} was installed in LFS, it included the [pip3]{.application} module with vendored certificates from the [Certifi]{.application} module. That was necessary, but it means that whenever [**pip3**]{.command} is used it can reference those certificates, primarily when creating a virtual environment or when installing a module with all its wheel dependencies in one go.

It is generally considered that the System Administrator should be in charge of which certificates are available. Now that [make-ca-1.16.1](make-ca.md "make-ca-1.16.1"){.xref} and [p11-kit-0.26.2](p11-kit.md "p11-kit-0.26.2"){.xref} have been installed and [make-ca]{.application} has been configured, it is possible to make [**pip3**]{.command} use the system certificates.

The vendored certificates installed in LFS are a snapshot from when the pulled-in version of [Certifi]{.application} was created. If you regularly update the system certificates, the vendored version will become out of date.

To use the system certificates in [Python3]{.application}, you should set `_PIP_STANDALONE_CERT`{.envar} to point to them, e.g for the [bash]{.application} shell:

``` userinput
export _PIP_STANDALONE_CERT=/etc/pki/tls/certs/ca-bundle.crt
```

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If you have created virtual environments, for example when testing modules, and those include the [Requests]{.application} and [Certifi]{.application} modules in `~/.local/lib/python3.14/`{.filename}, then those local modules will be used instead of the system certificates unless you remove the local modules.
:::

To use the system certificates in [Python3]{.application} with the BLFS profiles, add the following variable to your system or personal profiles:

``` root
mkdir -pv /etc/profile.d &&
cat > /etc/profile.d/pythoncerts.sh << "EOF"
# Begin /etc/profile.d/pythoncerts.sh

export _PIP_STANDALONE_CERT=/etc/pki/tls/certs/ca-bundle.crt

# End /etc/profile.d/pythoncerts.sh
EOF
```
::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed Programs:** [make-ca]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/ssl/{certs,local} and /etc/pki/{nssdb,anchors,tls/{certs,java}}]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
  []{#make-ca-bin}[[**make-ca**]{.command}]{.term}   is a shell script that adapts a current version of `certdata.txt`{.filename}, and prepares it for use as the system trust store
  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](vulnerabilities.md "Vulnerabilities"){accesskey="p"}

    Vulnerabilities

-   [Next](cracklib.md "CrackLib-2.10.3"){accesskey="n"}

    CrackLib-2.10.3

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
