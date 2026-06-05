::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 2. Important Information

-   [Prev](important.md "Important Information"){accesskey="p"}

    Important Information

-   [Next](position.md "The /usr Versus /usr/local Debate"){accesskey="n"}

    The /usr Versus /usr/local Debate

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#unpacking}Notes on Building Software {#notes-on-building-software .sect1}

:::::::::::::::::::::::::: {.sect1 lang="en"}
Those people who have built an LFS system may be aware of the general principles of downloading and unpacking software. Some of that information is repeated here for those new to building their own software.

Each set of installation instructions contains a URL from which you can download the package. The patches; however, are stored on the LFS servers and are available via HTTP. These are referenced as needed in the installation instructions.

While you can keep the source files anywhere you like, we assume that you have unpacked the package and changed into the directory created by the unpacking process (the source directory). We also assume you have uncompressed any required patches and they are in the directory immediately above the source directory.

We can not emphasize strongly enough that you should start from a [*clean source tree*]{.emphasis} each time. This means that if you have had an error during configuration or compilation, it's usually best to delete the source tree and re-unpack it [*before*]{.emphasis} trying again. This obviously doesn't apply if you're an advanced user used to hacking `Makefile`{.filename}s and C code, but if in doubt, start from a clean tree.

::: {.sect2 lang="en"}
## Building Software as an Unprivileged (non-root) User {#building-software-as-an-unprivileged-non-root-user .sect2}

The golden rule of Unix System Administration is to use your superpowers only when necessary. Hence, BLFS recommends that you build software as an unprivileged user and only become the `root`{.systemitem} user when installing the software. This philosophy is followed in all the packages in this book. Unless otherwise specified, all instructions should be executed as an unprivileged user. The book will advise you on instructions that need `root`{.systemitem} privileges.
:::

:::: {.sect2 lang="en"}
## Unpacking the Software {#unpacking-the-software .sect2}

If a file is in `.tar`{.filename} format and compressed, it is unpacked by running one of the following commands:

``` userinput
tar -xvf filename.tar.gz
tar -xvf filename.tgz
tar -xvf filename.tar.Z
tar -xvf filename.tar.bz2
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You may omit using the `v`{.option} parameter in the commands shown above and below if you wish to suppress the verbose listing of all the files in the archive as they are extracted. This can help speed up the extraction as well as make any errors produced during the extraction more obvious to you.
:::

You can also use a slightly different method:

``` userinput
bzcat filename.tar.bz2 | tar -xv
```

Finally, sometimes we have a compressed patch file in `.patch.gz`{.filename} or `.patch.bz2`{.filename} format. The best way to apply the patch is piping the output of the decompressor to the [**patch**]{.command} utility. For example:

``` userinput
zcat ../patchname.patch.gz | patch -p1
```

Or for a patch compressed with [**bzip2**]{.command}:

``` userinput
bzcat ../patchname.patch.bz2 | patch -p1
```
::::

:::: {.sect2 lang="en"}
## Verifying File Integrity {#verifying-file-integrity .sect2}

Generally, to verify that the downloaded file is complete, many package maintainers also distribute md5sums of the files. To verify the md5sum of the downloaded files, download both the file and the corresponding md5sum file to the same directory (preferably from different on-line locations), and (assuming `file.md5sum`{.filename} is the md5sum file downloaded) run the following command:

``` userinput
md5sum -c file.md5sum
```

If there are any errors, they will be reported. Note that the BLFS book includes md5sums for all the source files also. To use the BLFS supplied md5sums, you can create a `file.md5sum`{.filename} (place the md5sum data and the exact name of the downloaded file on the same line of a file, separated by white space) and run the command shown above. Alternately, simply run the command shown below and compare the output to the md5sum data shown in the BLFS book.

``` userinput
md5sum <name_of_downloaded_file>
```

MD5 is not cryptographically secure, so the md5sums are only provided for detecting unmalicious changes to the file content. For example, an error or truncation introduced during network transfer, or a [“[stealth]{.quote}”]{.quote} update to the package from the upstream (updating the content of a released tarball instead of making a new release properly).

There is no [“[100%]{.quote}”]{.quote} secure way to make sure the genuity of the source files. Assuming the upstream is managing their website correctly (the private key is not leaked and the domain is not hijacked), and the trust anchors have been set up correctly using [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} on the BLFS system, we can reasonably trust download URLs to the upstream official website [**with https protocol**]{.bold}. Note that BLFS book itself is published on a website with https, so you should already have some confidence in https protocol or you wouldn't trust the book content.

If the package is downloaded from an unofficial location (for example a local mirror), checksums generated by cryptographically secure digest algorithms (for example SHA256) can be used to verify the genuity of the package. Download the checksum file from the upstream [**official**]{.bold} website (or somewhere [**you can trust**]{.bold}) and compare the checksum of the package from unofficial location with it. For example, SHA256 checksum can be checked with the command:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If the checksum and the package are downloaded from the same untrusted location, you won't gain security enhancement by verifying the package with the checksum. The attacker can fake the checksum as well as compromising the package itself.
:::

``` userinput
sha256sum -c file.sha256sum
```

If [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref} is installed, you can also verify the genuity of the package with a GPG signature. Import the upstream GPG public key with:

``` userinput
gpg --recv-key keyID
```

*`keyID`* should be replaced with the key ID from somewhere [**you can trust**]{.bold} (for example, copy it from the upstream official website using https). Now you can verify the signature with:

``` userinput
gpg --verify file.sig file
```

The advantage of [GnuPG]{.application} signature is, once you imported a public key which can be trusted, you can download both the package and its signature from the same unofficial location and verify them with the public key. So you won't need to connect to the official upstream website to retrieve a checksum for each new release. You only need to update the public key if it's expired or revoked.
::::

::: {.sect2 lang="en"}
## Creating Log Files During Installation {#creating-log-files-during-installation .sect2}

For larger packages, it is convenient to create log files instead of staring at the screen hoping to catch a particular error or warning. Log files are also useful for debugging and keeping records. The following command allows you to create an installation log. Replace *`<command>`* with the command you intend to execute.

``` userinput
( <command> 2>&1 | tee compile.log && exit $PIPESTATUS )
```

`2>&1`{.option} redirects error messages to the same location as standard output. The [**tee**]{.command} command allows viewing of the output while logging the results to a file. The parentheses around the command run the entire command in a subshell and finally the [**exit \$PIPESTATUS**]{.command} command ensures the result of the *`<command>`* is returned as the result and not the result of the [**tee**]{.command} command.
:::

:::: {.sect2 lang="en"}
## []{#parallel-builds}Using Multiple Processors {#using-multiple-processors .sect2}

For many modern systems with multiple processors (or cores) the compilation time for a package can be reduced by performing a "parallel make" by either setting an environment variable or telling the make program to simultaneously execute multiple jobs.

For instance, an Intel Core i9-13900K CPU contains 8 performance (P) cores and 16 efficiency (E) cores, and the P cores support SMT (Simultaneous MultiThreading, also known as [“[Hyper-Threading]{.quote}”]{.quote}) so each P core can run two threads simultaneously and the Linux kernel will treat each P core as two logical cores. As a result, there are 32 logical cores in total. To utilize all these logical cores running [**make**]{.command}, we can set an environment variable to tell [**make**]{.command} to run 32 jobs simultaneously:

``` userinput
export MAKEFLAGS='-j32'
```

or just building with:

``` userinput
make -j32
```

If you have applied the optional [**sed**]{.command} when building [ninja]{.application} in LFS, you can use:

``` userinput
export NINJAJOBS=32
```

when a package uses [**ninja**]{.command}, or just:

``` userinput
ninja -j32
```

If you are not sure about the number of logical cores, run the [**nproc**]{.command} command.

For [**make**]{.command}, the default number of jobs is 1. But for [**ninja**]{.command}, the default number of jobs is N + 2 if the number of logical cores N is greater than 2; or N + 1 if N is 1 or 2. The reason to use a number of jobs slightly greater than the number of logical cores is keeping all logical processors busy even if some jobs are performing I/O operations.

Note that the `-j`{.option} switches only limits the parallel jobs started by [**make**]{.command} or [**ninja**]{.command}, but each job may still spawn its own processes or threads. For example, some tests of packages can spawn multiple threads for testing thread safety properties. There is no generic way for the building system to know the number of processes or threads spawned by a job. So generally we should not consider the value passed with `-j`{.option} a hard limit of the number of logical cores to use. Read [the section called “Use Linux Control Group to Limit the Resource Usage”](notes-on-building.md#build-in-cgroup "Use Linux Control Group to Limit the Resource Usage"){.xref} if you want to set such a hard limit.

Generally the number of processes should not exceed the number of cores supported by the CPU too much. To list the processors on your system, issue: **`grep processor /proc/cpuinfo`**.

In some cases, using multiple processes may result in a race condition where the success of the build depends on the order of the commands run by the [**make**]{.command} program. For instance, if an executable needs File A and File B, attempting to link the program before one of the dependent components is available will result in a failure. This condition usually arises because the upstream developer has not properly designated all the prerequisites needed to accomplish a step in the Makefile.

If this occurs, the best way to proceed is to drop back to a single processor build. Adding `-j1`{.option} to a make command will override the similar setting in the `MAKEFLAGS`{.envar} environment variable.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Another problem may occur with modern CPU's, which have a lot of cores. Each job started consumes memory, and if the sum of the needed memory for each job exceeds the available memory, you may encounter either an OOM (Out of Memory) kernel interrupt or intense swapping that will slow the build beyond reasonable limits.

Some compilations with [**g++**]{.command} may consume up to 2.5 GB of memory, so to be safe, you should restrict the number of jobs to (Total Memory in GB)/2.5, at least for big packages such as LLVM, WebKitGtk, QtWebEngine, or libreoffice.
:::
::::

::: {.sect2 lang="en"}
## []{#build-in-cgroup}Use Linux Control Group to Limit the Resource Usage {#use-linux-control-group-to-limit-the-resource-usage .sect2}

Sometimes we want to limit the resource usage when we build a package. For example, when we have 8 logical cores, we may want to use only 6 cores for building the package and reserve another 2 cores for playing a movie. The Linux kernel provides a feature called control groups (cgroup) for such a need.

Enable control group in the kernel configuration, then rebuild the kernel and reboot if necessary:

``` screen
General setup --->
  [*] Control Group support --->                                       [CGROUPS]
    [*] Memory controller                                                [MEMCG]
    [*] Cpuset controller                                              [CPUSETS]
```

Ensure [Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} and [Shadow-4.19.4](../postlfs/shadow.md "Shadow-4.19.4"){.xref} have been rebuilt with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref} support (if you are interacting via a SSH or graphical session, also ensure the [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref} server or the desktop manager has been built with [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}). As the `root`{.systemitem} user, create a configuration file to allow resource control without `root`{.systemitem} privilege, and instruct [**systemd**]{.command} to reload the configuration:

``` userinput
mkdir -pv /etc/systemd/system/user@.service.d &&
cat > /etc/systemd/system/user@.service.d/delegate.conf << EOF &&
[Service]
Delegate=pids memory cpu cpuset
EOF
systemctl daemon-reload
```

Then logout and login again. Now to run [**make -j5**]{.command} with the first 4 logical cores and 8 GB of system memory, issue:

``` userinput
systemctl   --user start dbus                &&
systemd-run --user --pty --pipe --wait -G -d \
            -p MemoryHigh=8G                 \
            -p AllowedCPUs=0-3               \
            make -j5
```

With [*`MemoryHigh=8G`*,]{.phrase} a soft limit of memory usage is set. If the processes in the cgroup ([**make**]{.command} and all the descendants of it) uses more than 8 GB of system memory in total, the kernel will throttle down the processes and try to reclaim the system memory from them. But they can still use more than 8 GB of system memory. If you want to make a hard limit instead, replace [*`MemoryHigh`* with *`MemoryMax`*.]{.phrase} But doing so will cause the processes killed if 8 GB is not enough for them.

[*`AllowedCPUs=0-3`*]{.phrase} makes the kernel only run the processes in the cgroup on the logical cores with numbers 0, 1, 2, or 3. You may need to adjust this setting based the mapping between the logical cores and the physical cores. For example, with an Intel Core i9-13900K CPU, the logical cores 0, 2, 4, ..., 14 are mapped to the first threads of the eight physical P cores, the logical cores 1, 3, 5, ..., 15 are mapped to the second threads of the physical P cores, and the logical cores 16, 17, ..., 31 are mapped to the 16 physical E cores. So if we want to use four threads from four different P cores, we need to specify `0,2,4,6`{.literal} instead of `0-3`{.literal}. Note that the other CPU models may use a different mapping scheme. If you are not sure about the mapping between the logical cores and the physical cores, run the [**lscpu --extended**]{.command} command which will output logical core IDs in the `CPU`{.computeroutput} column, and physical core IDs in the `CORE`{.computeroutput} column.

When the [**nproc**]{.command} or [**ninja**]{.command} command runs in a cgroup, it will use the number of logical cores assigned to the cgroup as the [“[system logical core count.]{.quote}”]{.quote} For example, in a cgroup with logical cores 0-3 assigned, [**nproc**]{.command} will print `4`{.computeroutput}, and [**ninja**]{.command} will run 6 (4 + 2) jobs simultaneously if no `-j`{.option} setting is explicitly given.

Read the man pages [systemd-run(1)](https://man.archlinux.org/man/systemd-run.1){.ulink} and [systemd.resource-control(5)](https://man.archlinux.org/man/systemd.resource-control.5){.ulink} for the detailed explanation of parameters in the command.
:::

::: {.sect2 lang="en"}
## []{#automating-builds}Automated Building Procedures {#automated-building-procedures .sect2}

There are times when automating the building of a package can come in handy. Everyone has their own reasons for wanting to automate building, and everyone goes about it in their own way. Creating `Makefile`{.filename}s, [Bash]{.application} scripts, [Perl]{.application} scripts or simply a list of commands used to cut and paste are just some of the methods you can use to automate building BLFS packages. Detailing how and providing examples of the many ways you can automate the building of packages is beyond the scope of this section. This section will expose you to using file redirection and the [**yes**]{.command} command to help provide ideas on how to automate your builds.

### File Redirection to Automate Input

You will find times throughout your BLFS journey when you will come across a package that has a command prompting you for information. This information might be configuration details, a directory path, or a response to a license agreement. This can present a challenge to automate the building of that package. Occasionally, you will be prompted for different information in a series of questions. One method to automate this type of scenario requires putting the desired responses in a file and using redirection so that the program uses the data in the file as the answers to the questions.

This effectively makes the test suite use the responses in the file as the input to the questions. Occasionally you may end up doing a bit of trial and error determining the exact format of your input file for some things, but once figured out and documented you can use this to automate building the package.

### Using [**yes**]{.command} to Automate Input

Sometimes you will only need to provide one response, or provide the same response to many prompts. For these instances, the [**yes**]{.command} command works really well. The [**yes**]{.command} command can be used to provide a response (the same one) to one or more instances of questions. It can be used to simulate pressing just the [**Enter**]{.keycap} key, entering the [**Y**]{.keycap} key or entering a string of text. Perhaps the easiest way to show its use is in an example.

First, create a short [Bash]{.application} script by entering the following commands:

``` userinput
cat > blfs-yes-test1 << "EOF"
#!/bin/bash

echo -n -e "\n\nPlease type something (or nothing) and press Enter ---> "

read A_STRING

if test "$A_STRING" = ""; then A_STRING="Just the Enter key was pressed"
else A_STRING="You entered '$A_STRING'"
fi

echo -e "\n\n$A_STRING\n\n"
EOF
chmod 755 blfs-yes-test1
```

Now run the script by issuing [**./blfs-yes-test1**]{.command} from the command line. It will wait for a response, which can be anything (or nothing) followed by the [**Enter**]{.keycap} key. After entering something, the result will be echoed to the screen. Now use the [**yes**]{.command} command to automate the entering of a response:

``` userinput
yes | ./blfs-yes-test1
```

Notice that piping [**yes**]{.command} by itself to the script results in [**y**]{.keycap} being passed to the script. Now try it with a string of text:

``` userinput
yes 'This is some text' | ./blfs-yes-test1
```

The exact string was used as the response to the script. Finally, try it using an empty (null) string:

``` userinput
yes '' | ./blfs-yes-test1
```

Notice this results in passing just the press of the [**Enter**]{.keycap} key to the script. This is useful for times when the default answer to the prompt is sufficient. This syntax is used in the [Net-tools](../basicnet/net-tools.md#net-tools-automate-example){.xref} instructions to accept all the defaults to the many prompts during the configuration step. You may now remove the test script, if desired.

### File Redirection to Automate Output

In order to automate the building of some packages, especially those that require you to read a license agreement one page at a time, requires using a method that avoids having to press a key to display each page. Redirecting the output to a file can be used in these instances to assist with the automation. The previous section on this page touched on creating log files of the build output. The redirection method shown there used the [**tee**]{.command} command to redirect output to a file while also displaying the output to the screen. Here, the output will only be sent to a file.

Again, the easiest way to demonstrate the technique is to show an example. First, issue the command:

``` userinput
ls -l /usr/bin | less
```

Of course, you'll be required to view the output one page at a time because the [**less**]{.command} filter was used. Now try the same command, but this time redirect the output to a file. The special file `/dev/null`{.filename} can be used instead of the filename shown, but you will have no log file to examine:

``` userinput
ls -l /usr/bin | less > redirect_test.log 2>&1
```

Notice that this time the command immediately returned to the shell prompt without having to page through the output. You may now remove the log file.

The last example will use the [**yes**]{.command} command in combination with output redirection to bypass having to page through the output and then provide a [**y**]{.keycap} to a prompt. This technique could be used in instances when otherwise you would have to page through the output of a file (such as a license agreement) and then answer the question of `do you accept the above?`{.computeroutput}. For this example, another short [Bash]{.application} script is required:

``` userinput
cat > blfs-yes-test2 << "EOF"
#!/bin/bash

ls -l /usr/bin | less

echo -n -e "\n\nDid you enjoy reading this? (y,n) "

read A_STRING

if test "$A_STRING" = "y"; then A_STRING="You entered the 'y' key"
else A_STRING="You did NOT enter the 'y' key"
fi

echo -e "\n\n$A_STRING\n\n"
EOF
chmod 755 blfs-yes-test2
```

This script can be used to simulate a program that requires you to read a license agreement, then respond appropriately to accept the agreement before the program will install anything. First, run the script without any automation techniques by issuing [**./blfs-yes-test2**]{.command}.

Now issue the following command which uses two automation techniques, making it suitable for use in an automated build script:

``` userinput
yes | ./blfs-yes-test2 > blfs-yes-test2.log 2>&1
```

If desired, issue [**tail blfs-yes-test2.log**]{.command} to see the end of the paged output, and confirmation that [**y**]{.keycap} was passed through to the script. Once satisfied that it works as it should, you may remove the script and log file.

Finally, keep in mind that there are many ways to automate and/or script the build commands. There is not a single [“[correct]{.quote}”]{.quote} way to do it. Your imagination is the only limit.
:::

:::: {.sect2 lang="en"}
## Dependencies {#dependencies .sect2}

For each package described, BLFS lists the known dependencies. These are listed under several headings, whose meaning is as follows:

::: itemizedlist
-   [*Required*]{.emphasis} means that the target package cannot be correctly built without the dependency having first been installed, except if the dependency is said to be [“[runtime]{.quote}”]{.quote} which means the target package can be built but cannot function without it.

    Note that a target package can start to [“[function]{.quote}”]{.quote} in many subtle ways: an installed configuration file can make the init system, cron daemon, or bus daemon to run a program automatically; another package using the target package as a dependency can run a program from the target package in the building system; and the configuration sections in the BLFS book may also run a program from a just installed package. So if you are installing the target package without a [*Required (runtime)*]{.emphasis} dependency installed, You should install the dependency as soon as possible after the installation of the target package.

-   [*Recommended*]{.emphasis} means that BLFS strongly suggests this package is installed first (except if said to be [“[runtime,]{.quote}”]{.quote} see below) for a clean and trouble-free build, that won't have issues either during the build process, or at run-time. The instructions in the book assume these packages are installed. In many cases, if a recommended dependency (not just [“[runtime]{.quote}”]{.quote}) is not installed, the built package may lack some important functionalities (for example, a video player may be only able to play audio). Sometimes, it's needed to modify the book instructions to disable those important functionalities. In other cases, the build system of the package may build a copy of the dependency (often outdated and sometimes with known security vulnerabilities) shipped in the source tree, or may be downloaded from the Internet during the build process. This increases build time and disk usage. This could potentially cause other problems. If a recommended dependency is said to be [“[runtime,]{.quote}”]{.quote} it means that BLFS strongly suggests that this dependency is installed before using the package, for getting full functionality.

-   [*Optional*]{.emphasis} means that this package might be installed for added functionality. Often BLFS will describe the dependency to explain the added functionality that will result. Some optional dependencies are automatically picked up by the target package if the dependency is installed, while others also need additional configuration options to be enabled when the target package is built. Such additional options are often documented in the BLFS book. If an optional dependency is said to be [“[runtime,]{.quote}”]{.quote} it means you may install the dependency after installing the target package to support some optional features of the target package if you need these features.

    An optional dependency may be out of BLFS. If you need such an [*external*]{.emphasis} optional dependency for some features you need, read [Going Beyond BLFS](beyond.md "Going Beyond BLFS"){.xref} for the general hint about installing an out-of-BLFS package. Note that the BLFS editors don't test a configuration with external packages in general, thus there is absolutely no quality assurance for the external dependencies listed in the book. The list of external dependencies may be incomplete or contain some redundant item. In the worst case, the mere existence of an external dependency on the system can trigger a bug in the package, causing a build or runtime failure.
:::
::::

::: {.sect2 lang="en"}
## []{#package_updates}Using the Most Current Package Sources {#using-the-most-current-package-sources .sect2}

On occasion you may run into a situation in the book when a package will not build or work properly. Though the Editors attempt to ensure that every package in the book builds and works properly, sometimes a package has been overlooked or was not tested with this particular version of BLFS.

If you discover that a package will not build or work properly, you should see if there is a more current version of the package. Typically this means you go to the maintainer's web site and download the most current tarball and attempt to build the package. If you cannot determine the maintainer's web site by looking at the download URLs, use Google and query the package's name. For example, in the Google search bar type: 'package_name download' (omit the quotes) or something similar. Sometimes typing: 'package_name home page' will result in you finding the maintainer's web site.
:::

::::: {.sect2 lang="en"}
## []{#stripping}Stripping One More Time {#stripping-one-more-time .sect2}

In LFS, stripping of debugging symbols and unneeded symbol table entries was discussed a couple of times. When building BLFS packages, there are generally no special instructions that discuss stripping again. Stripping can be done while installing a package, or afterwards.

### []{#stripping-install}Stripping while Installing a Package

There are several ways to strip executables installed by a package. They depend on the build system used (see below [the section about build systems](notes-on-building.md#buildsystems "Working with different build systems"){.link}), so only some generalities can be listed here:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The following methods using the feature of a building system (autotools, meson, or cmake) will not strip static libraries if any is installed. Fortunately there are not too many static libraries in BLFS, and a static library can always be stripped safely by running [**strip --strip-unneeded**]{.command} on it manually.
:::

::: itemizedlist
-   The packages using autotools usually have an *`install-strip`* target in their generated `Makefile`{.filename} files. So installing stripped executables is just a matter of using [**make install-strip**]{.command} instead of [**make install**]{.command}.

-   The packages using the meson build system can accept *`-D strip=true`* when running [**meson**]{.command}. If you've forgot to add this option running the [**meson**]{.command}, you can also run [**meson install --strip**]{.command} instead of [**ninja install**]{.command}.

-   [**cmake**]{.command} generates *`install/strip`* targets for both the *`Unix Makefiles`* and *`Ninja`* generators (the default is *`Unix Makefiles`* on linux). So just run [**make install/strip**]{.command} or [**ninja install/strip**]{.command} instead of the [**install**]{.command} counterparts.

-   Removing (or not generating) debug symbols can also be achieved by removing the *`-g<something>`* options in C/C++ calls. How to do that is very specific for each package. And, it does not remove unneeded symbol table entries. So it will not be explained in detail here. See also below the paragraphs about optimization.
:::

### []{#stripping-installed}Stripping Installed Executables

The [**strip**]{.command} utility changes files in place, which may break anything using it if it is loaded in memory. Note that if a file is in use but just removed from the disk (i.e. not overwritten nor modified), this is not a problem since the kernel can use [“[deleted]{.quote}”]{.quote} files. Look at `/proc/*/maps`{.filename} and it is likely that you'll see some [*(deleted)*]{.emphasis} entries. The [**mv**]{.command} just removes the destination file from the directory but does not touch its content, so that it satisfies the condition for the kernel to use the old (deleted) file. But this approach can detach hard links into duplicated copies, causing a bloat which is obviously unwanted as we are stripping to reduce system size. If two files in a same file system share the same inode number, they are hard links to each other and we should reconstruct the link. The script below is just an example. It should be run as the `root`{.systemitem} user:

``` userinput
cat > /usr/sbin/strip-all.sh << "EOF"
#!/usr/bin/bash

if [ $EUID -ne 0 ]; then
  echo "Need to be root"
  exit 1
fi

last_fs_inode=
last_file=

{ find /usr/lib -type f -name '*.so*' ! -name '*dbg'
  find /usr/lib -type f -name '*.a'
  find /usr/{bin,sbin,libexec} -type f
} | xargs stat -c '%m %i %n' | sort | while read fs inode file; do
       if ! readelf -h $file >/dev/null 2>&1; then continue; fi
       if file $file | grep --quiet --invert-match 'not stripped'; then continue; fi

       if [ "$fs $inode" = "$last_fs_inode" ]; then
         ln -f $last_file $file;
         continue;
       fi

       cp --preserve $file    ${file}.tmp
       strip --strip-unneeded ${file}.tmp
       mv ${file}.tmp $file

       last_fs_inode="$fs $inode"
       last_file=$file
done
EOF
chmod 744 /usr/sbin/strip-all.sh
```

If you install programs in other directories such as `/opt`{.filename} or `/usr/local`{.filename}, you may want to strip the files there too. Just add other directories to scan in the compound list of [**find**]{.command} commands between the braces.

For more information on stripping, see [https://www.technovelty.org/linux/stripping-shared-libraries.html](https://www.technovelty.org/linux/stripping-shared-libraries.md){.ulink}.
:::::

::::: {.sect2 lang="en"}
## []{#buildsystems}Working with different build systems {#working-with-different-build-systems .sect2}

There are now three different build systems in common use for converting C or C++ source code into compiled programs or libraries and their details (particularly, finding out about available options and their default values) differ. It may be easiest to understand the issues caused by some choices (typically slow execution or unexpected use of, or omission of, optimizations) by starting with the `CFLAGS`{.envar}, `CXXFLAGS`{.envar}, and `LDFLAGS`{.envar} environment variables. There are also some programs which use Rust.

Most LFS and BLFS builders are probably aware of the basics of `CFLAGS`{.envar} and `CXXFLAGS`{.envar} for altering how a program is compiled. Typically, some form of optimization is used by upstream developers (`-O2`{.option} or `-O3`{.option}), sometimes with the creation of debug symbols (`-g`{.option}), as defaults.

If there are contradictory flags (e.g. multiple different `-O`{.option} values), the [*last*]{.emphasis} value will be used. Sometimes this means that flags specified in environment variables will be picked up before values hardcoded in the Makefile, and therefore ignored. For example, where a user specifies `-O2`{.option} and that is followed by `-O3`{.option} the build will use `-O3`{.option}.

There are various other things which can be passed in CFLAGS or CXXFLAGS, such as allowing using the instruction set extensions available with a specific microarchitecture (e.g. `-march=amdfam10`{.option} or `-march=native`{.option}), tune the generated code for a specific microarchitecture (e. g. `-mtune=tigerlake`{.option} or `-mtune=native`{.option}, if `-mtune=`{.option} is not used, the microarchitecture from `-march=`{.option} setting will be used), or specifying a specific standard for C or C++ (`-std=c++17`{.option} for example). But one thing which has now come to light is that programmers might include debug assertions in their code, expecting them to be disabled in releases by using `-D NDEBUG`{.option}. Specifically, if [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref} is built with these assertions enabled, some activities such as loading levels of games can take extremely long times, even on high-class video cards.

### []{#autotools-info}Autotools with Make

This combination is often described as [“[CMMI]{.quote}”]{.quote} (configure, make, make install) and is used here to also cover the few packages which have a configure script that is not generated by autotools.

Sometimes running [**./configure --help**]{.command} will produce useful options about switches which might be used. At other times, after looking at the output from configure you may need to look at the details of the script to find out what it was actually searching for.

Many configure scripts will pick up any CFLAGS or CXXFLAGS from the environment, but CMMI packages vary about how these will be mixed with any flags which would otherwise be used ([*variously*]{.emphasis}: ignored, used to replace the programmer's suggestion, used before the programmer's suggestion, or used after the programmer's suggestion).

In most CMMI packages, running [**make**]{.command} will list each command and run it, interspersed with any warnings. But some packages try to be [“[silent]{.quote}”]{.quote} and only show which file they are compiling or linking instead of showing the command line. If you need to inspect the command, either because of an error, or just to see what options and flags are being used, adding `V=1`{.option} to the make invocation may help.

### []{#cmake-info}CMake

CMake works in a very different way, and it has two backends which can be used on BLFS: [**make**]{.command} and [**ninja**]{.command}. The default backend is make, but ninja can be faster on large packages with multiple processors. To use ninja, specify `-G Ninja`{.option} in the cmake command. However, there are some packages which create fatal errors in their ninja files but build successfully using the default of Unix Makefiles.

The hardest part of using CMake is knowing what options you might wish to specify. The only way to get a list of what the package knows about is to run [**cmake -LAH**]{.command} and look at the output for that default configuration.

Perhaps the most-important thing about CMake is that it has a variety of CMAKE_BUILD_TYPE values, and these affect the flags. The default is that this is not set and no flags are generated. Any `CFLAGS`{.envar} or `CXXFLAGS`{.envar} in the environment will be used. If the programmer has coded any debug assertions, those will be enabled unless -D NDEBUG is used. The following CMAKE_BUILD_TYPE values will generate the flags shown, and these will come [*after*]{.emphasis} any flags in the environment and therefore take precedence.

::: informaltable
       Value                   Flags
  ---------------- -----------------------------
       Debug               `-g`{.option}
      Release        `-O3 -D NDEBUG`{.option}
   RelWithDebInfo   `-O2 -g -D NDEBUG`{.option}
     MinSizeRel      `-Os -D NDEBUG`{.option}
:::

CMake tries to produce quiet builds. To see the details of the commands which are being run, use [**make VERBOSE=1**]{.command} or [**ninja -v**]{.command}.

By default, CMake treats file installation differently from the other build systems: if a file already exists and is not newer than a file that would overwrite it, then the file is not installed. This may be a problem if a user wants to record which file belongs to a package, either using `LD_PRELOAD`{.envar}, or by listing files newer than a timestamp. The default can be changed by setting the variable `CMAKE_INSTALL_ALWAYS`{.envar} to 1 in the [*environment*]{.emphasis}, for example by [**export**]{.command}'ing it.

### []{#meson-info}Meson

Meson has some similarities to CMake, but many differences. To get details of the defines that you may wish to change you can look at `meson_options.txt`{.filename} which is usually in the top-level directory.

If you have already configured the package by running [**meson**]{.command} and now wish to change one or more settings, you can either remove the build directory, recreate it, and use the altered options, or within the build directory run [**meson configure**]{.command}, e.g. to set an option:

``` userinput
meson configure -D <some_option>=true
```

If you do that, the file `meson-private/cmd_line.txt`{.filename} will show the [*last*]{.emphasis} commands which were used.

Meson provides the following buildtype values, and the flags they enable come [*after*]{.emphasis} any flags supplied in the environment and therefore take precedence.

::: itemizedlist
-   plain: no added flags. This is for distributors to supply their own `CFLAGS`{.envar}, `CXXFLAGS`{.envar} and `LDFLAGS`{.envar}. There is no obvious reason to use this in BLFS.

-   debug: `-g`{.option} - this is the default if nothing is specified in either `meson.build`{.filename} or the command line. However it results large and slow binaries, so we should override it in BLFS.

-   debugoptimized: `-O2 -g`{.option} - this is the default specified in `meson.build`{.filename} of some packages.

-   release: `-O3`{.option} (occasionally a package will force `-O2`{.option} here) - this is the buildtype we use for most packages with Meson build system in BLFS.
:::

The `-D NDEBUG`{.option} flag is implied by the release buildtype for some packages (for example [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}). It can also be provided explicitly by passing `-D b_ndebug=true`{.option}.

To see the details of the commands which are being run in a package using meson, use [**ninja -v**]{.command}.

### []{#rust-info}Rustc and Cargo

Most released rustc programs are provided as crates (source tarballs) which will query a server to check current versions of dependencies and then download them as necessary. These packages are built using [**cargo --release**]{.command}. In theory, you can manipulate the RUSTFLAGS to change the optimize-level (default for `--release`{.option} is 3, i. e. `-Copt-level=3`{.option}, like `-O3`{.option}) or to force it to build for the machine it is being compiled on, using `-Ctarget-cpu=native`{.option} but in practice this seems to make no significant difference.

If you are compiling a standalone Rust program (as an unpackaged `.rs`{.filename} file) by running [**rustc**]{.command} directly, you should specify `-O`{.option} (the abbreviation of `-Copt-level=2`{.option}) or `-Copt-level=3`{.option} otherwise it will do an unoptimized compile and run [*much*]{.emphasis} slower. If you are compiling the program for debugging it, replace the `-O`{.option} or `-Copt-level=`{.option} options with `-g`{.option} to produce an unoptimized program with debug info.

Like [**ninja**]{.command}, by default [**cargo**]{.command} uses all logical cores. This can often be worked around, either by exporting `CARGO_BUILD_JOBS=`{.envar}*`<N>`* or passing `--jobs `{.option}*`<N>`* to [**cargo**]{.command}. For compiling rustc itself, specifying `--jobs `{.option}*`<N>`* for invocations of [**x.py**]{.command} (together with the `CARGO_BUILD_JOBS`{.envar} environment variable, which looks like a [“[belt and braces]{.quote}”]{.quote} approach but seems to be necessary) mostly works. The exception is running the tests when building rustc, some of them will nevertheless use all online CPUs, at least as of rustc-1.42.0.

#### []{#cargo-offline}Building offline with Cargo

One of the problems with [Cargo]{.application} is that the needed crates are downloaded on the fly, which makes it so that [**cargo build**]{.command} cannot be run offline. Another annoyance is that the needed crates are downloaded to the directory `~/.cargo`{.filename}, which may clutter the user's or `root`{.systemitem}'s home directory. For those who want to have some more control on the download location for the crates, it is possible to set the variable `CARGO_HOME`{.envar} to the desired location in the environment, for example:

``` userinput
export CARGO_HOME=/sources/cargo
```

It is also possible to have all the needed crates downloaded at once before building a package. We'll give two methods, which may have to be adapted to the particular package that is built. The simplest one is to download the needed packages by running [**cargo fetch**]{.command} from the directory containing the top-level `Cargo.toml`{.filename} file. The packages are downloaded to `$CARGO_HOME`{.envar} (or `~/.cargo`{.filename}), and can be used offline in the build instructions. But this may fail in some cases, for example for packages that redefine `CARGO_HOME`{.envar} in their build system. In this case, the following instructions (run from the directory containing the top `Cargo.toml`{.filename}), will create a [“[vendor]{.quote}”]{.quote} directory containing the source crates and will use it offline. Note that the crates are also downloaded to `$CARGO_HOME`{.envar} by the [**cargo vendor**]{.command} command:

``` userinput
cargo vendor    &&
mkdir -v .cargo &&
cat > .cargo/config.toml << EOF
[source.crates-io]
replace-with = "vendored-sources"

[source.vendored-sources]
directory = "vendor"
EOF
```

After this, the instructions can be run as in the book.
:::::

:::: {.sect2 lang="en"}
## []{#optimizations}Optimizing the build {#optimizing-the-build .sect2}

Many people will prefer to optimize compiles as they see fit, by providing `CFLAGS`{.envar} or `CXXFLAGS`{.envar}. For an introduction to the options available with gcc and g++ see [https://gcc.gnu.org/onlinedocs/gcc-16.1.0/gcc/Optimize-Options.html](https://gcc.gnu.org/onlinedocs/gcc-16.1.0/gcc/Optimize-Options.md){.ulink}. The same content can be also found in [**info gcc**]{.command}.

Some packages default to `-O2 -g`{.option}, others to `-O3 -g`{.option}, and if `CFLAGS`{.envar} or `CXXFLAGS`{.envar} are supplied they might be added to the package's defaults, replace the package's defaults, or even be ignored. There are details on some desktop packages which were mostly current in April 2019 at [https://www.linuxfromscratch.org/\~ken/tuning/](https://www.linuxfromscratch.org/~ken/tuning/){.ulink} - in particular, `README.txt`{.filename}, `tuning-1-packages-and-notes.txt`{.filename}, and `tuning-notes-2B.txt`{.filename}. The particular thing to remember is that if you want to try some of the more interesting flags you may need to force verbose builds to confirm what is being used.

Clearly, if you are optimizing your own program you can spend time to profile it and perhaps recode some of it if it is too slow. But for building a whole system that approach is impractical. In general, `-O3`{.option} usually produces faster programs than `-O2`{.option}. Specifying `-march=native`{.option} is also beneficial, but means that you cannot move the binaries to an incompatible machine - this can also apply to newer machines, not just to older machines. For example programs compiled for `amdfam10`{.literal} run on old Phenoms, Kaveris, and Ryzens, but programs compiled for a Kaveri will not run on a Ryzen because certain op-codes are not present. Similarly, if you build for a Haswell not everything will run on a SandyBridge.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Be careful that the name of a `-march`{.option} setting does not always match the baseline of the microarchitecture with the same name. For example, the Skylake-based Intel Celeron processors do not support AVX at all, but `-march=skylake`{.option} assumes AVX and even AVX2.
:::

When a shared library is built by GCC, a feature named [“[semantic interposition]{.quote}”]{.quote} is enabled by default. When the shared library refers to a symbol name with external linkage and default visibility, if the symbol exists in both the shared library and the main executable, semantic interposition guarantees the symbol in the main executable is always used. This feature was invented in an attempt to make the behavior of linking a shared library and linking a static library as similar as possible. Today only a small number of packages still depend on semantic interposition, but the feature is still on by the default of GCC, causing many optimizations disabled for shared libraries because they conflict with semantic interposition. The `-fno-semantic-interposition`{.option} option can be passed to [**gcc**]{.command} or [**g++**]{.command} to disable semantic interposition and enable more optimizations for shared libraries. This option is used as the default of some packages (for example [Python-3.14.5](../general/python3.md "Python-3.14.5"){.xref}), and it's also the default of Clang.

There are also various other options which some people claim are beneficial. At worst, you get to recompile and test, and then discover that in your usage the options do not provide a benefit.

If building Perl or Python modules, in general the `CFLAGS`{.envar} and `CXXFLAGS`{.envar} used are those which were used by those [“[parent]{.quote}”]{.quote} packages.

For `LDFLAGS`{.envar}, three options can be used for optimization. They are quite safe to use and the building system of some packages use some of these options as the default.

With `-Wl,-O1`{.option}, the linker will optimize the hash table to speed up the dynamic linking. Note that `-Wl,-O1`{.option} is completely unrelated to the compiler optimization flag `-O1`{.option}.

With `-Wl,--as-needed`{.option}, the linker will disregard unnecessary `-l`{.option}*`foo`* options from the command line, i. e. the shared library `lib`{.systemitem}*`foo`* will only be linked if a symbol in `lib`{.systemitem}*`foo`* is really referred from the executable or shared library being linked. This can sometimes mitigate the [“[excessive dependencies to shared libraries]{.quote}”]{.quote} issues caused by [libtool]{.application}.

With `-Wl,-z,pack-relative-relocs`{.option}, the linker generates a more compacted form of the relative relocation entries for PIEs and shared libraries. It reduces the size of the linked PIE or shared library, and speeds up the loading of the PIE or shared library.

The `-Wl,`{.option} prefix is necessary because despite the variable is named `LDFLAGS`{.envar}, its content is actually passed to [**gcc**]{.command} (or [**g++**]{.command}, [**clang**]{.command}, etc.) during the link stage, not directly passed to [**ld**]{.command}.
::::

:::: {.sect2 lang="en"}
## []{#hardening}Options for hardening the build {#options-for-hardening-the-build .sect2}

Even on desktop systems, there are still a lot of exploitable vulnerabilities. For many of these, the attack comes via javascript in a browser. Often, a series of vulnerabilities are used to gain access to data (or sometimes to pwn, i.e. own, the machine and install rootkits). Most commercial distros will apply various hardening measures.

In the past, there was Hardened LFS where gcc (a much older version) was forced to use hardening (with options to turn some of it off on a per-package basis). The current LFS and BLFS books are carrying forward a part of its spirit by enabling PIE (`-fPIE -pie`{.option}) and SSP (`-fstack-protector-strong`{.option}) as the defaults for GCC and clang. And, the linker ([**ld**]{.command}) has also enabled `-Wl,-z,relro`{.option} which makes a part of the Global Offset Table (GOT) immutable, by default since Binutils 2.27. What is being covered here is different - first you have to make sure that the package is indeed using your added flags and not over-riding them.

For hardening options which are reasonably cheap, there is some discussion in the 'tuning' link above (occasionally, one or more of these options might be inappropriate for a package). These options are `-D _FORTIFY_SOURCE=2`{.option} (or `-D _FORTIFY_SOURCE=3`{.option} which is more secure but with a larger performance overhead) and (for C++) `-D _GLIBCXX_ASSERTIONS`{.option}. On modern machines these should only have a little impact on how fast things run, and often they will not be noticeable.

The main distros use much more, such as:

::: itemizedlist
-   `-Wl,-z,now`{.option}: disables lazy binding to enhance `-Wl,-z,relro`{.option}, so the [*entire*]{.emphasis} GOT can be made immutable.

-   `-fstack-clash-protection`{.option}: prevents the attacker from using an offset large enough and not adequately checked to jump over the stack guard page placed by the kernel and the stack canary placed by `-fstack-protector=strong`{.option}, and modify the stack from a heap address, or vice versa.

-   `-ftrivial-auto-var-init=zero`{.option}: initializes some variables by filling zero bytes if they are not initialized by other means.

-   `-fcf-protection=full`{.option}: utilizes Intel and AMD CET technology to limit the target addresses of control-flow transfer instructions. To make it really effective for a package, all packages providing a shared library for the package to use must be built with this option, as well as that package itself, Glibc must be configured with the `--enable-cet`{.option} option enabled, and the system must run on Intel Tiger Lake or newer, or AMD Zen 3 or newer. If the criteria is not met the program compiled with this option will still run, but not really protected by CET.
:::

In GCC 14, the option `-fhardened`{.option} is a shorthand to enable all the hardening options mentioned above. It sets `-D _FORTIFY_SOURCE=3`{.option} instead of `-D _FORTIFY_SOURCE=2`{.option}.

You may also encounter the so-called [“[userspace retpoline]{.quote}”]{.quote} (`-mindirect-branch=thunk`{.option} etc.) which is the equivalent of the spectre mitigations applied to the linux kernel in late 2018. The kernel mitigations caused a lot of complaints about lost performance, if you have a production server you might wish to consider testing that, along with the other available options, to see if performance is still sufficient.

Whilst gcc has many hardening options, clang/LLVM's strengths lie elsewhere. Some options which gcc provides are said to be less effective in clang/LLVM.
::::
::::::::::::::::::::::::::

::: navfooter
-   [Prev](important.md "Important Information"){accesskey="p"}

    Important Information

-   [Next](position.md "The /usr Versus /usr/local Debate"){accesskey="n"}

    The /usr Versus /usr/local Debate

-   [Up](important.md "Chapter 2. Important Information"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
