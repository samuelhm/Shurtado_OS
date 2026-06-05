::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](sudo.md "Sudo-1.9.17p2"){accesskey="p"}

    Sudo-1.9.17p2

-   [Next](filesystems.md "File Systems and Disk Management"){accesskey="n"}

    File Systems and Disk Management

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tripwire}Tripwire-2.4.3.7 {#tripwire-2.4.3.7 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Tripwire {#introduction-to-tripwire .sect2}

The [Tripwire]{.application} package contains programs used to verify the integrity of the files on a given system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/Tripwire/tripwire-open-source/releases/download/2.4.3.7/tripwire-open-source-2.4.3.7.tar.gz](https://github.com/Tripwire/tripwire-open-source/releases/download/2.4.3.7/tripwire-open-source-2.4.3.7.tar.gz){.ulink}

-   Download MD5 sum: a5cf1bc2f235f5d8ca458f00548db6ee

-   Download size: 980 KB

-   Estimated disk space required: 29 MB

-   Estimated build time: 1.6 SBU (scripting install)
:::

### Tripwire Dependencies

#### Optional

An [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref}
:::::

::::: {.installation lang="en"}
## Installation of Tripwire {#installation-of-tripwire .sect2}

Compile [Tripwire]{.application} by running the following commands:

``` userinput
sed -e '/^CLOBBER/s/false/true/'         \
    -e 's|TWDB="${prefix}|TWDB="/var|'   \
    -e '/TWMAN/ s|${prefix}|/usr/share|' \
    -e '/TWDOCS/s|${prefix}/doc/tripwire|/usr/share/doc/tripwire-2.4.3.7|' \
    -i installer/install.cfg                               &&

find . -name Makefile.am | xargs                           \
    sed -i 's/^[[:alpha:]_]*_HEADERS.*=/noinst_HEADERS =/' &&

sed '/dist/d' -i man/man?/Makefile.am                      &&
autoreconf -fi                                             &&

./configure --prefix=/usr --sysconfdir=/etc/tripwire       &&
make CPPFLAGS=-std=c++11
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The default configuration is to use a local MTA. If you don't have an MTA installed and have no wish to install one, modify `install/install.cfg`{.filename} to use an SMTP server instead. Otherwise the install will fail.
:::

This package does not come with a test suite.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

During [**make install**]{.command}, several questions are asked, including passwords. If you want to make a script, you have to apply a [sed]{.application} before running [**make install**]{.command}:

``` userinput
sed -e 's@installer/install.sh@& -n -s <site-password> -l <local-password>@' \
    -i Makefile
```

Of course, you should do this with dummy passwords and change them later.

Another issue when scripting is that the installer exits when the standard input is not a terminal. You may disable this behavior with the following sed:

``` userinput
sed '/-t 0/,+3d' -i installer/install.sh
```
:::

Now, as the `root`{.systemitem} user:

``` root
make install &&
cp -v policy/*.txt /usr/share/doc/tripwire-2.4.3.7
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... installer/install.cfg**]{.command}: This command tells the package to install the program database and reports in `/var/lib/tripwire`{.filename} and sets the proper location for man pages and documentation.

[**find ...**]{.command}, [**sed ...**]{.command}, and [**autoreconf -fi**]{.command}: The build system is unusable as is, and has to be modified for the build to succeed.

*`CPPFLAGS=-std=c++11`*: Setting the C++ preprocessor flags to version 11 is necessary to prevent a conflict with the default version which is c++17 in recent version of gcc.

[**make install**]{.command}: This command creates the [Tripwire]{.application} security keys as well as installing the binaries. There are two keys: a site key and a local key which are stored in `/etc/tripwire/`{.filename}.

[**cp -v policy/\*.txt /usr/doc/tripwire-2.4.3.7**]{.command}: This command installs the [tripwire]{.application} sample policy files with the other [tripwire]{.application} documentation.
:::

::::::: {.configuration lang="en"}
## Configuring Tripwire {#configuring-tripwire .sect2}

::: {.sect3 lang="en"}
### []{#tripwire-config}Config Files {#config-files .sect3}

`/etc/tripwire/*`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

[Tripwire]{.application} uses a policy file to determine which files are integrity checked. The default policy file (`/etc/tripwire/twpol.txt`{.filename}) is for a default installation and will need to be updated for your system.

Policy files should be tailored to each individual distribution and/or installation. Some example policy files can be found in `/usr/share/doc/tripwire/`{.filename}.

If desired, copy the policy file you'd like to try into `/etc/tripwire/`{.filename} instead of using the default policy file, `twpol.txt`{.filename}. It is, however, recommended that you edit your policy file. Get ideas from the examples above and read `/usr/share/doc/tripwire/policyguide.txt`{.filename} for additional information. `twpol.txt`{.filename} is a good policy file for learning about [Tripwire]{.application} as it will note any changes to the file system and can even be used as an annoying way of keeping track of changes for uninstallation of software.

After your policy file has been edited to your satisfaction you may begin the configuration steps (perform as the `root`{.systemitem}) user:

``` root
twadmin --create-polfile --site-keyfile /etc/tripwire/site.key \
    /etc/tripwire/twpol.txt &&
tripwire --init
```

Depending on your system and the contents of the policy file, the initialization phase above can take a relatively long time.
:::

::: {.sect3 lang="en"}
### Usage Information {#usage-information .sect3}

[Tripwire]{.application} will identify file changes in the critical system files specified in the policy file. Using [Tripwire]{.application} while making frequent changes to these directories will flag all these changes. It is most useful after a system has reached a configuration that the user considers stable.

To use [Tripwire]{.application} after creating a policy file to run a report, use the following command:

``` userinput
tripwire --check > /etc/tripwire/report.txt
```

View the output to check the integrity of your files. An automatic integrity report can be produced by using a cron facility to schedule the runs.

Reports are stored in binary and, if desired, encrypted. View reports, as the `root`{.systemitem} user, with:

``` userinput
twprint --print-report -r /var/lib/tripwire/report/<report-name.twr>
```

After you run an integrity check, you should examine the report (or email) and then modify the [Tripwire]{.application} database to reflect the changed files on your system. This is so that [Tripwire]{.application} will not continually notify you hat files you intentionally changed are a security violation. To do this you must first [**ls -l /var/lib/tripwire/report/**]{.command} and note the name of the newest file which starts with your system name as presented by the command **`uname -n`** and ends in `.twr`{.filename}. These files were created during report creation and the most current one is needed to update the [Tripwire]{.application} database of your system. As the `root`{.systemitem} user, type in the following command making the appropriate report name:

``` userinput
tripwire --update --twrfile /var/lib/tripwire/report/<report-name.twr>
```

You will be placed into [Vim]{.application} with a copy of the report in front of you. If all the changes were good, then just type [**:wq**]{.command} and after entering your local key, the database will be updated. If there are files which you still want to be warned about, remove the 'x' before the filename in the report and type [**:wq**]{.command}.
:::

::: {.sect3 lang="en"}
### Changing the Policy File {#changing-the-policy-file .sect3}

If you are unhappy with your policy file and would like to modify it or use a new one, modify the policy file and then execute the following commands as the `root`{.systemitem} user:

``` userinput
twadmin --create-polfile /etc/tripwire/twpol.txt &&
tripwire --init
```
:::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [siggen, tripwire, twadmin, and twprint]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/tripwire, /var/lib/tripwire, and /usr/share/doc/tripwire-2.4.3.7]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#siggen}[[**siggen**]{.command}]{.term}               is a signature gathering utility that displays the hash function values for the specified files
  []{#tripwire-program}[[**tripwire**]{.command}]{.term}   is the main file integrity checking program
  []{#twadmin}[[**twadmin**]{.command}]{.term}             administrative and utility tool used to perform certain administrative functions related to [Tripwire]{.application} files and configuration options
  []{#twprint}[[**twprint**]{.command}]{.term}             prints [Tripwire]{.application} database and report files in clear text format
  -------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](sudo.md "Sudo-1.9.17p2"){accesskey="p"}

    Sudo-1.9.17p2

-   [Next](filesystems.md "File Systems and Disk Management"){accesskey="n"}

    File Systems and Disk Management

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
