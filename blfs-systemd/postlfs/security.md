<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Part II. Post LFS Configuration and Extra Software

-   [Prev](logon.md "Customizing your Logon with /etc/issue")

    Customizing your Logon with /etc/issue

-   [Next](vulnerabilities.md "Vulnerabilities")

    Vulnerabilities

-   [Up](postlfs.md "Part II. Post LFS Configuration and Extra Software")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Security {#security}

<div class="chapter" lang="en">
Security takes many forms in a computing environment. After some initial discussion, this chapter gives examples of three different types of security: access, prevention and detection.

Access for users is usually handled by <span class="command"><strong>login</strong></span> or an application designed to handle the login function. In this chapter, we show how to enhance <span class="command"><strong>login</strong></span> by setting policies with <span class="application">PAM</span> modules. Access via networks can also be secured by policies set by <span class="application">iptables</span>, commonly referred to as a firewall. The Network Security Services (NSS) and Netscape Portable Runtime (NSPR) libraries can be installed and shared among the many applications requiring them. For applications that don't offer the best security, you can use the <span class="application">Stunnel</span> package to wrap an application daemon inside an SSL tunnel.

Prevention of breaches, like a trojan, are assisted by applications like <span class="application">GnuPG</span>, specifically the ability to confirm signed packages, which recognizes modifications of the tarball after the packager creates it.

Finally, we touch on detection with a package that stores "signatures" of critical files (defined by the administrator) and then regenerates those "signatures" and compares for files that have been changed.

<div class="toc">
### Table of Contents

-   [Vulnerabilities](vulnerabilities.md)
-   [make-ca-1.16.1](make-ca.md)
-   [CrackLib-2.10.3](cracklib.md)
-   [cryptsetup-2.8.6](cryptsetup.md)
-   [Cyrus SASL-2.1.28](cyrus-sasl.md)
-   [GnuPG-2.5.20](gnupg.md)
-   [GnuTLS-3.8.13](gnutls.md)
-   [gpgme-2.1.0](gpgme.md)
-   [gpgmepp-2.1.0](gpgmepp.md)
-   [iptables-1.8.13](iptables.md)
-   [Setting Up a Network Firewall](firewall.md)
-   [libcap-2.78 with PAM](libcap.md)
-   [Linux-PAM-1.7.2](linux-pam.md)
-   [liboauth-1.0.3](liboauth.md)
-   [libpwquality-1.4.5](libpwquality.md)
-   [MIT Kerberos V5-1.22.2](mitkrb.md)
-   [Nettle-4.0](nettle.md)
-   [NSS-3.124](nss.md)
-   [OpenSSH-10.3p1](openssh.md)
-   [p11-kit-0.26.2](p11-kit.md)
-   [Polkit-127](polkit.md)
-   [polkit-gnome-0.105](polkit-gnome.md)
-   [Shadow-4.19.4](shadow.md)
-   [ssh-askpass-10.3p1](ssh-askpass.md)
-   [stunnel-5.78](stunnel.md)
-   [Sudo-1.9.17p2](sudo.md)
-   [Tripwire-2.4.3.7](tripwire.md)
</div>
</div>

<div class="navfooter">
-   [Prev](logon.md "Customizing your Logon with /etc/issue")

    Customizing your Logon with /etc/issue

-   [Next](vulnerabilities.md "Vulnerabilities")

    Vulnerabilities

-   [Up](postlfs.md "Part II. Post LFS Configuration and Extra Software")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
