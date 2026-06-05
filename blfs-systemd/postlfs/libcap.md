::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](firewall.md "Setting Up a Network Firewall"){accesskey="p"}

    Setting Up a Network Firewall

-   [Next](linux-pam.md "Linux-PAM-1.7.2"){accesskey="n"}

    Linux-PAM-1.7.2

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libcap-pam}libcap-2.78 with PAM {#libcap-2.78-with-pam .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libcap with PAM {#introduction-to-libcap-with-pam .sect2}

The [libcap]{.application} package was installed in LFS, but if [Linux-PAM]{.application} support is desired, the PAM module must be built (after installation of [Linux-PAM]{.application}).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.78.tar.xz](https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.78.tar.xz){.ulink}

-   Download MD5 sum: 0ff11419aa4813c0a0f84fe67bf3b39e

-   Download size: 200 KB

-   Estimated disk space required: 2.3 MB

-   Estimated build time: less than 0.1 SBU
:::

### libcap Dependencies

#### Required

[Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of libcap {#installation-of-libcap .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are upgrading libcap from a previous version, use the instructions in [LFS libcap page](../../../../lfs/view/systemd/chapter08/libcap.md){.ulink} to upgrade libcap. If [Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref} has been built, the PAM module will automatically be built too.
:::

Install [libcap]{.application} by running the following commands:

``` userinput
make -C pam_cap
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
install -v -m755 pam_cap/pam_cap.so      /usr/lib/security &&
install -v -m644 pam_cap/capability.conf /etc/security
```
::::

::: {.configuration lang="en"}
## Configuring Libcap {#configuring-libcap .sect2}

In order to allow [Linux-PAM]{.application} to grant privileges based on POSIX capabilities, you need to add the libcap module to the beginning of the `/etc/pam.d/system-auth`{.filename} file. Make the required edits with the following commands:

``` root
mv -v /etc/pam.d/system-auth{,.bak} &&
cat > /etc/pam.d/system-auth << "EOF" &&
# Begin /etc/pam.d/system-auth

auth      optional    pam_cap.so
EOF
tail -n +3 /etc/pam.d/system-auth.bak >> /etc/pam.d/system-auth
```

Additionally, you'll need to modify the `/etc/security/capability.conf`{.filename} file to grant necessary privileges to users, and utilize the [**setcap**]{.command} utility to set capabilities on specific utilities as needed. See [**man 8 setcap**]{.command} and [**man 3 cap_from_text**]{.command} for additional information.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [pam_cap.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](firewall.md "Setting Up a Network Firewall"){accesskey="p"}

    Setting Up a Network Firewall

-   [Next](linux-pam.md "Linux-PAM-1.7.2"){accesskey="n"}

    Linux-PAM-1.7.2

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
