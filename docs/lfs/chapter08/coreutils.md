::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](kmod.md "Kmod-34.2"){accesskey="p"}

    Kmod-34.2

-   [Next](diffutils.md "Diffutils-3.12"){accesskey="n"}

    Diffutils-3.12

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-coreutils}8.59. Coreutils-9.11 {#coreutils-9.11 .sect1}

:::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Coreutils package contains the basic utility programs needed by every operating system.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [188 MB]{.segbody}
:::
:::::
::::::
:::::::

::::: {.installation lang="en"}
## 8.59.1. Installation of Coreutils {#installation-of-coreutils .sect2}

POSIX requires that programs from Coreutils recognize character boundaries correctly even in multibyte locales. The following patch fixes this non-compliance and other internationalization-related bugs.

``` userinput
patch -Np1 -i ../coreutils-9.11-i18n-1.patch
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Many bugs have been found in this patch. When reporting new bugs to the Coreutils maintainers, please check first to see if those bugs are reproducible without this patch.
:::

Now prepare Coreutils for compilation:

``` userinput
autoreconf -fv
automake -af
FORCE_UNSAFE_CONFIGURE=1 ./configure \
            --prefix=/usr
```

::: variablelist
**The meaning of the commands and configure options:**

[[**autoreconf -fv**]{.command}]{.term}

:   The patch for internationalization has modified the build system, so the configuration files must be regenerated. Normally we would use the *`-i`* option to update the standard auxiliary files, but for this package it does not work because `configure.ac`{.filename} specified an old gettext version.

[[**automake -af**]{.command}]{.term}

:   The automake auxiliary files were not updated by [**autoreconf**]{.command} due to the missing *`-i`* option. This command updates them to prevent a build failure.

[`FORCE_UNSAFE_CONFIGURE=1`{.envar}]{.term}

:   This environment variable allows the package to be built by the `root`{.systemitem} user.
:::

Compile the package:

``` userinput
make
```

Skip down to ["[Install the package]{.quote}"]{.quote} if not running the test suite.

Now the test suite is ready to be run. First, run the tests that are meant to be run as user `root`{.systemitem}:

``` userinput
make NON_ROOT_USERNAME=tester check-root
```

We\'re going to run the remainder of the tests as the `tester`{.systemitem} user. Certain tests require that the user be a member of more than one group. So that these tests are not skipped, add a temporary group and make the user `tester`{.systemitem} a part of it:

``` userinput
groupadd -g 102 dummy -U tester
```

Fix some of the permissions so that the non-`root`{.systemitem} user can compile and run the tests:

``` userinput
chown -R tester . 
```

Now run the tests (using `/dev/null`{.filename} for the standard input, or two tests may be broken if building LFS in a graphical terminal or a session in SSH or GNU Screen because the standard input is connected to a PTY from host distro, and the device node for such a PTY cannot be accessed from the LFS chroot environment):

``` userinput
su tester -c "PATH=$PATH make -k RUN_EXPENSIVE_TESTS=yes check" \
   < /dev/null
```

Remove the temporary group:

``` userinput
groupdel dummy
```

Install the package:

``` userinput
make install
```

Move programs to the locations specified by the FHS:

``` userinput
mv -v /usr/bin/chroot /usr/sbin
mv -v /usr/share/man/man1/chroot.1 /usr/share/man/man8/chroot.8
sed -i 's/"1"/"8"/' /usr/share/man/man8/chroot.8
```
:::::

::::::::: {.content lang="en"}
## []{#contents-coreutils}8.59.2. Contents of Coreutils {#contents-of-coreutils .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [\[, b2sum, base32, base64, basename, basenc, cat, chgrp, chmod, chown, chroot, cksum, comm, cp, csplit, cut, date, dd, df, dir, dircolors, dirname, du, echo, env, expand, expr, factor, false, fmt, fold, groups, head, hostid, id, install, join, link, ln, logname, ls, md5sum, mkdir, mkfifo, mknod, mktemp, mv, nice, nl, nohup, nproc, numfmt, od, paste, pathchk, pinky, pr, printenv, printf, ptx, pwd, readlink, realpath, rm, rmdir, seq, sha1sum, sha224sum, sha256sum, sha384sum, sha512sum, shred, shuf, sleep, sort, split, stat, stdbuf, stty, sum, sync, tac, tail, tee, test, timeout, touch, tr, true, truncate, tsort, tty, uname, unexpand, uniq, unlink, users, vdir, wc, who, whoami, and yes]{.segbody}
:::

::: seg
**Installed library:** [libstdbuf.so (in /usr/libexec/coreutils)]{.segbody}
:::

::: seg
**Installed directory:** [/usr/libexec/coreutils]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#lbracket}[[**\[**]{.command}]{.term}           Is an actual command, /usr/bin/\[; it is a synonym for the [**test**]{.command} command
  []{#base32}[[**base32**]{.command}]{.term}         Encodes and decodes data according to the base32 specification (RFC 4648)
  []{#base64}[[**base64**]{.command}]{.term}         Encodes and decodes data according to the base64 specification (RFC 4648)
  []{#b2sum}[[**b2sum**]{.command}]{.term}           Prints or checks BLAKE2 (512-bit) checksums
  []{#basename}[[**basename**]{.command}]{.term}     Strips any path and a given suffix from a file name
  []{#basenc}[[**basenc**]{.command}]{.term}         Encodes or decodes data using various algorithms
  []{#cat}[[**cat**]{.command}]{.term}               Concatenates files to standard output
  []{#chgrp}[[**chgrp**]{.command}]{.term}           Changes the group ownership of files and directories
  []{#chmod}[[**chmod**]{.command}]{.term}           Changes the permissions of each file to the given mode; the mode can be either a symbolic representation of the changes to be made, or an octal number representing the new permissions
  []{#chown}[[**chown**]{.command}]{.term}           Changes the user and/or group ownership of files and directories
  []{#chroot}[[**chroot**]{.command}]{.term}         Runs a command with the specified directory as the `/`{.filename} directory
  []{#cksum}[[**cksum**]{.command}]{.term}           Prints the Cyclic Redundancy Check (CRC) checksum and the byte counts of each specified file
  []{#comm}[[**comm**]{.command}]{.term}             Compares two sorted files, outputting in three columns the lines that are unique and the lines that are common
  []{#cp}[[**cp**]{.command}]{.term}                 Copies files
  []{#csplit}[[**csplit**]{.command}]{.term}         Splits a given file into several new files, separating them according to given patterns or line numbers, and outputting the byte count of each new file
  []{#cut}[[**cut**]{.command}]{.term}               Prints sections of lines, selecting the parts according to given fields or positions
  []{#date}[[**date**]{.command}]{.term}             Displays the current date and time in the given format, or sets the system date and time
  []{#dd}[[**dd**]{.command}]{.term}                 Copies a file using the given block size and count, while optionally performing conversions on it
  []{#df}[[**df**]{.command}]{.term}                 Reports the amount of disk space available (and used) on all mounted file systems, or only on the file systems holding the selected files
  []{#dir}[[**dir**]{.command}]{.term}               Lists the contents of each given directory (the same as the [**ls**]{.command} command)
  []{#dircolors}[[**dircolors**]{.command}]{.term}   Outputs commands to set the `LS_COLOR`{.envar} environment variable to change the color scheme used by [**ls**]{.command}
  []{#dirname}[[**dirname**]{.command}]{.term}       Extracts the directory portion(s) of the given name(s)
  []{#du}[[**du**]{.command}]{.term}                 Reports the amount of disk space used by the current directory, by each of the given directories (including all subdirectories) or by each of the given files
  []{#echo}[[**echo**]{.command}]{.term}             Displays the given strings
  []{#env}[[**env**]{.command}]{.term}               Runs a command in a modified environment
  []{#expand}[[**expand**]{.command}]{.term}         Converts tabs to spaces
  []{#expr}[[**expr**]{.command}]{.term}             Evaluates expressions
  []{#factor}[[**factor**]{.command}]{.term}         Prints the prime factors of the specified integers
  []{#false}[[**false**]{.command}]{.term}           Does nothing, unsuccessfully; it always exits with a status code indicating failure
  []{#fmt}[[**fmt**]{.command}]{.term}               Reformats the paragraphs in the given files
  []{#fold}[[**fold**]{.command}]{.term}             Wraps the lines in the given files
  []{#groups}[[**groups**]{.command}]{.term}         Reports a user\'s group memberships
  []{#head}[[**head**]{.command}]{.term}             Prints the first ten lines (or the given number of lines) of each given file
  []{#hostid}[[**hostid**]{.command}]{.term}         Reports the numeric identifier (in hexadecimal) of the host
  []{#id}[[**id**]{.command}]{.term}                 Reports the effective user ID, group ID, and group memberships of the current user or specified user
  []{#install}[[**install**]{.command}]{.term}       Copies files while setting their permission modes and, if possible, their owner and group
  []{#join}[[**join**]{.command}]{.term}             Joins the lines that have identical join fields from two separate files
  []{#link}[[**link**]{.command}]{.term}             Creates a hard link (with the given name) to a file
  []{#ln}[[**ln**]{.command}]{.term}                 Makes hard links or soft (symbolic) links between files
  []{#logname}[[**logname**]{.command}]{.term}       Reports the current user\'s login name
  []{#ls}[[**ls**]{.command}]{.term}                 Lists the contents of each given directory
  []{#md5sum}[[**md5sum**]{.command}]{.term}         Reports or checks Message Digest 5 (MD5) checksums
  []{#mkdir}[[**mkdir**]{.command}]{.term}           Creates directories with the given names
  []{#mkfifo}[[**mkfifo**]{.command}]{.term}         Creates First-In, First-Outs (FIFOs), \"named pipes\" in UNIX parlance, with the given names
  []{#mknod}[[**mknod**]{.command}]{.term}           Creates device nodes with the given names; a device node is a character special file, a block special file, or a FIFO
  []{#mktemp}[[**mktemp**]{.command}]{.term}         Creates temporary files in a secure manner; it is used in scripts
  []{#mv}[[**mv**]{.command}]{.term}                 Moves or renames files or directories
  []{#nice}[[**nice**]{.command}]{.term}             Runs a program with modified scheduling priority
  []{#nl}[[**nl**]{.command}]{.term}                 Numbers the lines from the given files
  []{#nohup}[[**nohup**]{.command}]{.term}           Runs a command immune to hangups, with its output redirected to a log file
  []{#nproc}[[**nproc**]{.command}]{.term}           Prints the number of processing units available to a process
  []{#numfmt}[[**numfmt**]{.command}]{.term}         Converts numbers to or from human-readable strings
  []{#od}[[**od**]{.command}]{.term}                 Dumps files in octal and other formats
  []{#paste}[[**paste**]{.command}]{.term}           Merges the given files, joining sequentially corresponding lines side by side, separated by tab characters
  []{#pathchk}[[**pathchk**]{.command}]{.term}       Checks if file names are valid or portable
  []{#pinky}[[**pinky**]{.command}]{.term}           Is a lightweight finger client; it reports some information about the given users
  []{#pr}[[**pr**]{.command}]{.term}                 Paginates and columnates files for printing
  []{#printenv}[[**printenv**]{.command}]{.term}     Prints the environment
  []{#printf}[[**printf**]{.command}]{.term}         Prints the given arguments according to the given format, much like the C printf function
  []{#ptx}[[**ptx**]{.command}]{.term}               Produces a permuted index from the contents of the given files, with each keyword in its context
  []{#pwd}[[**pwd**]{.command}]{.term}               Reports the name of the current working directory
  []{#readlink}[[**readlink**]{.command}]{.term}     Reports the value of the given symbolic link
  []{#realpath}[[**realpath**]{.command}]{.term}     Prints the resolved path
  []{#rm}[[**rm**]{.command}]{.term}                 Removes files or directories
  []{#rmdir}[[**rmdir**]{.command}]{.term}           Removes directories if they are empty
  []{#seq}[[**seq**]{.command}]{.term}               Prints a sequence of numbers within a given range and with a given increment
  []{#sha1sum}[[**sha1sum**]{.command}]{.term}       Prints or checks 160-bit Secure Hash Algorithm 1 (SHA1) checksums
  []{#sha224sum}[[**sha224sum**]{.command}]{.term}   Prints or checks 224-bit Secure Hash Algorithm checksums
  []{#sha256sum}[[**sha256sum**]{.command}]{.term}   Prints or checks 256-bit Secure Hash Algorithm checksums
  []{#sha384sum}[[**sha384sum**]{.command}]{.term}   Prints or checks 384-bit Secure Hash Algorithm checksums
  []{#sha512sum}[[**sha512sum**]{.command}]{.term}   Prints or checks 512-bit Secure Hash Algorithm checksums
  []{#shred}[[**shred**]{.command}]{.term}           Overwrites the given files repeatedly with complex patterns, making it difficult to recover the data
  []{#shuf}[[**shuf**]{.command}]{.term}             Shuffles lines of text
  []{#sleep}[[**sleep**]{.command}]{.term}           Pauses for the given amount of time
  []{#sort}[[**sort**]{.command}]{.term}             Sorts the lines from the given files
  []{#split}[[**split**]{.command}]{.term}           Splits the given file into pieces, by size or by number of lines
  []{#stat}[[**stat**]{.command}]{.term}             Displays file or filesystem status
  []{#stdbuf}[[**stdbuf**]{.command}]{.term}         Runs commands with altered buffering operations for its standard streams
  []{#stty}[[**stty**]{.command}]{.term}             Sets or reports terminal line settings
  []{#sum}[[**sum**]{.command}]{.term}               Prints checksum and block counts for each given file
  []{#sync}[[**sync**]{.command}]{.term}             Flushes file system buffers; it forces changed blocks to disk and updates the super block
  []{#tac}[[**tac**]{.command}]{.term}               Concatenates the given files in reverse
  []{#tail}[[**tail**]{.command}]{.term}             Prints the last ten lines (or the given number of lines) of each given file
  []{#tee}[[**tee**]{.command}]{.term}               Reads from standard input while writing both to standard output and to the given files
  []{#test}[[**test**]{.command}]{.term}             Compares values and checks file types
  []{#timeout}[[**timeout**]{.command}]{.term}       Runs a command with a time limit
  []{#touch}[[**touch**]{.command}]{.term}           Changes file timestamps, setting the access and modification times of the given files to the current time; files that do not exist are created with zero length
  []{#tr}[[**tr**]{.command}]{.term}                 Translates, squeezes, and deletes the given characters from standard input
  []{#true}[[**true**]{.command}]{.term}             Does nothing, successfully; it always exits with a status code indicating success
  []{#truncate}[[**truncate**]{.command}]{.term}     Shrinks or expands a file to the specified size
  []{#tsort}[[**tsort**]{.command}]{.term}           Performs a topological sort; it writes a completely ordered list according to the partial ordering in a given file
  []{#tty}[[**tty**]{.command}]{.term}               Reports the file name of the terminal connected to standard input
  []{#uname}[[**uname**]{.command}]{.term}           Reports system information
  []{#unexpand}[[**unexpand**]{.command}]{.term}     Converts spaces to tabs
  []{#uniq}[[**uniq**]{.command}]{.term}             Discards all but one of successive identical lines
  []{#unlink}[[**unlink**]{.command}]{.term}         Removes the given file
  []{#users}[[**users**]{.command}]{.term}           Reports the names of the users currently logged on
  []{#vdir}[[**vdir**]{.command}]{.term}             Is the same as [**ls -l**]{.command}
  []{#wc}[[**wc**]{.command}]{.term}                 Reports the number of lines, words, and bytes for each given file, as well as grand totals when more than one file is given
  []{#who}[[**who**]{.command}]{.term}               Reports who is logged on
  []{#whoami}[[**whoami**]{.command}]{.term}         Reports the user name associated with the current effective user ID
  []{#yes}[[**yes**]{.command}]{.term}               Repeatedly outputs `y`{.literal} or a given string, until killed
  []{#libstdbuf}[`libstdbuf`{.filename}]{.term}      Library used by [**stdbuf**]{.command}
  -------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](kmod.md "Kmod-34.2"){accesskey="p"}

    Kmod-34.2

-   [Next](diffutils.md "Diffutils-3.12"){accesskey="n"}

    Diffutils-3.12

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
