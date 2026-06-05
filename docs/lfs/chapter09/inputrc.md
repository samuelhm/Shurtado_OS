::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 9. System Configuration

-   [Prev](locale.md "Configuring the System Locale"){accesskey="p"}

    Configuring the System Locale

-   [Next](etcshells.md "Creating the /etc/shells File"){accesskey="n"}

    Creating the /etc/shells File

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-config-inputrc}9.8. Creating the /etc/inputrc File {#creating-the-etcinputrc-file .sect1}

::: {.sect1 lang="en"}
The `inputrc`{.filename} file is the configuration file for the readline library, which provides editing capabilities while the user is entering a line from the terminal. It works by translating keyboard inputs into specific actions. Readline is used by bash and most other shells as well as many other applications.

Most people do not need user-specific functionality so the command below creates a global `/etc/inputrc`{.filename} used by everyone who logs in. If you later decide you need to override the defaults on a per user basis, you can create a `.inputrc`{.filename} file in the user\'s home directory with the modified mappings.

For more information on how to edit the `inputrc`{.filename} file, see [**info bash**]{.command} under the [*Readline Init File*]{.emphasis} section. [**info readline**]{.command} is also a good source of information.

Below is a generic global `inputrc`{.filename} along with comments to explain what the various options do. Note that comments cannot be on the same line as commands. Create the file using the following command:

``` userinput
cat > /etc/inputrc << "EOF"
# Begin /etc/inputrc
# Modified by Chris Lynn <roryo@roryo.dynup.net>

# Allow the command prompt to wrap to the next line
set horizontal-scroll-mode Off

# Enable 8-bit input
set meta-flag On
set input-meta On

# Turns off 8th bit stripping
set convert-meta Off

# Keep the 8th bit for display
set output-meta On

# none, visible or audible
set bell-style none

# All of the following map the escape sequence of the value
# contained in the 1st argument to the readline specific functions
"\eOd": backward-word
"\eOc": forward-word

# for linux console
"\e[1~": beginning-of-line
"\e[4~": end-of-line
"\e[5~": beginning-of-history
"\e[6~": end-of-history
"\e[3~": delete-char
"\e[2~": quoted-insert

# for xterm
"\eOH": beginning-of-line
"\eOF": end-of-line

# for Konsole
"\e[H": beginning-of-line
"\e[F": end-of-line

# End /etc/inputrc
EOF
```
:::

::: navfooter
-   [Prev](locale.md "Configuring the System Locale"){accesskey="p"}

    Configuring the System Locale

-   [Next](etcshells.md "Creating the /etc/shells File"){accesskey="n"}

    Creating the /etc/shells File

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
