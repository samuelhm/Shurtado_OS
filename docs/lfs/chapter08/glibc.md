::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](iana-etc.md "Iana-Etc-20260529"){accesskey="p"}

    Iana-Etc-20260529

-   [Next](zlib.md "Zlib-1.3.2"){accesskey="n"}

    Zlib-1.3.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-glibc}8.5. Glibc-2.43 {#glibc-2.43 .sect1}

::::::::::::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Glibc package contains the main C library. This library provides the basic routines for allocating memory, searching directories, opening and closing files, reading and writing files, string handling, pattern matching, arithmetic, and so on.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [12 SBU]{.segbody}
:::

::: seg
**Required disk space:** [3.5 GB]{.segbody}
:::
:::::
::::::
:::::::

::::::::: {.installation lang="en"}
## 8.5.1. Installation of Glibc {#installation-of-glibc .sect2}

Some of the Glibc programs use the non-FHS compliant `/var/db`{.filename} directory to store their runtime data. Apply the following patch to make such programs store their runtime data in the FHS-compliant locations:

``` userinput
patch -Np1 -i ../glibc-fhs-1.patch
```

Now add some fixes to address building and testing with Linux 7, and fix 5 security vulnerabilities found after the glibc-2.43 release:

``` userinput
patch -Np1 -i ../glibc-2.43-upstream_fixes-1.patch
```

The Glibc documentation recommends building Glibc in a dedicated build directory:

``` userinput
mkdir -v build
cd       build
```

Ensure that the [**ldconfig**]{.command} and [**sln**]{.command} utilities will be installed into `/usr/sbin`{.filename}:

``` userinput
echo "rootsbindir=/usr/sbin" > configparms
```

Prepare Glibc for compilation:

``` userinput
../configure --prefix=/usr                   \
             --disable-werror                \
             --disable-nscd                  \
             libc_cv_slibdir=/usr/lib        \
             --enable-stack-protector=strong \
             --enable-kernel=5.10
```

::: variablelist
**The meaning of the configure options:**

[*`--disable-werror`*]{.term}

:   This option disables the -Werror option passed to GCC. This is necessary for running the test suite.

[*`--enable-kernel=5.10`*]{.term}

:   This option tells the build system that this Glibc may be used with kernels as old as 5.10. This means generating workarounds in case a system call introduced in a later version cannot be used.

[*`--enable-stack-protector=strong`*]{.term}

:   This option increases system security by adding extra code to check for buffer overflows, such as stack smashing attacks. Note that Glibc always explicitly overrides the default of GCC, so this option is still needed even though we\'ve already specified `--enable-default-ssp`{.option} for GCC.

[*`--disable-nscd`*]{.term}

:   Do not build the name service cache daemon which is no longer used.

[*`libc_cv_slibdir=/usr/lib`*]{.term}

:   This variable sets the correct library for all systems. We do not want lib64 to be used.
:::

Compile the package:

``` userinput
make
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

In this section, the test suite for Glibc is considered critical. Do not skip it under any circumstance.
:::

Generally a few tests do not pass. The test failures listed below are usually safe to ignore.

``` userinput
make check
```

You may see some test failures. The Glibc test suite is somewhat dependent on the host system. A few failures out of over 6000 tests can generally be ignored. This is a list of the most common issues seen for recent versions of LFS:

::: itemizedlist
-   [*io/tst-lchmod*]{.emphasis} is known to fail in the LFS chroot environment.

-   Some tests, for example [*nss/tst-nss-files-hosts-multi*]{.emphasis} and [*nptl/tst-thread-affinity\**]{.emphasis} are known to fail due to a timeout (especially when the system is relatively slow and/or running the test suite with multiple parallel make jobs). These tests can be identified with:

    ``` userinput
    grep "Timed out" $(find -name \*.out)
    ```

    It\'s possible to re-run a single test with enlarged timeout with [**TIMEOUTFACTOR=*`<factor>`* make test t=*`<test name>`***]{.command}. For example, [**TIMEOUTFACTOR=10 make test t=nss/tst-nss-files-hosts-multi**]{.command} will re-run [*nss/tst-nss-files-hosts-multi*]{.emphasis} with ten times the original timeout.

-   Additionally, some tests may fail with a relatively old CPU model (for example [*elf/tst-cpu-features-cpuinfo*]{.emphasis}) or host kernel version (for example [*stdlib/tst-arc4random-thread*]{.emphasis}), or with a host kernel newer than 7.0.10.
:::

Though it is a harmless message, the install stage of Glibc will complain about the absence of `/etc/ld.so.conf`{.filename}. Prevent this warning with:

``` userinput
touch /etc/ld.so.conf
```

Fix the Makefile to skip an outdated sanity check that fails with a modern Glibc configuration:

``` userinput
sed '/test-installation/s@$(PERL)@echo not running@' -i ../Makefile
```

:::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

If upgrading Glibc to a new minor version (for example, from Glibc-2.36 to Glibc-2.43) on a running LFS system, you need to take some extra precautions to avoid breaking the system:

::: itemizedlist
-   Upgrading Glibc on a LFS system prior to 11.0 (exclusive) is not supported. Rebuild LFS if you are running such an old LFS system but you need a newer Glibc.

-   If upgrading on a LFS system prior to 12.0 (exclusive), install [Libxcrypt]{.application} following [Section 8.28, "Libxcrypt-4.5.2."](libxcrypt.md "8.28. Libxcrypt-4.5.2"){.xref} In addition to a normal [Libxcrypt]{.application} installation, [**you MUST follow the note in Libxcrypt section to install `libcrypt.so.1*`{.filename} (replacing `libcrypt.so.1`{.filename} from the prior Glibc installation)**]{.bold}.

-   If upgrading on a LFS system prior to 12.1 (exclusive), remove the [**nscd**]{.command} program:

    ``` userinput
    rm -f /usr/sbin/nscd
    ```

    If this system (prior to LFS 12.1, exclusive) is based on Systemd, it\'s also needed to disable and stop the [**nscd**]{.command} service now:

    ``` userinput
    systemctl disable --now nscd
    ```

-   Upgrade the kernel and reboot if it\'s older than 5.10 (check the current version with [**uname -r**]{.command}) or if you want to upgrade it anyway, following [Section 10.3, "Linux-7.0.10."](../chapter10/kernel.md "10.3. Linux-7.0.10"){.xref}

-   Upgrade the kernel API headers if it\'s older than 5.10 (check the current version with [**cat /usr/include/linux/version.h**]{.command}) or if you want to upgrade it anyway, following [Section 5.4, "Linux-7.0.10 API Headers"](../chapter05/linux-headers.md "5.4. Linux-7.0.10 API Headers"){.xref} (but removing `$LFS`{.envar} from the [**cp**]{.command} command).

-   Perform a `DESTDIR`{.envar} installation and upgrade the Glibc shared libraries on the system using one single [**install**]{.command} command:

    ``` userinput
    make DESTDIR=$PWD/dest install
    install -vm755 dest/usr/lib/*.so.* /usr/lib
    ```
:::

It\'s imperative to strictly follow these steps above unless you completely understand what you are doing. [**Any unexpected deviation may render the system completely unusable. YOU ARE WARNED.**]{.bold}

Then continue to run the [**make install**]{.command} command, the [**sed**]{.command} command against `/usr/bin/ldd`{.filename}, and the commands to install the locales. Once they are finished, reboot the system immediately.

When the system has successfully rebooted, if you are running a LFS system prior to 12.0 (exclusive) where GCC was not built with the *`--disable-fixincludes`* option, move two GCC headers into a better location and remove the stale ["[fixed]{.quote}"]{.quote} copies of the Glibc headers:

``` userinput
DIR=$(dirname $(gcc -print-libgcc-file-name))
[ -e $DIR/include/limits.h ]    || mv $DIR/include{-fixed,}/limits.h
[ -e $DIR/include/syslimits.h ] || mv $DIR/include{-fixed,}/syslimits.h
rm -rfv $DIR/include-fixed/*
unset DIR
```
::::

Install the package:

``` userinput
make install
```

Fix a hardcoded path to the executable loader in the [**ldd**]{.command} script:

``` userinput
sed '/RTLDLIST=/s@/usr@@g' -i /usr/bin/ldd
```

Next, install the locales that can make the system respond in a different language. None of these locales are required, but if some of them are missing, the test suites of some packages will skip important test cases.

Individual locales can be installed using the [**localedef**]{.command} program. E.g., the second [**localedef**]{.command} command below combines the `/usr/share/i18n/locales/cs_CZ`{.filename} charset-independent locale definition with the `/usr/share/i18n/charmaps/UTF-8.gz`{.filename} charmap definition and appends the result to the `/usr/lib/locale/locale-archive`{.filename} file. The following instructions will install the minimum set of locales necessary for the optimal coverage of tests:

``` userinput
localedef -i C -f UTF-8 C.UTF-8
localedef -i cs_CZ -f UTF-8 cs_CZ.UTF-8
localedef -i de_DE -f ISO-8859-1 de_DE
localedef -i de_DE@euro -f ISO-8859-15 de_DE@euro
localedef -i de_DE -f UTF-8 de_DE.UTF-8
localedef -i el_GR -f ISO-8859-7 el_GR
localedef -i en_GB -f ISO-8859-1 en_GB
localedef -i en_GB -f UTF-8 en_GB.UTF-8
localedef -i en_HK -f ISO-8859-1 en_HK
localedef -i en_PH -f ISO-8859-1 en_PH
localedef -i en_US -f ISO-8859-1 en_US
localedef -i en_US -f UTF-8 en_US.UTF-8
localedef -i es_ES -f ISO-8859-15 es_ES@euro
localedef -i es_MX -f ISO-8859-1 es_MX
localedef -i fa_IR -f UTF-8 fa_IR
localedef -i fr_FR -f ISO-8859-1 fr_FR
localedef -i fr_FR@euro -f ISO-8859-15 fr_FR@euro
localedef -i fr_FR -f UTF-8 fr_FR.UTF-8
localedef -i is_IS -f ISO-8859-1 is_IS
localedef -i is_IS -f UTF-8 is_IS.UTF-8
localedef -i it_IT -f ISO-8859-1 it_IT
localedef -i it_IT -f ISO-8859-15 it_IT@euro
localedef -i it_IT -f UTF-8 it_IT.UTF-8
localedef -i ja_JP -f EUC-JP ja_JP
localedef -i ja_JP -f UTF-8 ja_JP.UTF-8
localedef -i nl_NL@euro -f ISO-8859-15 nl_NL@euro
localedef -i ru_RU -f KOI8-R ru_RU.KOI8-R
localedef -i ru_RU -f UTF-8 ru_RU.UTF-8
localedef -i se_NO -f UTF-8 se_NO.UTF-8
localedef -i ta_IN -f UTF-8 ta_IN.UTF-8
localedef -i tr_TR -f UTF-8 tr_TR.UTF-8
localedef -i zh_CN -f GB18030 zh_CN.GB18030
localedef -i zh_HK -f BIG5-HKSCS zh_HK.BIG5-HKSCS
localedef -i zh_TW -f UTF-8 zh_TW.UTF-8
```

In addition, install the locale for your own country, language and character set.

Alternatively, install all the locales listed in the `glibc-2.43/localedata/SUPPORTED`{.filename} file (it includes every locale listed above and many more) at once with the following time-consuming command:

``` userinput
make localedata/install-locales
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Glibc now uses libidn2 when resolving internationalized domain names. This is a run time dependency. If this capability is needed, the instructions for installing libidn2 are in the [BLFS libidn2 page](https://www.linuxfromscratch.org/blfs/view/systemd/general/libidn2.html){.ulink}.
:::
:::::::::

::::::: {.configuration lang="en"}
## []{#conf-glibc}8.5.2. Configuring Glibc {#configuring-glibc .sect2}

::: sect3
### 8.5.2.1. Adding nsswitch.conf {#adding-nsswitch.conf .sect3}

The `/etc/nsswitch.conf`{.filename} file needs to be created because the Glibc defaults do not work well in a networked environment.

Create a new file `/etc/nsswitch.conf`{.filename} by running the following:

``` userinput
cat > /etc/nsswitch.conf << "EOF"
# Begin /etc/nsswitch.conf

passwd: files systemd
group: files systemd
shadow: files systemd

hosts: mymachines resolve [!UNAVAIL=return] files myhostname dns
networks: files

protocols: files
services: files
ethers: files
rpc: files

# End /etc/nsswitch.conf
EOF
```
:::

:::: sect3
### 8.5.2.2. Adding Time Zone Data {#adding-time-zone-data .sect3}

Install and set up the time zone data with the following:

``` userinput
tar -xf ../../tzdata2026b.tar.gz

ZONEINFO=/usr/share/zoneinfo
mkdir -pv $ZONEINFO/{posix,right}

for tz in etcetera southamerica northamerica europe africa antarctica  \
          asia australasia backward; do
    zic -L /dev/null   -d $ZONEINFO       ${tz}
    zic -L /dev/null   -d $ZONEINFO/posix ${tz}
    zic -L leapseconds -d $ZONEINFO/right ${tz}
done

cp -v zone.tab zone1970.tab iso3166.tab $ZONEINFO
zic -d $ZONEINFO -p America/New_York
unset ZONEINFO tz
```

::: variablelist
**The meaning of the zic commands:**

[*`zic -L /dev/null ...`*]{.term}

:   This creates posix time zones without any leap seconds. It is conventional to put these in both `zoneinfo`{.filename} and `zoneinfo/posix`{.filename}. It is necessary to put the POSIX time zones in `zoneinfo`{.filename}, otherwise various test suites will report errors. On an embedded system, where space is tight and you do not intend to ever update the time zones, you could save 1.9 MB by not using the `posix`{.filename} directory, but some applications or test suites might produce some failures.

[*`zic -L leapseconds ...`*]{.term}

:   This creates right time zones, including leap seconds. On an embedded system, where space is tight and you do not intend to ever update the time zones, or care about the correct time, you could save 1.9MB by omitting the `right`{.filename} directory.

[*`zic ... -p ...`*]{.term}

:   This creates the `posixrules`{.filename} file. We use New York because POSIX requires the daylight saving time rules to be in accordance with US rules.
:::

One way to determine the local time zone is to run the following script:

``` userinput
tzselect
```

After answering a few questions about the location, the script will output the name of the time zone (e.g., [*America/Edmonton*]{.emphasis}). There are also some other possible time zones listed in `/usr/share/zoneinfo`{.filename} such as [*Canada/Eastern*]{.emphasis} or [*EST5EDT*]{.emphasis} that are not identified by the script but can be used.

Then create the `/etc/localtime`{.filename} file by running:

``` userinput
ln -sfv /usr/share/zoneinfo/<xxx> /etc/localtime
```

Replace *`<xxx>`* with the name of the time zone selected (e.g., Canada/Eastern).
::::

::: sect3
### []{#conf-ld}8.5.2.3. Configuring the Dynamic Loader {#configuring-the-dynamic-loader .sect3}

By default, the dynamic loader (`/lib/ld-linux.so.2`{.filename}) searches through `/usr/lib`{.filename} for dynamic libraries that are needed by programs as they are run. However, if there are libraries in directories other than `/usr/lib`{.filename}, these need to be added to the `/etc/ld.so.conf`{.filename} file in order for the dynamic loader to find them. Two directories that are commonly known to contain additional libraries are `/usr/local/lib`{.filename} and `/opt/lib`{.filename}, so add those directories to the dynamic loader\'s search path.

Create a new file `/etc/ld.so.conf`{.filename} by running the following:

``` userinput
cat > /etc/ld.so.conf << "EOF"
# Begin /etc/ld.so.conf
/usr/local/lib
/opt/lib

EOF
```

If desired, the dynamic loader can also search a directory and include the contents of files found there. Generally the files in this include directory are one line specifying the desired library path. To add this capability run the following commands:

``` userinput
cat >> /etc/ld.so.conf << "EOF"
# Add an include directory
include /etc/ld.so.conf.d/*.conf

EOF
mkdir -pv /etc/ld.so.conf.d
```
:::
:::::::

::::::::: {.content lang="en"}
## []{#contents-glibc}8.5.3. Contents of Glibc {#contents-of-glibc .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [gencat, getconf, getent, iconv, iconvconfig, ldconfig, ldd, lddlibc4, ld.so (symlink to ld-linux-x86-64.so.2 or ld-linux.so.2), locale, localedef, makedb, mtrace, pcprofiledump, pldd, sln, sotruss, sprof, tzselect, xtrace, zdump, and zic]{.segbody}
:::

::: seg
**Installed libraries:** [ld-linux-x86-64.so.2, ld-linux.so.2, libBrokenLocale.{a,so}, libanl.{a,so}, libc.{a,so}, libc_nonshared.a, libc_malloc_debug.so, libdl.{a,so.2}, libg.a, libm.{a,so}, libmcheck.a, libmemusage.so, libmvec.{a,so}, libnsl.so.1, libnss_compat.so, libnss_dns.so, libnss_files.so, libnss_hesiod.so, libpcprofile.so, libpthread.{a,so.0}, libresolv.{a,so}, librt.{a,so.1}, libthread_db.so, and libutil.{a,so.1}]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/arpa, /usr/include/bits, /usr/include/gnu, /usr/include/net, /usr/include/netash, /usr/include/netatalk, /usr/include/netax25, /usr/include/neteconet, /usr/include/netinet, /usr/include/netipx, /usr/include/netiucv, /usr/include/netpacket, /usr/include/netrom, /usr/include/netrose, /usr/include/nfs, /usr/include/protocols, /usr/include/rpc, /usr/include/sys, /usr/lib/audit, /usr/lib/gconv, /usr/lib/locale, /usr/libexec/getconf, /usr/share/i18n, /usr/share/zoneinfo, and /var/lib/nss_db]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gencat}[[**gencat**]{.command}]{.term}                      Generates message catalogues
  []{#getconf}[[**getconf**]{.command}]{.term}                    Displays the system configuration values for file system specific variables
  []{#getent}[[**getent**]{.command}]{.term}                      Gets entries from an administrative database
  []{#iconv}[[**iconv**]{.command}]{.term}                        Performs character set conversion
  []{#iconvconfig}[[**iconvconfig**]{.command}]{.term}            Creates fastloading [**iconv**]{.command} module configuration files
  []{#ldconfig}[[**ldconfig**]{.command}]{.term}                  Configures the dynamic linker runtime bindings
  []{#ldd}[[**ldd**]{.command}]{.term}                            Reports which shared libraries are required by each given program or shared library
  []{#lddlibc4}[[**lddlibc4**]{.command}]{.term}                  Assists [**ldd**]{.command} with object files. It does not exist on newer architectures like x86_64
  []{#locale}[[**locale**]{.command}]{.term}                      Prints various information about the current locale
  []{#localedef}[[**localedef**]{.command}]{.term}                Compiles locale specifications
  []{#makedb}[[**makedb**]{.command}]{.term}                      Creates a simple database from textual input
  []{#mtrace}[[**mtrace**]{.command}]{.term}                      Reads and interprets a memory trace file and displays a summary in human-readable format
  []{#pcprofiledump}[[**pcprofiledump**]{.command}]{.term}        Dump information generated by PC profiling
  []{#pldd}[[**pldd**]{.command}]{.term}                          Lists dynamic shared objects used by running processes
  []{#sln}[[**sln**]{.command}]{.term}                            A statically linked [**ln**]{.command} program
  []{#sotruss}[[**sotruss**]{.command}]{.term}                    Traces shared library procedure calls of a specified command
  []{#sprof}[[**sprof**]{.command}]{.term}                        Reads and displays shared object profiling data
  []{#tzselect}[[**tzselect**]{.command}]{.term}                  Asks the user about the location of the system and reports the corresponding time zone description
  []{#xtrace}[[**xtrace**]{.command}]{.term}                      Traces the execution of a program by printing the currently executed function
  []{#zdump}[[**zdump**]{.command}]{.term}                        The time zone dumper
  []{#zic}[[**zic**]{.command}]{.term}                            The time zone compiler
  []{#ld.so}[`ld-*.so`{.filename}]{.term}                         The helper program for shared library executables
  []{#libBrokenLocale}[`libBrokenLocale`{.filename}]{.term}       Used internally by Glibc as a gross hack to get broken programs (e.g., some Motif applications) running. See comments in `glibc-2.43/locale/broken_cur_max.c`{.filename} for more information
  []{#libanl}[`libanl`{.filename}]{.term}                         Dummy library containing no functions. Previously was the asynchronous name lookup library, whose functions are now in `libc`{.filename}
  []{#libc}[`libc`{.filename}]{.term}                             The main C library
  []{#libc_malloc_debug}[`libc_malloc_debug`{.filename}]{.term}   Turns on memory allocation checking when preloaded
  []{#libdl}[`libdl`{.filename}]{.term}                           Dummy library containing no functions. Previously was the dynamic linking interface library, whose functions are now in `libc`{.filename}
  []{#libg}[`libg`{.filename}]{.term}                             Dummy library containing no functions. Previously was a runtime library for [**g++**]{.command}
  []{#libm}[`libm`{.filename}]{.term}                             The mathematical library
  []{#libmvec}[`libmvec`{.filename}]{.term}                       The vector math library, linked in as needed when `libm`{.filename} is used
  []{#libmcheck}[`libmcheck`{.filename}]{.term}                   Turns on memory allocation checking when linked to
  []{#libmemusage}[`libmemusage`{.filename}]{.term}               Used by [**memusage**]{.command} to help collect information about the memory usage of a program
  []{#libnsl}[`libnsl`{.filename}]{.term}                         The network services library, now deprecated
  []{#libnss}[`libnss_*`{.filename}]{.term}                       The Name Service Switch modules, containing functions for resolving host names, user names, group names, aliases, services, protocols, etc. Loaded by `libc`{.filename} according to the configuration in `/etc/nsswitch.conf`{.filename}
  []{#libpcprofile}[`libpcprofile`{.filename}]{.term}             Can be preloaded to PC profile an executable
  []{#libpthread}[`libpthread`{.filename}]{.term}                 Dummy library containing no functions. Previously contained functions providing most of the interfaces specified by the POSIX.1c Threads Extensions and the semaphore interfaces specified by the POSIX.1b Real-time Extensions, now the functions are in `libc`{.filename}
  []{#libresolv}[`libresolv`{.filename}]{.term}                   Contains functions for creating, sending, and interpreting packets to the Internet domain name servers
  []{#librt}[`librt`{.filename}]{.term}                           Contains functions providing most of the interfaces specified by the POSIX.1b Real-time Extensions
  []{#libthread_db}[`libthread_db`{.filename}]{.term}             Contains functions useful for building debuggers for multi-threaded programs
  []{#libutil}[`libutil`{.filename}]{.term}                       Dummy library containing no functions. Previously contained code for ["[standard]{.quote}"]{.quote} functions used in many different Unix utilities. These functions are now in `libc`{.filename}
  --------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::::::

::: navfooter
-   [Prev](iana-etc.md "Iana-Etc-20260529"){accesskey="p"}

    Iana-Etc-20260529

-   [Next](zlib.md "Zlib-1.3.2"){accesskey="n"}

    Zlib-1.3.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
