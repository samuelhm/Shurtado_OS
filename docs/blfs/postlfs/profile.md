<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](users.md "About System Users and Groups")

    About System Users and Groups

-   [Next](vimrc.md "The /etc/vimrc and ~/.vimrc Files")

    The /etc/vimrc and \~/.vimrc Files

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# The Bash Shell Startup Files {#the-bash-shell-startup-files}

<div class="sect1" lang="en">
The shell program <code class="filename">/bin/bash</code> (hereafter referred to as just "the shell") uses a collection of startup files to help create an environment. Each file has a specific use and may affect login and interactive environments differently. The files in the <code class="filename">/etc</code> directory generally provide global settings. If an equivalent file exists in your home directory it may override the global settings.

An interactive login shell is started after a successful login, using <code class="filename">/bin/login</code>, by reading the <code class="filename">/etc/passwd</code> file. This shell invocation normally reads <code class="filename">/etc/profile</code> and its private equivalent <code class="filename">~/.bash_profile</code> (or <code class="filename">~/.profile</code> if called as <span class="command"><strong>/bin/sh</strong></span>) upon startup.

An interactive non-login shell is normally started at the command-line using a shell program (e.g., <code class="prompt">[prompt]$</code><span class="command"><strong>/bin/bash</strong></span>) or by the <span class="command"><strong>/bin/su</strong></span> command. An interactive non-login shell is also started with a terminal program such as <span class="command"><strong>xterm</strong></span> or <span class="command"><strong>konsole</strong></span> from within a graphical environment. This type of shell invocation normally copies the parent environment and then reads the user's <code class="filename">~/.bashrc</code> file for additional startup configuration instructions.

A non-interactive shell is usually present when a shell script is running. It is non-interactive because it is processing a script and not waiting for user input between commands. For these shell invocations, only the environment inherited from the parent shell is used.

The file <code class="filename">~/.bash_logout</code> is not used for an invocation of the shell. It is read and executed when a user exits from an interactive login shell.

Many distributions use <code class="filename">/etc/bashrc</code> for system wide initialization of non-login shells. This file is usually called from the user's <code class="filename">~/.bashrc</code> file and is not built directly into <span class="command"><strong>bash</strong></span> itself. This convention is followed in this section.

For more information see <span class="command"><strong>info bash</strong></span> -- <span class="strong"><strong>Nodes: Bash Startup Files and Interactive Shells</strong></span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Most of the instructions below are used to create files located in the <code class="filename">/etc</code> directory structure which requires you to execute the commands as the <code class="systemitem">root</code> user. If you elect to create the files in user's home directories instead, you should run the commands as an unprivileged user.
</div>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/bash-shell-startup-files">https://wiki.linuxfromscratch.org/blfs/wiki/bash-shell-startup-files</a>

<div class="sect2" lang="en">
## /etc/profile {#etcprofile}

Here is a base <code class="filename">/etc/profile</code>. This file starts by setting up some helper functions and some basic parameters. It specifies some <span class="command"><strong>bash</strong></span> history parameters and, for security purposes, disables keeping a permanent history file for the <code class="systemitem">root</code> user. It then calls small, single purpose scripts in the <code class="filename">/etc/profile.d</code> directory to provide most of the initialization.

```bash
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

<div class="sect3" lang="en">
### The /etc/profile.d Directory {#the-etcprofile.d-directory}

Now create the <code class="filename">/etc/profile.d</code> directory, where the individual initialization scripts are placed:

```bash
install --directory --mode=0755 --owner=root --group=root /etc/profile.d
```
</div>

<div class="sect3" lang="en">
### /etc/profile.d/extrapaths.sh {#etcprofile.dextrapaths.sh}

This script adds some useful paths to the <code class="envar">PATH</code> and can be used to customize other PATH related environment variables (e.g. LD_LIBRARY_PATH, etc) that may be needed for all users.

```bash
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

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="command"><strong>man</strong></span> program automatically deduces the search path for man pages by examining the content of the <code class="envar">PATH</code> variable, see <a class="ulink" href="https://man.archlinux.org/man/manpath.5">manpath(5)</a> for details. Setting the <code class="envar">MANPATH</code> variable may override the automatic deduction, so the BLFS editors do not recommend setting it. If you must set it for any reason, it's better to start its value with a colon (<code class="literal">:</code>), for example <span class="command"><strong>MANPATH=:/opt/somepkg/share/man:/opt/otherpkg/share/man</strong></span> so the paths listed in the <code class="envar">MANPATH</code> variable will be appended to the automatically deduced value instead of overriding it.
</div>
</div>

<div class="sect3" lang="en">
### /etc/profile.d/readline.sh {#etcprofile.dreadline.sh}

This script sets up the default <code class="filename">inputrc</code> configuration file. If the user does not have individual settings, it uses the global file.

```bash
cat > /etc/profile.d/readline.sh << "EOF"
# Set up the INPUTRC environment variable.
if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ] ; then
        INPUTRC=/etc/inputrc
fi
export INPUTRC
EOF
```
</div>

<div class="sect3" lang="en">
### /etc/profile.d/umask.sh {#etcprofile.dumask.sh}

Setting the <span class="command"><strong>umask</strong></span> value is important for security. Here the default group write permissions are turned off for system users and when the user name and group name are not the same.

```bash
cat > /etc/profile.d/umask.sh << "EOF"
# By default, the umask should be set.
if [ "$(id -gn)" = "$(id -un)" -a $EUID -gt 99 ] ; then
  umask 002
else
  umask 022
fi
EOF
```
</div>

<div class="sect3" lang="en">
### /etc/profile.d/i18n.sh {#etcprofile.di18n.sh}

This script sets an environment variable necessary for native language support. A full discussion on determining this variable can be found on the <a class="ulink" href="../../../../lfs/view/systemd/chapter09/locale.md">Configuring the System Locale</a> page.

```bash
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
</div>

<div class="sect3" lang="en">
### Other Initialization Values {#other-initialization-values}

Other initialization can easily be added to the <code class="filename">profile</code> by adding additional scripts to the <code class="filename">/etc/profile.d</code> directory.
</div>
</div>

<div class="sect2" lang="en">
## /etc/bashrc {#etcbashrc}

Here is a base <code class="filename">/etc/bashrc</code>. Comments in the file should explain everything you need.

```bash
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

The script above uses the <code class="filename">~/.dircolors</code> and <code class="filename">/etc/dircolors</code> files to control the colors of file names in a directory listing. They control colorized output of things like <span class="command"><strong>ls --color</strong></span>. The explanation of how to initialize these files is at the end of this section. The setting also depends on the terminal being used, so it needs to be set for each interactive shell, instead of only the login shell.

For more information on the escape sequences you can use for your prompt (i.e., the <code class="envar">PS1</code> environment variable) see <span class="command"><strong>info bash</strong></span> -- <span class="strong"><strong>Node: Printing a Prompt</strong></span>.
</div>

<div class="sect2" lang="en">
## \~/.bash_profile {#bash_profile}

Here is a base <code class="filename">~/.bash_profile</code>. If you want each new user to have this file automatically, just change the output of the command to <code class="filename">/etc/skel/.bash_profile</code> and check the permissions after the command is run. You can then copy <code class="filename">/etc/skel/.bash_profile</code> to the home directories of already existing users, including <code class="systemitem">root</code>, and set the owner and group appropriately.

```bash
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
</div>

<div class="sect2" lang="en">
## \~/.profile {#profile}

Here is a base <code class="filename">~/.profile</code>. The comments and instructions for using <code class="filename">/etc/skel</code> for <code class="filename">.bash_profile</code> above also apply here. Only the target file names are different.

```bash
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
</div>

<div class="sect2" lang="en">
## \~/.bashrc {#bashrc}

Here is a base <code class="filename">~/.bashrc</code>.

```bash
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
</div>

<div class="sect2" lang="en">
## \~/.bash_logout {#bash_logout}

This is an empty <code class="filename">~/.bash_logout</code> that can be used as a template. You will notice that the base <code class="filename">~/.bash_logout</code> does not include a **`clear`** command. This is because the clear is handled in the <code class="filename">/etc/issue</code> file.

```bash
cat > ~/.bash_logout << "EOF"
# Begin ~/.bash_logout
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>

# Personal items to perform on logout.

# End ~/.bash_logout
EOF
```
</div>

<div class="sect2" lang="en">
## /etc/dircolors {#etcdircolors}

If you want to use the <code class="filename">dircolors</code> capability, then run the following command. The <code class="filename">/etc/skel</code> setup steps shown above also can be used here to provide a <code class="filename">~/.dircolors</code> file when a new user is set up. As before, just change the output file name on the following command and assure the permissions, owner, and group are correct on the files created and/or copied.

```bash
dircolors -p > /etc/dircolors
```

If you wish to customize the colors used for different file types, you can edit the <code class="filename">/etc/dircolors</code> file. The instructions for setting the colors are embedded in the file.

Finally, Ian Macdonald has written an excellent collection of tips and tricks to enhance your shell environment. You can read it online at <a class="ulink" href="https://caliban.org/bash/index.shtml">https://caliban.org/bash/index.shtml</a>.
</div>
</div>

<div class="navfooter">
-   [Prev](users.md "About System Users and Groups")

    About System Users and Groups

-   [Next](vimrc.md "The /etc/vimrc and ~/.vimrc Files")

    The /etc/vimrc and \~/.vimrc Files

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
