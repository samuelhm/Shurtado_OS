<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](sudo.md "Sudo-1.9.17p2")

    Sudo-1.9.17p2

-   [Next](filesystems.md "File Systems and Disk Management")

    File Systems and Disk Management

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Tripwire-2.4.3.7 {#tripwire-2.4.3.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Tripwire {#introduction-to-tripwire}

The <span class="application">Tripwire</span> package contains programs used to verify the integrity of the files on a given system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/Tripwire/tripwire-open-source/releases/download/2.4.3.7/tripwire-open-source-2.4.3.7.tar.gz">https://github.com/Tripwire/tripwire-open-source/releases/download/2.4.3.7/tripwire-open-source-2.4.3.7.tar.gz</a>

-   Download MD5 sum: a5cf1bc2f235f5d8ca458f00548db6ee

-   Download size: 980 KB

-   Estimated disk space required: 29 MB

-   Estimated build time: 1.6 SBU (scripting install)
</div>

### Tripwire Dependencies

#### Optional

An <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a>
</div>

<div class="installation" lang="en">
## Installation of Tripwire {#installation-of-tripwire}

Compile <span class="application">Tripwire</span> by running the following commands:

```bash
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

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The default configuration is to use a local MTA. If you don't have an MTA installed and have no wish to install one, modify <code class="filename">install/install.cfg</code> to use an SMTP server instead. Otherwise the install will fail.
</div>

This package does not come with a test suite.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

During <span class="command"><strong>make install</strong></span>, several questions are asked, including passwords. If you want to make a script, you have to apply a <span class="application">sed</span> before running <span class="command"><strong>make install</strong></span>:

```bash
sed -e 's@installer/install.sh@& -n -s <site-password> -l <local-password>@' \
    -i Makefile
```

Of course, you should do this with dummy passwords and change them later.

Another issue when scripting is that the installer exits when the standard input is not a terminal. You may disable this behavior with the following sed:

```bash
sed '/-t 0/,+3d' -i installer/install.sh
```
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
cp -v policy/*.txt /usr/share/doc/tripwire-2.4.3.7
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... installer/install.cfg</strong></span>: This command tells the package to install the program database and reports in <code class="filename">/var/lib/tripwire</code> and sets the proper location for man pages and documentation.

<span class="command"><strong>find ...</strong></span>, <span class="command"><strong>sed ...</strong></span>, and <span class="command"><strong>autoreconf -fi</strong></span>: The build system is unusable as is, and has to be modified for the build to succeed.

*`CPPFLAGS=-std=c++11`*: Setting the C++ preprocessor flags to version 11 is necessary to prevent a conflict with the default version which is c++17 in recent version of gcc.

<span class="command"><strong>make install</strong></span>: This command creates the <span class="application">Tripwire</span> security keys as well as installing the binaries. There are two keys: a site key and a local key which are stored in <code class="filename">/etc/tripwire/</code>.

<span class="command"><strong>cp -v policy/\*.txt /usr/doc/tripwire-2.4.3.7</strong></span>: This command installs the <span class="application">tripwire</span> sample policy files with the other <span class="application">tripwire</span> documentation.
</div>

<div class="configuration" lang="en">
## Configuring Tripwire {#configuring-tripwire}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/tripwire/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">Tripwire</span> uses a policy file to determine which files are integrity checked. The default policy file (<code class="filename">/etc/tripwire/twpol.txt</code>) is for a default installation and will need to be updated for your system.

Policy files should be tailored to each individual distribution and/or installation. Some example policy files can be found in <code class="filename">/usr/share/doc/tripwire/</code>.

If desired, copy the policy file you'd like to try into <code class="filename">/etc/tripwire/</code> instead of using the default policy file, <code class="filename">twpol.txt</code>. It is, however, recommended that you edit your policy file. Get ideas from the examples above and read <code class="filename">/usr/share/doc/tripwire/policyguide.txt</code> for additional information. <code class="filename">twpol.txt</code> is a good policy file for learning about <span class="application">Tripwire</span> as it will note any changes to the file system and can even be used as an annoying way of keeping track of changes for uninstallation of software.

After your policy file has been edited to your satisfaction you may begin the configuration steps (perform as the <code class="systemitem">root</code>) user:

```bash
twadmin --create-polfile --site-keyfile /etc/tripwire/site.key \
    /etc/tripwire/twpol.txt &&
tripwire --init
```

Depending on your system and the contents of the policy file, the initialization phase above can take a relatively long time.
</div>

<div class="sect3" lang="en">
### Usage Information {#usage-information}

<span class="application">Tripwire</span> will identify file changes in the critical system files specified in the policy file. Using <span class="application">Tripwire</span> while making frequent changes to these directories will flag all these changes. It is most useful after a system has reached a configuration that the user considers stable.

To use <span class="application">Tripwire</span> after creating a policy file to run a report, use the following command:

```bash
tripwire --check > /etc/tripwire/report.txt
```

View the output to check the integrity of your files. An automatic integrity report can be produced by using a cron facility to schedule the runs.

Reports are stored in binary and, if desired, encrypted. View reports, as the <code class="systemitem">root</code> user, with:

```bash
twprint --print-report -r /var/lib/tripwire/report/<report-name.twr>
```

After you run an integrity check, you should examine the report (or email) and then modify the <span class="application">Tripwire</span> database to reflect the changed files on your system. This is so that <span class="application">Tripwire</span> will not continually notify you hat files you intentionally changed are a security violation. To do this you must first <span class="command"><strong>ls -l /var/lib/tripwire/report/</strong></span> and note the name of the newest file which starts with your system name as presented by the command **`uname -n`** and ends in <code class="filename">.twr</code>. These files were created during report creation and the most current one is needed to update the <span class="application">Tripwire</span> database of your system. As the <code class="systemitem">root</code> user, type in the following command making the appropriate report name:

```bash
tripwire --update --twrfile /var/lib/tripwire/report/<report-name.twr>
```

You will be placed into <span class="application">Vim</span> with a copy of the report in front of you. If all the changes were good, then just type <span class="command"><strong>:wq</strong></span> and after entering your local key, the database will be updated. If there are files which you still want to be warned about, remove the 'x' before the filename in the report and type <span class="command"><strong>:wq</strong></span>.
</div>

<div class="sect3" lang="en">
### Changing the Policy File {#changing-the-policy-file}

If you are unhappy with your policy file and would like to modify it or use a new one, modify the policy file and then execute the following commands as the <code class="systemitem">root</code> user:

```bash
twadmin --create-polfile /etc/tripwire/twpol.txt &&
tripwire --init
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">siggen, tripwire, twadmin, and twprint</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/tripwire, /var/lib/tripwire, and /usr/share/doc/tripwire-2.4.3.7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="siggen"></a><span class="command"><span class="term"><strong>siggen</strong></span></span>               is a signature gathering utility that displays the hash function values for the specified files
  <a id="tripwire-program"></a><span class="command"><span class="term"><strong>tripwire</strong></span></span>   is the main file integrity checking program
  <a id="twadmin"></a><span class="command"><span class="term"><strong>twadmin</strong></span></span>             administrative and utility tool used to perform certain administrative functions related to <span class="application">Tripwire</span> files and configuration options
  <a id="twprint"></a><span class="command"><span class="term"><strong>twprint</strong></span></span>             prints <span class="application">Tripwire</span> database and report files in clear text format
  -------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sudo.md "Sudo-1.9.17p2")

    Sudo-1.9.17p2

-   [Next](filesystems.md "File Systems and Disk Management")

    File Systems and Disk Management

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
