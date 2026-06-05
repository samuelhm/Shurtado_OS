::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 4. Final Preparations

-   [Prev](creatingminlayout.md "Creating a Limited Directory Layout in the LFS Filesystem"){accesskey="p"}

    Creating a Limited Directory Layout in the LFS Filesystem

-   [Next](settingenvironment.md "Setting Up the Environment"){accesskey="n"}

    Setting Up the Environment

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-preps-addinguser}4.3. Adding the LFS User {#adding-the-lfs-user .sect1}

::::: {.sect1 lang="en"}
When logged in as user `root`{.systemitem}, making a single mistake can damage or destroy a system. Therefore, the packages in the next two chapters are built as an unprivileged user. You could use your own user name, but to make it easier to set up a clean working environment, we will create a new user called `lfs`{.systemitem} as a member of a new group (also named `lfs`{.systemitem}) and run commands as `lfs`{.systemitem} during the installation process. As `root`{.systemitem}, issue the following commands to add the new user:

``` userinput
groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs
```

::: variablelist
**This is what the command line options mean:**

[*`-s /bin/bash`*]{.term}

:   This makes [**bash**]{.command} the default shell for user `lfs`{.systemitem}.

[*`-g lfs`*]{.term}

:   This option adds user `lfs`{.systemitem} to group `lfs`{.systemitem}.

[*`-m`*]{.term}

:   This creates a home directory for `lfs`{.systemitem}.

[*`-k /dev/null`*]{.term}

:   This parameter prevents possible copying of files from a skeleton directory (the default is `/etc/skel`{.filename}) by changing the input location to the special null device.

[*`lfs`*]{.term}

:   This is the name of the new user.
:::

If you want to log in as `lfs`{.systemitem} or switch to `lfs`{.systemitem} from a non-`root`{.systemitem} user (as opposed to switching to user `lfs`{.systemitem} when logged in as `root`{.systemitem}, which does not require the `lfs`{.systemitem} user to have a password), you need to set a password for `lfs`{.systemitem}. Issue the following command as the `root`{.systemitem} user to set the password:

``` userinput
passwd lfs
```

Grant `lfs`{.systemitem} full access to all the directories under `$LFS`{.filename} by making `lfs`{.systemitem} the owner:

``` userinput
chown -v lfs $LFS/{usr{,/*},var,etc,tools}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In some host systems, the following [**su**]{.command} command does not complete properly and suspends the login for the `lfs`{.systemitem} user to the background. If the prompt \"lfs:\~\$\" does not appear immediately, entering the [**fg**]{.command} command will fix the issue.
:::

Next, start a shell running as user `lfs`{.systemitem}. This can be done by logging in as `lfs`{.systemitem} on a virtual console, or with the following substitute/switch user command:

``` userinput
su - lfs
```

The ["[*`-`*]{.quote}"]{.quote} instructs [**su**]{.command} to start a login shell as opposed to a non-login shell. The difference between these two types of shells is described in detail in [bash(1)](https://man.archlinux.org/man/bash.1){.ulink} and [**info bash**]{.command}.
:::::

::: navfooter
-   [Prev](creatingminlayout.md "Creating a Limited Directory Layout in the LFS Filesystem"){accesskey="p"}

    Creating a Limited Directory Layout in the LFS Filesystem

-   [Next](settingenvironment.md "Setting Up the Environment"){accesskey="n"}

    Setting Up the Environment

-   [Up](chapter04.md "Chapter 4. Final Preparations"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
