::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 7. Shells

-   [Prev](shells.md "Shells"){accesskey="p"}

    Shells

-   [Next](tcsh.md "Tcsh-6.24.16"){accesskey="n"}

    Tcsh-6.24.16

-   [Up](shells.md "Chapter 7. Shells"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dash}Dash-0.5.13.4 {#dash-0.5.13.4 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Dash {#introduction-to-dash .sect2}

[Dash]{.application} is a POSIX compliant shell. It can be installed as /bin/sh or as the default shell for either `root`{.systemitem} or a second user with a userid of 0. It depends on fewer libraries than the [Bash]{.application} shell and is therefore less likely to be affected by an upgrade problem or disk failure. [Dash]{.application} is also useful for checking that a script is completely compatible with POSIX syntax.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://gondor.apana.org.au/\~herbert/dash/files/dash-0.5.13.4.tar.gz](http://gondor.apana.org.au/~herbert/dash/files/dash-0.5.13.4.tar.gz){.ulink}

-   Download MD5 sum: 73542f54554f478ed1d1470c262706a4

-   Download size: 256 KB

-   Estimated disk space required: 3.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### Dash Dependencies

#### Optional

[libedit](https://www.thrysoee.dk/editline/){.ulink} (command line editor library)
:::::

:::: {.installation lang="en"}
## Installation of Dash {#installation-of-dash .sect2}

Install [Dash]{.application} by running the following commands:

``` userinput
./configure --bindir=/bin --mandir=/usr/share/man &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you would like to make [**dash**]{.command} the default [**sh**]{.command}, recreate the `/bin/sh`{.filename} symlink as the `root`{.systemitem} user:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you create the symbolic link from [**dash**]{.command} to [**sh**]{.command}, you will need to reset the link to [**bash**]{.command} to build LFS.
:::

``` userinput
ln -svf dash /bin/sh
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--bindir=/bin`*: This parameter places the [**dash**]{.command} binary into the root filesystem.

`--with-libedit`{.option}: Use this switch if you want to compile [Dash]{.application} with libedit support.
:::

::::: {.configuration lang="en"}
## Configuring Dash {#configuring-dash .sect2}

::: {.sect3 lang="en"}
### []{#dash-config}Config Files {#config-files .sect3}

[Dash]{.application} sources `/etc/profile`{.filename} and `~/.profile`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Update `/etc/shells`{.filename} to include the [Dash]{.application} shell by issuing the following command as the `root`{.systemitem} user:

``` root
cat >> /etc/shells << "EOF"
/bin/dash
EOF
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [dash]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Description

  --------------------------------------------- ----------------------------
  []{#dash-prog}[[**dash**]{.command}]{.term}   is a POSIX compliant shell
  --------------------------------------------- ----------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](shells.md "Shells"){accesskey="p"}

    Shells

-   [Next](tcsh.md "Tcsh-6.24.16"){accesskey="n"}

    Tcsh-6.24.16

-   [Up](shells.md "Chapter 7. Shells"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
