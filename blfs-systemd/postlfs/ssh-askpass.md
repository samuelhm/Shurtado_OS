::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](shadow.md "Shadow-4.19.4"){accesskey="p"}

    Shadow-4.19.4

-   [Next](stunnel.md "stunnel-5.78"){accesskey="n"}

    stunnel-5.78

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ssh-askpass}ssh-askpass-10.3p1 {#ssh-askpass-10.3p1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ssh-askpass {#introduction-to-ssh-askpass .sect2}

The [ssh-askpass]{.application} is a generic executable name for many packages, with similar names, that provide a interactive X service to grab password for packages requiring administrative privileges to be run. It prompts the user with a window box where the necessary password can be inserted. Here, we choose Damien Miller's package distributed in the [OpenSSH]{.application} tarball.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.3p1.tar.gz](https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.3p1.tar.gz){.ulink}

-   Download MD5 sum: 0b5662e0aa255c8d20f18dcca1bda65c

-   Download size: 1.9 MB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
:::

### ssh-askpass Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [Sudo-1.9.17p2](sudo.md "Sudo-1.9.17p2"){.xref} (runtime), [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}, and [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of ssh-askpass {#installation-of-ssh-askpass .sect2}

Install [ssh-askpass]{.application} by running the following commands:

``` userinput
cd contrib &&
make gnome-ssh-askpass3
```

Now, as the `root`{.systemitem} user:

``` root
install -v -d -m755                    /usr/libexec/openssh/contrib  &&
install -v -m755    gnome-ssh-askpass3 /usr/libexec/openssh/contrib  &&
ln -sv -f contrib/gnome-ssh-askpass3   /usr/libexec/openssh/ssh-askpass
```

The use of /usr/libexec/openssh/contrib and a symlink is justified by the eventual necessity of a different program for that service.
:::

:::: {.configuration lang="en"}
## Configuring ssh-askpass {#configuring-ssh-askpass .sect2}

::: {.sect3 lang="en"}
### []{#ssh-askpass-config}Configuration Information {#configuration-information .sect3}

As the `root`{.systemitem} user, configure [Sudo-1.9.17p2](sudo.md "Sudo-1.9.17p2"){.xref} to use [ssh-askpass]{.application}:

``` root
cat >> /etc/sudo.conf << "EOF" &&
# Path to askpass helper program
Path askpass /usr/libexec/openssh/ssh-askpass
EOF
chmod -v 0644 /etc/sudo.conf
```

If a given graphical \<application\> requires administrative privileges, use [**sudo -A \<application\>**]{.command} from an x-terminal, from a Window Manager menu and/or replace "Exec=\<application\> ..." by "Exec=sudo -A \<application\> ..." in the \<application\>.desktop file.
:::
::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gnome-ssh-askpass3, ssh-askpass (symlink to `gnome-ssh-askpass3`{.filename})]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/libexec/openssh/contrib]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](shadow.md "Shadow-4.19.4"){accesskey="p"}

    Shadow-4.19.4

-   [Next](stunnel.md "stunnel-5.78"){accesskey="n"}

    stunnel-5.78

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
