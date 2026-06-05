::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](man-pages.md "Man-pages-6.18"){accesskey="n"}

    Man-pages-6.18

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-pkgmgt}8.2. Package Management {#package-management .sect1}

:::::::::::::::::: {.sect1 lang="en"}
Package Management is an often requested addition to the LFS Book. A Package Manager tracks the installation of files, making it easier to remove and upgrade packages. A good package manager will also handle the configuration files specially to keep the user configuration when the package is reinstalled or upgraded. Before you begin to wonder, NO---this section will not talk about nor recommend any particular package manager. What it does provide is a roundup of the more popular techniques and how they work. The perfect package manager for you may be among these techniques, or it may be a combination of two or more of these techniques. This section briefly mentions issues that may arise when upgrading packages.

Some reasons why no package manager is mentioned in LFS or BLFS include:

::: itemizedlist
-   Dealing with package management takes the focus away from the goals of these books---teaching how a Linux system is built.

-   There are multiple solutions for package management, each having its strengths and drawbacks. Finding one solution that satisfies all audiences is difficult.
:::

There are some hints written on the topic of package management. Visit the [Hints Project](https://www.linuxfromscratch.org/hints/downloads/files/){.ulink} and see if one of them fits your needs.

:::: {.sect2 lang="en"}
## []{#pkgmgmt-upgrade-issues}8.2.1. Upgrade Issues {#upgrade-issues .sect2}

A Package Manager makes it easy to upgrade to newer versions when they are released. Generally the instructions in the LFS and BLFS books can be used to upgrade to the newer versions. Here are some points that you should be aware of when upgrading packages, especially on a running system.

::: itemizedlist
-   If the Linux kernel needs to be upgraded (for example, from 5.10.17 to 5.10.18 or 5.11.1), nothing else needs to be rebuilt. The system will keep working fine thanks to the well-defined interface between the kernel and userspace. Specifically, Linux API headers need not be upgraded along with the kernel. You will merely need to reboot your system to use the upgraded kernel.

-   If Glibc needs to be upgraded to a newer version, (e.g., from Glibc-2.36 to Glibc-2.43), some extra steps are needed to avoid breaking the system. Read [Section 8.5, "Glibc-2.43"](glibc.md "8.5. Glibc-2.43"){.xref} for details.

-   If a package containing a shared library is updated, and if the name of the library[^\[1\]^](#ftn.idm140276759046320){#idm140276759046320 .footnote} changes, then any packages dynamically linked to the library must be recompiled, to link against the newer library. For example, consider a package foo-1.2.3 that installs a shared library with the name `libfoo.so.1`{.filename}. Suppose you upgrade the package to a newer version foo-1.2.4 that installs a shared library with the name `libfoo.so.2`{.filename}. In this case, any packages that are dynamically linked to `libfoo.so.1`{.filename} need to be recompiled to link against `libfoo.so.2`{.filename} in order to use the new library version. You should not remove the old libraries until all the dependent packages have been recompiled.

-   If a package is (directly or indirectly) linked to both the old and new names of a shared library (for example, the package links to both `libfoo.so.2`{.filename} and `libbar.so.1`{.filename}, while the latter links to `libfoo.so.3`{.filename}), the package may malfunction because the different revisions of the shared library present incompatible definitions for some symbol names. This can be caused by recompiling some, but not all, of the packages linked to the old shared library after the package providing the shared library is upgraded. To avoid the issue, users will need to rebuild every package linked to a shared library with an updated revision (e.g. libfoo.so.2 to libfoo.so.3) as soon as possible.

-   If a package containing a shared library is updated, and the name of the library doesn\'t change, but the version number of the library [**file**]{.bold} decreases (for example, the library is still named `libfoo.so.1`{.filename}, but the name of the library file is changed from `libfoo.so.1.25`{.filename} to `libfoo.so.1.24`{.filename}), you should remove the library file from the previously installed version (`libfoo.so.1.25`{.filename} in this case). Otherwise, a [**ldconfig**]{.command} command (invoked by yourself from the command line, or by the installation of some package) will reset the symlink `libfoo.so.1`{.filename} to point to the old library file because it seems to be a ["[newer]{.quote}"]{.quote} version; its version number is larger. This situation may arise if you have to downgrade a package, or if the authors change the versioning scheme for library files.

-   If a package containing a shared library is updated, and the name of the library doesn\'t change, but a severe issue (especially, a security vulnerability) is fixed, all running programs linked to the shared library should be restarted. The following command, run as `root`{.systemitem} after the update is complete, will list which processes are using the old versions of those libraries (replace *`libfoo`* with the name of the library):

    ``` userinput
    grep -l 'libfoo.*deleted' /proc/*/maps | tr -cd 0-9\\n | xargs -r ps u
    ```

    If [OpenSSH]{.application} is being used to access the system and it is linked to the updated library, you must restart the [**sshd**]{.command} service, then logout, login again, and run the preceding command again to confirm that nothing is still using the deleted libraries.

    If the [**systemd**]{.command} daemon (running as PID 1) is linked to the updated library, you can restart it without rebooting by running [**systemctl daemon-reexec**]{.command} as the `root`{.systemitem} user.

-   If an executable program or a shared library is overwritten, the processes using the code or data in that program or library may crash. The correct way to update a program or a shared library without causing the process to crash is to remove it first, then install the new version. The [**install**]{.command} command provided by [coreutils]{.application} has already implemented this, and most packages use that command to install binary files and libraries. This means that you won\'t be troubled by this issue most of the time. However, the install process of some packages (notably SpiderMonkey in BLFS) just overwrites the file if it exists; this causes a crash. So it\'s safer to save your work and close unneeded running processes before updating a package.
:::
::::

:::::::::: {.sect2 lang="en"}
## 8.2.2. Package Management Techniques {#package-management-techniques .sect2}

The following are some common package management techniques. Before making a decision on a package manager, do some research on the various techniques, particularly the drawbacks of each particular scheme.

::: sect3
### 8.2.2.1. It is All in My Head! {#it-is-all-in-my-head .sect3}

Yes, this is a package management technique. Some folks do not need a package manager because they know the packages intimately and know which files are installed by each package. Some users also do not need any package management because they plan on rebuilding the entire system whenever a package is changed.
:::

::: sect3
### 8.2.2.2. Install in Separate Directories {#install-in-separate-directories .sect3}

This is a simplistic package management technique that does not need a special program to manage the packages. Each package is installed in a separate directory. For example, package foo-1.1 is installed in `/opt/foo-1.1`{.filename} and a symlink is made from `/opt/foo`{.filename} to `/opt/foo-1.1`{.filename}. When a new version foo-1.2 comes along, it is installed in `/opt/foo-1.2`{.filename} and the previous symlink is replaced by a symlink to the new version.

Environment variables such as `PATH`{.envar}, `MANPATH`{.envar}, `INFOPATH`{.envar}, `PKG_CONFIG_PATH`{.envar}, `CPPFLAGS`{.envar}, `LDFLAGS`{.envar}, and the configuration file `/etc/ld.so.conf`{.filename} may need to be expanded to include the corresponding subdirectories in `/opt/foo-x.y`{.filename}.

This scheme is used by the BLFS book to install some very large packages to make it easier to upgrade them. If you install more than a few packages, this scheme becomes unmanageable. And some packages (for example Linux API headers and Glibc) may not work well with this scheme. [**Never use this scheme system-wide.**]{.bold}
:::

::: sect3
### 8.2.2.3. Symlink Style Package Management {#symlink-style-package-management .sect3}

This is a variation of the previous package management technique. Each package is installed as in the previous scheme. But instead of making the symlink via a generic package name, each file is symlinked into the `/usr`{.filename} hierarchy. This removes the need to expand the environment variables. Though the symlinks can be created by the user, many package managers use this approach, and automate the creation of the symlinks. A few of the popular ones include Stow, Epkg, Graft, and Depot.

The installation script needs to be fooled, so the package thinks it is installed in `/usr`{.filename} though in reality it is installed in the `/usr/pkg`{.filename} hierarchy. Installing in this manner is not usually a trivial task. For example, suppose you are installing a package libfoo-1.1. The following instructions may not install the package properly:

``` userinput
./configure --prefix=/usr/pkg/libfoo/1.1
make
make install
```

The installation will work, but the dependent packages may not link to libfoo as you would expect. If you compile a package that links against libfoo, you may notice that it is linked to `/usr/pkg/libfoo/1.1/lib/libfoo.so.1`{.filename} instead of `/usr/lib/libfoo.so.1`{.filename} as you would expect. The correct approach is to use the `DESTDIR`{.envar} variable to direct the installation. This approach works as follows:

``` userinput
./configure --prefix=/usr
make
make DESTDIR=/usr/pkg/libfoo/1.1 install
```

Most packages support this approach, but there are some which do not. For the non-compliant packages, you may either need to install the package manually, or you may find that it is easier to install some problematic packages into `/opt`{.filename}.
:::

::: sect3
### 8.2.2.4. Timestamp Based {#timestamp-based .sect3}

In this technique, a file is timestamped before the installation of the package. After the installation, a simple use of the [**find**]{.command} command with the appropriate options can generate a log of all the files installed after the timestamp file was created. A package manager that uses this approach is install-log.

Though this scheme has the advantage of being simple, it has two drawbacks. If, during installation, the files are installed with any timestamp other than the current time, those files will not be tracked by the package manager. Also, this scheme can only be used when packages are installed one at a time. The logs are not reliable if two packages are installed simultaneously from two different consoles.
:::

::: sect3
### 8.2.2.5. Tracing Installation Scripts {#tracing-installation-scripts .sect3}

In this approach, the commands that the installation scripts perform are recorded. There are two techniques that one can use:

The `LD_PRELOAD`{.envar} environment variable can be set to point to a library to be preloaded before installation. During installation, this library tracks the packages that are being installed by attaching itself to various executables such as [**cp**]{.command}, [**install**]{.command}, [**mv**]{.command} and tracking the system calls that modify the filesystem. For this approach to work, all the executables need to be dynamically linked without the suid or sgid bit. Preloading the library may cause some unwanted side-effects during installation. Therefore, it\'s a good idea to perform some tests to ensure that the package manager does not break anything, and that it logs all the appropriate files.

Another technique is to use [**strace**]{.command}, which logs all the system calls made during the execution of the installation scripts.
:::

::: sect3
### 8.2.2.6. Creating Package Archives {#creating-package-archives .sect3}

In this scheme, the package installation is faked into a separate tree as previously described in the symlink style package management section. After the installation, a package archive is created using the installed files. This archive is then used to install the package on the local machine or even on other machines.

This approach is used by most of the package managers found in the commercial distributions. Examples of package managers that follow this approach are RPM (which, incidentally, is required by the [Linux Standard Base Specification](https://refspecs.linuxfoundation.org/lsb.shtml){.ulink}), pkg-utils, Debian\'s apt, and Gentoo\'s Portage system. A hint describing how to adopt this style of package management for LFS systems is located at [https://www.linuxfromscratch.org/hints/downloads/files/fakeroot.txt](https://www.linuxfromscratch.org/hints/downloads/files/fakeroot.txt){.ulink}.

The creation of package files that include dependency information is complex, and beyond the scope of LFS.

Slackware uses a [**tar**]{.command}-based system for package archives. This system purposely does not handle package dependencies as more complex package managers do. For details of Slackware package management, see [https://www.slackbook.org/html/package-management.html](https://www.slackbook.org/html/package-management.html){.ulink}.
:::

::: sect3
### 8.2.2.7. User Based Management {#user-based-management .sect3}

This scheme, unique to LFS, was devised by Matthias Benkmann, and is available from the [Hints Project](https://www.linuxfromscratch.org/hints/downloads/files/){.ulink}. In this scheme, each package is installed as a separate user into the standard locations. Files belonging to a package are easily identified by checking the user ID. The features and shortcomings of this approach are too complex to describe in this section. For the details please see the hint at [https://www.linuxfromscratch.org/hints/downloads/files/more_control_and_pkg_man.txt](https://www.linuxfromscratch.org/hints/downloads/files/more_control_and_pkg_man.txt){.ulink}.
:::
::::::::::

:::: {.sect2 lang="en"}
## 8.2.3. Deploying LFS on Multiple Systems {#deploying-lfs-on-multiple-systems .sect2}

One of the advantages of an LFS system is that there are no files that depend on the position of files on a disk system. Cloning an LFS build to another computer with the same architecture as the base system is as simple as using [**tar**]{.command} on the LFS partition that contains the root directory (about 900MB uncompressed for a basic LFS build), copying that file via network transfer or CD-ROM / USB stick to the new system, and expanding it. After that, a few configuration files will have to be changed. Configuration files that may need to be updated include: `/etc/hosts`{.filename}, `/etc/fstab`{.filename}, `/etc/passwd`{.filename}, `/etc/group`{.filename}, [`/etc/shadow`{.filename}, and `/etc/ld.so.conf`{.filename}.]{.phrase}

A custom kernel may be needed for the new system, depending on differences in system hardware and the original kernel configuration.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

If you want to deploy the LFS system onto a system with a different CPU, when you build [Section 8.22, "GMP-6.3.0"](gmp.md "8.22. GMP-6.3.0"){.xref} and [Section 8.49, "Libffi-3.5.2"](libffi.md "8.49. Libffi-3.5.2"){.xref} you must follow the notes about overriding the architecture-specific optimization to produce libraries suitable for both the host system and the system(s) where you\'ll deploy the LFS system. Otherwise you\'ll get `Illegal Instruction`{.computeroutput} errors running LFS.

The GMP build system stores the architecture-specific optimization option used to build GMP into `gmp.h`{.filename}, and the build system of some package using GMP can read it from the header and use it when building the package itself. At least the MPFR build system is known to do so. Thus simply rebuilding GMP on a complete LFS system is not enough: you\'ll need to recompile MPFR and maybe other packages using GMP if you want to ["[convert]{.quote}"]{.quote} a complete LFS system to be used for a different CPU.
:::

Finally, the new system has to be made bootable via [Section 10.4, "Using GRUB to Set Up the Boot Process"](../chapter10/grub.md "10.4. Using GRUB to Set Up the Boot Process"){.xref}.
::::

:::: footnotes
\

------------------------------------------------------------------------

::: {#ftn.idm140276759046320 .footnote}
[^\[1\]^](#idm140276759046320){.para} The name of a shared library is the string coded in the `DT_SONAME`{.constant} entry of its ELF dynamic section. You can get it with the [**readelf -d *`<library file>`* \| grep SONAME**]{.command} command. In most cases it\'s suffixed with `.so.`{.literal}*`<a version number>`*, but there are some cases where it contains multiple numbers for versioning (like `libbz2.so.1.0`{.filename}), contains the version number before the `.so`{.filename} suffix (like `libbfd-2.46.0`{.filename}), or does not contain any version number at all (for example `libmemusage.so`{.filename}). Generally there is no correlation between the package version and the version number(s) in the library name.
:::
::::
::::::::::::::::::

::: navfooter
-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](man-pages.md "Man-pages-6.18"){accesskey="n"}

    Man-pages-6.18

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
