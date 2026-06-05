::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 18. Text Web Browsers

-   [Prev](links.md "Links-2.30"){accesskey="p"}

    Links-2.30

-   [Next](mailnews.md "Mail/News Clients"){accesskey="n"}

    Mail/News Clients

-   [Up](textweb.md "Chapter 18. Text Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lynx}Lynx-2.9.3 {#lynx-2.9.3 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Lynx {#introduction-to-lynx .sect2}

[Lynx]{.application} is a text based web browser.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://invisible-mirror.net/archives/lynx/tarballs/lynx2.9.3.tar.bz2](https://invisible-mirror.net/archives/lynx/tarballs/lynx2.9.3.tar.bz2){.ulink}

-   Download MD5 sum: faedd64b8e3cb87ae41197340cc3016a

-   Download size: 2.7 MB

-   Estimated disk space required: 26 MB

-   Estimated build time: 0.3 SBU
:::

#### Recommended

[Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}

#### Optional

[GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref} (experimental, to replace openssl), [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [libidn2-2.3.8](../general/libidn2.md "libidn2-2.3.8"){.xref}, [Zip-3.0](../general/zip.md "Zip-3.0"){.xref}, an [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} (that provides a [**sendmail**]{.command} command), and [Sharutils-4.15.2](../general/sharutils.md "Sharutils-4.15.2"){.xref} (for the [**uudecode**]{.command} program)
:::::

::: {.installation lang="en"}
## Installation of Lynx {#installation-of-lynx .sect2}

Install [Lynx]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr           \
            --sysconfdir=/etc/lynx  \
            --with-zlib             \
            --with-bzlib            \
            --with-ssl              \
            --with-screen=ncursesw  \
            --enable-ipv6           \
            --enable-locale-charset \
            --enable-nls            \
            --datadir=/usr/share/doc/lynx-2.9.3 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install-full
chgrp -v -R root /usr/share/doc/lynx-2.9.3/lynx_doc
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--sysconfdir=/etc/lynx`*: This parameter is used so that the configuration files are located in `/etc/lynx`{.filename} instead of `/usr/etc`{.filename}.

*`--datadir=/usr/share/doc/lynx-2.9.3`*: This parameter is used so that the documentation files are installed into `/usr/share/doc/lynx-2.9.3`{.filename} instead of `/usr/share/lynx_{doc,help}`{.filename}.

*`--with-zlib`*: This enables support for linking `libz`{.filename} into [Lynx]{.application}.

*`--with-bzlib`*: This enables support for linking `libbz2`{.filename} into [Lynx]{.application}.

*`--with-ssl`*: This enables support for linking SSL into [Lynx]{.application}.

*`--with-screen=ncursesw`*: This switch enables the use of advanced wide-character support present in the system [NCurses]{.application} library. This is needed for proper display of characters and line wrapping in multibyte locales.

*`--enable-ipv6`*: This switch allows [Lynx]{.application} to use IPv6, along with IPv4. Use it if your ISP provides an IPv6 configuration.

*`--enable-locale-charset`*: This switch allows [Lynx]{.application} to deduce the proper character encoding for terminal output from the current locale. A configuration step is still needed (see below), but unlike the situation without this switch, the configuration step becomes the same for all users (without the switch one must specify the display character set explicitly). This is important for environments such as a LiveCD, where the amount of system-specific configuration steps has to be reduced to the minimum.

*`--enable-nls`*: This switch allows [Lynx]{.application} to print translated messages (such as questions about cookies and SSL certificates).

`--with-gnutls`{.option}: This enables experimental support for linking [GnuTLS]{.application} into [Lynx]{.application}. Remove the *`--with-ssl`* switch if you want to use gnutls.

[**make install-full**]{.command}: In addition to the standard installation, this target installs the documentation and help files.

[**chgrp -v -R root /usr/share/doc/lynx-2.9.3/lynx_doc**]{.command} : This command corrects the improper group ownership of installed documentation files.
:::

::::: {.configuration lang="en"}
## Configuring Lynx {#configuring-lynx .sect2}

::: {.sect3 lang="en"}
### []{#lynx-config}Config Files {#config-files .sect3}

`/etc/lynx/lynx.cfg`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The proper way to get the display character set is to examine the current locale. However, [Lynx]{.application} does not do this by default. As the `root`{.systemitem} user, change this setting:

``` root
sed -e '/#LOCALE/     a LOCALE_CHARSET:TRUE'     \
    -i /etc/lynx/lynx.cfg
```

The built-in editor in [Lynx]{.application} [Breaks Multibyte Characters](../introduction/locale-issues.md#locale-wrong-multibyte-characters "The Program Breaks Multibyte Characters or Doesn't Count Character Cells Correctly"){.xref}. This issue manifests itself in multibyte locales, e.g., as the Backspace key not erasing non-ASCII characters properly, and as incorrect data being sent to the network when one edits the contents of text areas. The only solution to this problem is to configure [Lynx]{.application} to use an external editor (bound to the [“[Ctrl+X e]{.quote}”]{.quote} key combination by default). Still as the `root`{.systemitem} user:

``` root
sed -e '/#DEFAULT_ED/ a DEFAULT_EDITOR:vi'       \
    -i /etc/lynx/lynx.cfg
```

[Lynx]{.application} handles the following values of the DEFAULT_EDITOR option specially by adding cursor-positioning arguments: `emacs`{.literal}, `jed`{.literal}, `jmacs`{.literal}, `joe`{.literal}, `jove`{.literal}, `jpico`{.literal}, `jstar`{.literal}, `nano`{.literal}, `pico`{.literal}, `rjoe`{.literal}, `vi`{.literal} (but not `vim`{.literal}: in order to position the cursor in [Vim-9.2.0567](../postlfs/vim.md "Vim-9.2.0567"){.xref}, set this option to `vi`{.literal}).

By default, [Lynx]{.application} doesn't save cookies between sessions. Again as the `root`{.systemitem} user, change this setting:

``` root
sed -e '/#PERSIST/    a PERSISTENT_COOKIES:TRUE' \
    -i /etc/lynx/lynx.cfg
```

Many other system-wide settings such as proxies can also be set in the `/etc/lynx/lynx.cfg`{.filename} file.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [lynx]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/lynx and /usr/share/doc/lynx-2.9.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- ------------------------------------------------------------------------------------------
  []{#lynx-prog}[[**lynx**]{.command}]{.term}   is a general purpose, text-based, distributed information browser for the World Wide Web
  --------------------------------------------- ------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](links.md "Links-2.30"){accesskey="p"}

    Links-2.30

-   [Next](mailnews.md "Mail/News Clients"){accesskey="n"}

    Mail/News Clients

-   [Up](textweb.md "Chapter 18. Text Web Browsers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
