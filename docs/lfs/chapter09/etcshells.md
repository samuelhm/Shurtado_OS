::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 9. System Configuration

-   [Prev](inputrc.md "Creating the /etc/inputrc File"){accesskey="p"}

    Creating the /etc/inputrc File

-   [Next](systemd-custom.md "Systemd Usage and Configuration"){accesskey="n"}

    Systemd Usage and Configuration

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-config-shells}9.9. Creating the /etc/shells File {#creating-the-etcshells-file .sect1}

::: {.sect1 lang="en"}
The `shells`{.filename} file contains a list of login shells on the system. Applications use this file to determine whether a shell is valid. For each shell a single line should be present, consisting of the shell\'s path relative to the root of the directory structure (/).

For example, this file is consulted by [**chsh**]{.command} to determine whether an unprivileged user may change the login shell for her own account. If the command name is not listed, the user will be denied the ability to change shells.

It is a requirement for applications such as [GDM]{.application} which does not populate the face browser if it can\'t find `/etc/shells`{.filename}, or FTP daemons which traditionally disallow access to users with shells not included in this file.

``` root
cat > /etc/shells << "EOF"
# Begin /etc/shells

/bin/sh
/bin/bash

# End /etc/shells
EOF
```
:::

::: navfooter
-   [Prev](inputrc.md "Creating the /etc/inputrc File"){accesskey="p"}

    Creating the /etc/inputrc File

-   [Next](systemd-custom.md "Systemd Usage and Configuration"){accesskey="n"}

    Systemd Usage and Configuration

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
