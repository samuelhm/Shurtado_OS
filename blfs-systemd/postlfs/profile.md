::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](users.md "About System Users and Groups"){accesskey="p"}

    About System Users and Groups

-   [Next](vimrc.md "The /etc/vimrc and ~/.vimrc Files"){accesskey="n"}

    The /etc/vimrc and \~/.vimrc Files

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postlfs-config-profile}The Bash Shell Startup Files {#the-bash-shell-startup-files .sect1}

:::::::::::::::::: {.sect1 lang="en"}
The shell program `/bin/bash`{.filename} (hereafter referred to as just "the shell") uses a collection of startup files to help create an environment. Each file has a specific use and may affect login and interactive environments differently. The files in the `/etc`{.filename} directory generally provide global settings. If an equivalent file exists in your home directory it may override the global settings.

An interactive login shell is started after a successful login, using `/bin/login`{.filename}, by reading the `/etc/passwd`{.filename} file. This shell invocation normally reads `/etc/profile`{.filename} and its private equivalent `~/.bash_profile`{.filename} (or `~/.profile`{.filename} if called as [**/bin/sh**]{.command}) upon startup.

An interactive non-login shell is normally started at the command-line using a shell program (e.g., `[prompt]$`{.prompt}[**/bin/bash**]{.command}) or by the [**/bin/su**]{.command} command. An interactive non-login shell is also started with a terminal program such as [**xterm**]{.command} or [**konsole**]{.command} from within a graphical environment. This type of shell invocation normally copies the parent environment and then reads the user's `~/.bashrc`{.filename} file for additional startup configuration instructions.

A non-interactive shell is usually present when a shell script is running. It is non-interactive because it is processing a script and not waiting for user input between commands. For these shell invocations, only the environment inherited from the parent shell is used.

The file `~/.bash_logout`{.filename} is not used for an invocation of the shell. It is read and executed when a user exits from an interactive login shell.

Many distributions use `/etc/bashrc`{.filename} for system wide initialization of non-login shells. This file is usually called from the user's `~/.bashrc`{.filename} file and is not built directly into [**bash**]{.command} itself. This convention is followed in this section.

For more information see [**info bash**]{.command} -- [**Nodes: Bash Startup Files and Interactive Shells**]{.strong}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Most of the instructions below are used to create files located in the `/etc`{.filename} directory structure which requires you to execute the commands as the `root`{.systemitem} user. If you elect to create the files in user's home directories instead, you should run the commands as an unprivileged user.
:::

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/bash-shell-startup-files](https://wiki.linuxfromscratch.org/blfs/wiki/bash-shell-startup-files){.ulink}

:::::::::: {.sect2 lang="en"}
## []{#etc-profile-profile}/etc/profile {#etcprofile .sect2}

Here is a base `/etc/profile`{.filename}. This file starts by setting up some helper functions and some basic parameters. It specifies some [**bash**]{.command} history parameters and, for security purposes, disables keeping a permanent history file for the `root`{.systemitem} user. It then calls small, single purpose scripts in the `/etc/profile.d`{.filename} directory to provide most of the initialization.

``` root
cat > /etc/profile << "EOF"
# Begin /etc/profile
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>
# modifications by Dagmar d'Surreal <rivyqntzne@pbzpnfg.arg>

# System wide environment variables and startup programs.

# System wide aliases and functions should go in /etc/bashrc.  Personal
# environment variables and startup programs should go into
# ~/.bash_profile.  Personal aliases and functions should go into
# ~/.bashrc.

# Functions to help us manage paths.  Second argument is the name of the
# path variable to be modified (default: PATH)
pathremove () {
        local IFS=':'
        local NEWPATH
        local DIR
        local PATHVARIABLE=${2:-PATH}
        for DIR in ${!PATHVARIABLE} ; do
                if [ "$DIR" != "$1" ] ; then
                  NEWPATH=${NEWPATH:+$NEWPATH:}$DIR
                fi
        done
        export $PATHVARIABLE="$NEWPATH"
}

pathprepend () {
        pathremove $1 $2
        local PATHVARIABLE=${2:-PATH}
        export $PATHVARIABLE="$1${!PATHVARIABLE:+:${!PATHVARIABLE}}"
}

pathappend () {
        pathremove $1 $2
        local PATHVARIABLE=${2:-PATH}
        export $PATHVARIABLE="${!PATHVARIABLE:+${!PATHVARIABLE}:}$1"
}

export -f pathremove pathprepend pathappend

# Set the initial path
export PATH=/usr/bin

# Attempt to provide backward compatibility with LFS earlier than 11
if [ ! -L /bin ]; then
        pathappend /bin
fi

if [ $EUID -eq 0 ] ; then
        pathappend /usr/sbin
        if [ ! -L /sbin ]; then
                pathappend /sbin
        fi
        unset HISTFILE
fi

# Set up some environment variables.
export HISTSIZE=1000
export HISTIGNORE="&:[bf]g:exit"

# Set some defaults for graphical systems
export XDG_DATA_DIRS=${XDG_DATA_DIRS:-/usr/share}
export XDG_CONFIG_DIRS=${XDG_CONFIG_DIRS:-/etc/xdg}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-/tmp/xdg-$USER}

for script in /etc/profile.d/*.sh ; do
        if [ -r $script ] ; then
                . $script
        fi
done

unset script

# End /etc/profile
EOF
```

::: {.sect3 lang="en"}
### []{#etc-profile.d}The /etc/profile.d Directory {#the-etcprofile.d-directory .sect3}

Now create the `/etc/profile.d`{.filename} directory, where the individual initialization scripts are placed:

``` root
install --directory --mode=0755 --owner=root --group=root /etc/profile.d
```
:::

:::: {.sect3 lang="en"}
### []{#extrapaths.sh}/etc/profile.d/extrapaths.sh {#etcprofile.dextrapaths.sh .sect3}

This script adds some useful paths to the `PATH`{.envar} and can be used to customize other PATH related environment variables (e.g. LD_LIBRARY_PATH, etc) that may be needed for all users.

``` root
cat > /etc/profile.d/extrapaths.sh << "EOF"
if [ -d /usr/local/lib/pkgconfig ] ; then
        pathappend /usr/local/lib/pkgconfig PKG_CONFIG_PATH
fi
if [ -d /usr/local/bin ]; then
        pathprepend /usr/local/bin
fi
if [ -d /usr/local/sbin -a $EUID -eq 0 ]; then
        pathprepend /usr/local/sbin
fi

if [ -d /usr/local/share ]; then
        pathprepend /usr/local/share XDG_DATA_DIRS
fi

# Set some defaults before other applications add to these paths.
pathappend /usr/share/info INFOPATH
EOF
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [**man**]{.command} program automatically deduces the search path for man pages by examining the content of the `PATH`{.envar} variable, see [manpath(5)](https://man.archlinux.org/man/manpath.5){.ulink} for details. Setting the `MANPATH`{.envar} variable may override the automatic deduction, so the BLFS editors do not recommend setting it. If you must set it for any reason, it's better to start its value with a colon (`:`{.literal}), for example [**MANPATH=:/opt/somepkg/share/man:/opt/otherpkg/share/man**]{.command} so the paths listed in the `MANPATH`{.envar} variable will be appended to the automatically deduced value instead of overriding it.
:::
::::

::: {.sect3 lang="en"}
### []{#readline.sh}/etc/profile.d/readline.sh {#etcprofile.dreadline.sh .sect3}

This script sets up the default `inputrc`{.filename} configuration file. If the user does not have individual settings, it uses the global file.

``` root
cat > /etc/profile.d/readline.sh << "EOF"
# Set up the INPUTRC environment variable.
if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ] ; then
        INPUTRC=/etc/inputrc
fi
export INPUTRC
EOF
```
:::

::: {.sect3 lang="en"}
### []{#umask.sh}/etc/profile.d/umask.sh {#etcprofile.dumask.sh .sect3}

Setting the [**umask**]{.command} value is important for security. Here the default group write permissions are turned off for system users and when the user name and group name are not the same.

``` root
cat > /etc/profile.d/umask.sh << "EOF"
# By default, the umask should be set.
if [ "$(id -gn)" = "$(id -un)" -a $EUID -gt 99 ] ; then
  umask 002
else
  umask 022
fi
EOF
```
:::

::: {.sect3 lang="en"}
### []{#i18n.sh}/etc/profile.d/i18n.sh {#etcprofile.di18n.sh .sect3}

This script sets an environment variable necessary for native language support. A full discussion on determining this variable can be found on the [Configuring the System Locale](../../../../lfs/view/systemd/chapter09/locale.md){.ulink} page.

``` root
cat > /etc/profile.d/i18n.sh << "EOF"
# Set up i18n variables
for i in $(locale); do
  unset ${i%=*}
done

if [[ "$TERM" = linux ]]; then
  export LANG=C.UTF-8
else
  source /etc/locale.conf

  for i in $(locale); do
    key=${i%=*}
    if [[ -v $key ]]; then
      export $key
    fi
  done
fi
EOF
```
:::

::: {.sect3 lang="en"}
### Other Initialization Values {#other-initialization-values .sect3}

Other initialization can easily be added to the `profile`{.filename} by adding additional scripts to the `/etc/profile.d`{.filename} directory.
:::
::::::::::

::: {.sect2 lang="en"}
## []{#etc-bashrc-profile}/etc/bashrc {#etcbashrc .sect2}

Here is a base `/etc/bashrc`{.filename}. Comments in the file should explain everything you need.

``` root
cat > /etc/bashrc << "EOF"
# Begin /etc/bashrc
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>
# updated by Bruce Dubbs <bdubbs@linuxfromscratch.org>

# System wide aliases and functions.

# System wide environment variables and startup programs should go into
# /etc/profile.  Personal environment variables and startup programs
# should go into ~/.bash_profile.  Personal aliases and functions should
# go into ~/.bashrc

# Provides colored /bin/ls and /bin/grep commands.

if [ -f "/etc/dircolors" ] ; then
        eval $(dircolors -b /etc/dircolors)
fi

if [ -f "$HOME/.dircolors" ] ; then
        eval $(dircolors -b $HOME/.dircolors)
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Provides prompt for interactive shells, specifically shells started
# in the X environment. [Review the LFS archive thread titled
# PS1 Environment Variable for a great case study behind this script
# addendum.]

NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
if [[ $EUID == 0 ]] ; then
  PS1="$RED\u [ $NORMAL\w$RED ]# $NORMAL"
else
  PS1="$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
fi

unset RED GREEN NORMAL

# GnuPG wants this or it'll fail with pinentry-curses under some
# circumstances (for example signing a Git commit)
# Note that tty -s will "succeed" in LFS chroot environment so we cannot
# use -s instead of redirecting to /dev/null.
$(tty &>/dev/null) && export GPG_TTY=$(tty)

# End /etc/bashrc
EOF
```

The script above uses the `~/.dircolors`{.filename} and `/etc/dircolors`{.filename} files to control the colors of file names in a directory listing. They control colorized output of things like [**ls --color**]{.command}. The explanation of how to initialize these files is at the end of this section. The setting also depends on the terminal being used, so it needs to be set for each interactive shell, instead of only the login shell.

For more information on the escape sequences you can use for your prompt (i.e., the `PS1`{.envar} environment variable) see [**info bash**]{.command} -- [**Node: Printing a Prompt**]{.strong}.
:::

::: {.sect2 lang="en"}
## []{#bash_profile-profile}\~/.bash_profile {#bash_profile .sect2}

Here is a base `~/.bash_profile`{.filename}. If you want each new user to have this file automatically, just change the output of the command to `/etc/skel/.bash_profile`{.filename} and check the permissions after the command is run. You can then copy `/etc/skel/.bash_profile`{.filename} to the home directories of already existing users, including `root`{.systemitem}, and set the owner and group appropriately.

``` userinput
cat > ~/.bash_profile << "EOF"
# Begin ~/.bash_profile
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>
# updated by Bruce Dubbs <bdubbs@linuxfromscratch.org>

# Personal environment variables and startup programs.

# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -d "$HOME/bin" ] ; then
  pathprepend $HOME/bin
fi

# Having . in the PATH is dangerous
#if [ $EUID -gt 99 ]; then
#  pathappend .
#fi

# End ~/.bash_profile
EOF
```
:::

::: {.sect2 lang="en"}
## []{#dot_profile-profile}\~/.profile {#profile .sect2}

Here is a base `~/.profile`{.filename}. The comments and instructions for using `/etc/skel`{.filename} for `.bash_profile`{.filename} above also apply here. Only the target file names are different.

``` userinput
cat > ~/.profile << "EOF"
# Begin ~/.profile
# Personal environment variables and startup programs.

if [ -d "$HOME/bin" ] ; then
  pathprepend $HOME/bin
fi

# Set up user specific i18n variables
#export LANG=<ll>_<CC>.<charmap><@modifiers>

# End ~/.profile
EOF
```
:::

::: {.sect2 lang="en"}
## []{#bashrc-profile}\~/.bashrc {#bashrc .sect2}

Here is a base `~/.bashrc`{.filename}.

``` userinput
cat > ~/.bashrc << "EOF"
# Begin ~/.bashrc
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>

# Personal aliases and functions.

# Personal environment variables and startup programs should go in
# ~/.bash_profile.  System wide environment variables and startup
# programs are in /etc/profile.  System wide aliases and functions are
# in /etc/bashrc.

if [ -f "/etc/bashrc" ] ; then
  source /etc/bashrc
fi

# Set up user specific i18n variables
#export LANG=<ll>_<CC>.<charmap><@modifiers>

# End ~/.bashrc
EOF
```
:::

::: {.sect2 lang="en"}
## []{#bash_logout-profile}\~/.bash_logout {#bash_logout .sect2}

This is an empty `~/.bash_logout`{.filename} that can be used as a template. You will notice that the base `~/.bash_logout`{.filename} does not include a **`clear`** command. This is because the clear is handled in the `/etc/issue`{.filename} file.

``` userinput
cat > ~/.bash_logout << "EOF"
# Begin ~/.bash_logout
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>

# Personal items to perform on logout.

# End ~/.bash_logout
EOF
```
:::

::: {.sect2 lang="en"}
## []{#etc-dircolors-profile}/etc/dircolors {#etcdircolors .sect2}

If you want to use the `dircolors`{.filename} capability, then run the following command. The `/etc/skel`{.filename} setup steps shown above also can be used here to provide a `~/.dircolors`{.filename} file when a new user is set up. As before, just change the output file name on the following command and assure the permissions, owner, and group are correct on the files created and/or copied.

``` root
dircolors -p > /etc/dircolors
```

If you wish to customize the colors used for different file types, you can edit the `/etc/dircolors`{.filename} file. The instructions for setting the colors are embedded in the file.

Finally, Ian Macdonald has written an excellent collection of tips and tricks to enhance your shell environment. You can read it online at [https://caliban.org/bash/index.shtml](https://caliban.org/bash/index.shtml){.ulink}.
:::
::::::::::::::::::

::: navfooter
-   [Prev](users.md "About System Users and Groups"){accesskey="p"}

    About System Users and Groups

-   [Next](vimrc.md "The /etc/vimrc and ~/.vimrc Files"){accesskey="n"}

    The /etc/vimrc and \~/.vimrc Files

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
