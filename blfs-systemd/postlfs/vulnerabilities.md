::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](security.md "Security"){accesskey="p"}

    Security

-   [Next](make-ca.md "make-ca-1.16.1"){accesskey="n"}

    make-ca-1.16.1

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#vulnerabilities}Vulnerabilities {#vulnerabilities .sect1}

:::: {.sect1 lang="en"}
::: {.package lang="en"}
## About vulnerabilities {#about-vulnerabilities .sect2}

All software has bugs. Sometimes, a bug can be exploited, for example to allow users to gain enhanced privileges (perhaps gaining a root shell, or simply accessing or deleting other user's files), or to allow a remote site to crash an application (denial of service), or for theft of data. These bugs are labelled as vulnerabilities.

The main place where vulnerabilities get logged is [cve.mitre.org](https://cve.mitre.org){.ulink}. Unfortunately, many vulnerability numbers (CVE-yyyy-nnnn) are initially only labelled as "reserved" when distributions start issuing fixes. Also, some vulnerabilities apply to particular combinations of [**configure**]{.command} options, or only apply to old versions of packages which have long since been updated in BLFS.

BLFS differs from distributions—there is no BLFS security team, and the editors only become aware of vulnerabilities after they are public knowledge. Sometimes, a package with a vulnerability will not be updated in the book for a long time. Issues can be logged in the Trac system, which might speed up resolution.

The normal way for BLFS to fix a vulnerability is, ideally, to update the book to a new fixed release of the package. Sometimes that happens even before the vulnerability is public knowledge, so there is no guarantee that it will be shown as a vulnerability fix in the Changelog. Alternatively, a [**sed**]{.command} command, or a patch taken from a distribution, may be appropriate.

The bottom line is that you are responsible for your own security, and for assessing the potential impact of any problems.

The editors now issue Security Advisories for packages in BLFS (and LFS), which can be found at [BLFS Security Advisories](https://www.linuxfromscratch.org/blfs/advisories/){.ulink}, and grade the severity according to what upstream reports, or to what is shown at [nvd.nist.gov](https://nvd.nist.gov/){.ulink} if that has details.

To keep track of what is being discovered, you may wish to follow the security announcements of one or more distributions. For example, Debian has [Debian security](https://www.debian.org/security){.ulink}. Fedora's links on security are at [the Fedora wiki](https://fedoraproject.org/wiki/category:Security){.ulink}. Details of Gentoo linux security announcements are discussed at [Gentoo security](https://security.gentoo.org){.ulink}. Finally, the Slackware archives of security announcements are at [Slackware security](http://slackware.com/security/){.ulink}.

The most general English source is perhaps [the Full Disclosure Mailing List](https://seclists.org/fulldisclosure){.ulink}, but please read the comment on that page. If you use other languages you may prefer other sites such as [heise.de](https://www.heise.de/security){.ulink} (German) or [cert.hr](https://www.cert.hr){.ulink} (Croatian). These are not linux-specific. There is also a daily update at lwn.net for subscribers (free access to the data after 2 weeks, but their vulnerabilities database at [lwn.net/Alerts](https://lwn.net/Alerts/){.ulink} is unrestricted).

For some packages, subscribing to their 'announce' lists will provide prompt news of newer versions.
:::
::::

::: navfooter
-   [Prev](security.md "Security"){accesskey="p"}

    Security

-   [Next](make-ca.md "make-ca-1.16.1"){accesskey="n"}

    make-ca-1.16.1

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
