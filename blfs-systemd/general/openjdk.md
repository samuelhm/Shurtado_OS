<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](java.md "Java-21.0.10")

    Java-21.0.10

-   [Next](ojdk-conf.md "Configuring the Java environment")

    Configuring the Java environment

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# OpenJDK-21.0.10 {#openjdk-21.0.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to OpenJDK {#introduction-to-openjdk}

<span class="application">OpenJDK</span> is an open-source implementation of Oracle's Java Standard Edition platform. <span class="application">OpenJDK</span> is useful for developing <span class="application">Java</span> programs, and provides a complete runtime environment to run <span class="application">Java</span> programs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

OpenJDK is GPL'd code, with a special exception made for non-free projects to use these classes in their proprietary products. In similar fashion to the LGPL, which allows non-free programs to link to libraries provided by free software, the <a class="ulink" href="https://openjdk.org/legal/gplv2+ce.md">GNU General Public License, version 2, with the Classpath Exception</a> allows third party programs to use classes provided by free software without the requirement that the third party software also be free. As with the LGPL, any modifications made to the free software portions of a third party application, must also be made freely available.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="application">OpenJDK</span> source includes a very thorough, open source test suite using the <span class="application">JTreg</span> test harness. The testing instructions below allow testing the just built JDK for reasonable compatibility with the proprietary Oracle JDK. However, in order for an independent implementation to claim compatibility, it must pass a proprietary <span class="application">JCK/TCK</span> test suite. No claims of compatibility, or even partial compatibility, may be made without passing an approved test suite.

Oracle does provide free community access, on a case-by-case basis, to a closed toolkit to ensure 100% compatibility with its proprietary JDK. Neither the binary version provided on the <a class="xref" href="java.md" title="Java-21.0.10">Java-21.0.10</a> page nor the JVM built with the instructions below have been tested against the <a class="ulink" href="https://openjdk.java.net/groups/conformance/JckAccess/jck-access.md">TCK</a>. Any version that is built using the instructions given, cannot claim to be compatible with the proprietary JDK, without the user applying for, and completing the compatibility tests themselves.

With that in mind, the binaries produced using this build method are regularly tested against the TCK by the members listed on the site above. In addition to the community license above, an educational, non-commercial license for the TCK can be obtained <a class="ulink" href="https://www.oracle.com/java/scholarship-program.md">here</a>.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/openjdk/jdk21u/archive/jdk-21.0.10-ga.tar.gz">https://github.com/openjdk/jdk21u/archive/jdk-21.0.10-ga.tar.gz</a>

-   Download MD5 sum: ea4fc0a1057529cae074ab6ab0a7e1f2

-   Download Size: 109 MB

-   Estimated disk space required: 4.0 GB (add 802 MB for tests)

-   Estimated build time: 3.8 SBU with 4 jobs (add 25 SBU for tests with 4 jobs)
</div>

### Additional Downloads

<span class="strong"><strong>Optional test harness</strong></span>

<div class="itemizedlist">
-   <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/jtreg-8.2.1+1.tar.gz">https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/jtreg-8.2.1+1.tar.gz</a>

-   Download MD5 sum: e5f9bac8e929180a6b1643f498755844

-   Download Size: 9.7 MB
</div>

### OpenJDK Dependencies

#### Required Dependencies

An existing binary (<a class="xref" href="java.md" title="Java-21.0.10">Java-21.0.10</a> or an earlier built version of this package. The instructions below assume that you are using <a class="xref" href="ojdk-conf.md" title="Configuring the Java environment">Configuring the Java environment</a>), <a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="cpio.md" title="cpio-2.15">cpio-2.15</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a>, <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>, and <a class="xref" href="zip.md" title="Zip-3.0">Zip-3.0</a>

#### Recommended

<a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>, <a class="xref" href="giflib.md" title="giflib-6.1.3">giflib-6.1.3</a>, <a class="xref" href="harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>, <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, and <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>

#### Optional

<a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="mercurial.md" title="Mercurial-7.2.2">mercurial-7.2.2</a>, <a class="ulink" href="https://ccache.dev/">ccache</a>, <a class="ulink" href="https://pandoc.org/">pandoc</a>, and <a class="ulink" href="https://zlib.net/pigz">pigz</a>
</div>

<div class="installation" lang="en">
## Installation of OpenJDK {#installation-of-openjdk}

If you have downloaded the optional test harness, unpack it now:

```bash
tar -xf ../jtreg-8.2.1+1.tar.gz
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Before proceeding, you should ensure that your environment <code class="envar">PATH</code> variable contains the location of the Java compiler used for bootstrapping <span class="application">OpenJDK</span>. This is the only requirement for the environment. Modern Java installations do not need <code class="envar">JAVA_HOME</code> and <code class="envar">CLASSPATH</code> is not used here. Furthermore, OpenJDK developers recommend unsetting <code class="envar">JAVA_HOME</code> and <code class="envar">CLASSPATH</code>.

The build system does not allow the <code class="option">-j</code> switch in <code class="envar">MAKEFLAGS</code>. See the command explanation for <code class="option">--with-jobs=</code> for more information on customizing parallelization.
</div>

Configure and build the package with the following commands:

```bash
export MAKEFLAGS_HOLD=$MAKEFLAGS           &&
unset  JAVA_HOME                           &&
unset  CLASSPATH                           &&
unset  MAKEFLAGS                           &&
bash configure --enable-unlimited-crypto    \
               --disable-warnings-as-errors \
               --with-stdc++lib=dynamic     \
               --with-giflib=system         \
               --with-harfbuzz=system       \
               --with-jtreg=$PWD/jtreg      \
               --with-lcms=system           \
               --with-libjpeg=system        \
               --with-libpng=system         \
               --with-zlib=system           \
               --with-version-build="6"     \
               --with-version-pre=""        \
               --with-version-opt=""        \
               --with-jobs=$(nproc)         \
               --with-cacerts-file=/etc/pki/tls/java/cacerts &&
make images
```

To test the results, you will need to execute the jtreg program. You can set the number of concurrent tests by adding the *`-conc:`*`<X>`** value in the below command (tests will run sequentially otherwise):

```bash
export JT_JAVA=$(echo $PWD/build/*/jdk) &&
jtreg/bin/jtreg -jdk:$JT_JAVA -automatic -ignore:quiet -v1 \
    test/jdk:tier1 test/langtools:tier1 &&
unset JT_JAVA
```

For more control over the test suite, review the documentation available in <code class="filename">jtreg/doc/jtreg/usage.txt</code>. To review the results, see the files <code class="filename">JTreport/test_{jdk,langtools}/text/stats.txt</code> and <code class="filename">JTreport/test_{jdk,langtools}/text/summary.txt</code>. You should expect to see around 80 failures and 10 errors.

Install the package with the following commands as the <code class="systemitem">root</code> user:

```bash
install -vdm755 /opt/jdk-21.0.10+6             &&
cp -Rv build/*/images/jdk/* /opt/jdk-21.0.10+6 &&
chown -R root:root /opt/jdk-21.0.10+6          &&
for s in 16 24 32 48; do
  install -vDm644 src/java.desktop/unix/classes/sun/awt/X11/java-icon${s}.png \
                  /usr/share/icons/hicolor/${s}x${s}/apps/java.png
done
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you only wish to install the Java Runtime Environment, you can substitute <code class="filename">build/*/images/jre</code> in the above <span class="command"><strong>cp</strong></span> command.
</div>

There will be plenty of binaries with debug info that take up over half of the installed size. If you don't care about debugging, you can remove the info. As the <code class="systemitem">root</code> user:

```bash
find /opt/jdk-21.0.10+6 -name *.debuginfo -delete
```

Restore the <code class="envar">MAKEFLAGS</code> variable:

```bash
export MAKEFLAGS=$MAKEFLAGS_HOLD &&
unset  MAKEFLAGS_HOLD
```

There are now two <span class="application">OpenJDK</span> SDKs installed in <code class="filename">/opt</code>. You should decide on which one you would like to use as the default. Normally, you would opt for the just installed <span class="application">OpenJDK</span>. If so, do the following as the <code class="systemitem">root</code> user:

```bash
ln -v -nsf jdk-21.0.10+6 /opt/jdk
```

If desired, you can create .desktop files to add entries in the menu for <span class="command"><strong>java</strong></span> and <span class="command"><strong>jconsole</strong></span>. The needed icons have already been installed. As the <code class="systemitem">root</code> user:

```bash
mkdir -pv /usr/share/applications &&

cat > /usr/share/applications/openjdk-java.desktop << "EOF" &&
[Desktop Entry]
Name=OpenJDK Java 21.0.10 Runtime
Comment=OpenJDK Java 21.0.10 Runtime
Exec=/opt/jdk/bin/java -jar
Terminal=false
Type=Application
Icon=java
MimeType=application/x-java-archive;application/java-archive;application/x-jar;
NoDisplay=true
EOF
cat > /usr/share/applications/openjdk-jconsole.desktop << "EOF"
[Desktop Entry]
Name=OpenJDK Java 21.0.10 Console
Comment=OpenJDK Java 21.0.10 Console
Keywords=java;console;monitoring
Exec=/opt/jdk/bin/jconsole
Terminal=false
Type=Application
Icon=java
Categories=Application;System;
EOF
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>bash configure...</strong></span>: the top level <code class="filename">configure</code> is a wrapper around the autotools one. It is not executable and must be run through <span class="command"><strong>bash</strong></span>.

*`--enable-unlimited-crypto`*: Because of limitations on the usage of cryptography in some countries, there is the possibility to limit the size of encryption keys and the use of some algorithms in a policy file. This switch allows to ship a policy file with no restriction. It is the responsibility of the user to ensure proper adherence to the law.

*`--disable-warnings-as-errors`*: This switch disables use of <code class="envar">-Werror</code> in the build.

*`--with-stdc++lib=dynamic`*: This switch forces the build system to link to <code class="filename">libstdc++.so</code> (dynamic) instead of <code class="filename">libstdc++.a</code> (static).

*`--with-jobs=`*`$(nproc)`**: The *`-j`* passed to make does not work with make as invoked here. By default, the build system will use the number of CPUs - 1.

*`--with-jtreg=$PWD/jtreg`*: This switch tells configure where to find jtreg. Omit if you have not downloaded the optional test suite.

*`--with-{giflib,harfbuzz,lcms,libjpeg,libpng,zlib}=system`*: These switches force the build system to use the system libraries instead of the bundled versions.

*`--with-version-build`*: Currently, the build system does not include the build number in the version string. It has to be specified here.

*`--with-version-pre`*: This switch allows you to prefix the version string with a custom string.

*`--with-version-opt`*: This switch allows you to add an optional build description to the version string.

*`--with-cacerts-file=/etc/pki/tls/java/cacerts`*: Specifies where to find a <code class="filename">cacerts</code> file, <code class="filename">/etc/pki/tls/java/</code> on a BLFS system. Otherwise, an empty one is created. You can use the <span class="command"><strong>/usr/sbin/make-ca --force</strong></span> command to generate it, once you have installed the Java binaries.

<code class="option">--with-boot-jdk</code>: This switch provides the location of the temporary <span class="application">JDK</span>. It is normally not needed if <span class="command"><strong>java</strong></span> is found in the <code class="envar">PATH</code>.
</div>

<div class="configuration" lang="en">
## Configuring OpenJDK {#configuring-openjdk}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Normally, the Java environment has been configured after installing the binary version, and can be used with the just built package as well. Review <a class="xref" href="ojdk-conf.md" title="Configuring the Java environment">Configuring the Java environment</a> in case you want to modify something.

To test if the man pages are correctly installed, issue <span class="command"><strong>source /etc/profile</strong></span> and <span class="command"><strong>man java</strong></span> to display the respective man page.
</div>

<div class="sect3" lang="en">
### Setting up the JRE Certificate Authority Certificates (cacerts) file {#setting-up-the-jre-certificate-authority-certificates-cacerts-file}

If you have run the instructions on the <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> page, you only need to create a symlink in the default location for the <code class="filename">cacerts</code> file. As user <code class="systemitem">root</code>:

```bash
ln -sfv /etc/pki/tls/java/cacerts /opt/jdk/lib/security/cacerts
```

To check the installation, issue:

```bash
cd /opt/jdk
bin/keytool -list -cacerts
```

At the prompt <code class="computeroutput">Enter keystore password:</code>, enter **`changeit`** (the default) or just press the <span class="quote">“<span class="quote">Enter</span>”</span> key. If the <code class="filename">cacerts</code> file was installed correctly, you will see a list of the certificates with related information for each one. If not, you need to reinstall them.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">jar, jarsigner, java, javac, javadoc, javap, jcmd, jconsole, jdb, jdeprscan, jdeps, jfr, jhsdb, jimage, jinfo, jlink, jmap, jmod, jpackage, jps, jrunscript, jshell, jstack, jstat, jstatd, jwebserver, keytool, rmiregistry, and serialver</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">37 libraries in /opt/jdk-21.0.10+6/lib/</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/opt/jdk-21.0.10+6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="jar"></a><span class="command"><span class="term"><strong>jar</strong></span></span>                   combines multiple files into a single jar archive
  <a id="jarsigner"></a><span class="command"><span class="term"><strong>jarsigner</strong></span></span>       signs jar files and verifies the signatures and integrity of a signed jar file
  <a id="java-prog"></a><span class="command"><span class="term"><strong>java</strong></span></span>            launches a Java application by starting a Java runtime environment, loading a specified class and invoking its main method
  <a id="javac"></a><span class="command"><span class="term"><strong>javac</strong></span></span>               reads class and interface definitions, written in the Java programming language, and compiles them into bytecode class files
  <a id="javadoc"></a><span class="command"><span class="term"><strong>javadoc</strong></span></span>           parses the declarations and documentation comments in a set of Java source files and produces a corresponding set of HTML pages describing the classes, interfaces, constructors, methods, and fields
  <a id="javap"></a><span class="command"><span class="term"><strong>javap</strong></span></span>               disassembles a Java class file
  <a id="jcmd"></a><span class="command"><span class="term"><strong>jcmd</strong></span></span>                 is a utility to send diagnostic command requests to a running Java Virtual Machine
  <a id="jconsole"></a><span class="command"><span class="term"><strong>jconsole</strong></span></span>         is a graphical console tool to monitor and manage both local and remote Java applications and virtual machines
  <a id="jdb"></a><span class="command"><span class="term"><strong>jdb</strong></span></span>                   is a simple command-line debugger for Java classes
  <a id="jdeprscan"></a><span class="command"><span class="term"><strong>jdeprscan</strong></span></span>       scans class or jar files for uses of deprecated API elements
  <a id="jdeps"></a><span class="command"><span class="term"><strong>jdeps</strong></span></span>               shows the package-level or class-level dependencies of Java class files
  <a id="jfr"></a><span class="command"><span class="term"><strong>jfr</strong></span></span>                   is a tool for working with <span class="quote">“<span class="quote">Flight Recorder</span>”</span> files
  <a id="jhsdb"></a><span class="command"><span class="term"><strong>jhsdb</strong></span></span>               is a tool to analyze the content of a core dump from a crashed Java Virtual Machine (JVM)
  <a id="jimage"></a><span class="command"><span class="term"><strong>jimage</strong></span></span>             is used to list, extract, verify, or get information about modules in <span class="emphasis"><em>jimage</em></span> format
  <a id="jinfo"></a><span class="command"><span class="term"><strong>jinfo</strong></span></span>               prints Java configuration information for a given Java process, core file, or a remote debug server
  <a id="jlink"></a><span class="command"><span class="term"><strong>jlink</strong></span></span>               is used to assemble and optimize a set of modules and their dependencies into a custom runtime image
  <a id="jmap"></a><span class="command"><span class="term"><strong>jmap</strong></span></span>                 prints shared object memory maps or heap memory details of a given process, core file, or a remote debug server
  <a id="jmod"></a><span class="command"><span class="term"><strong>jmod</strong></span></span>                 creates JMOD files and lists the content of existing JMOD files
  <a id="jpackage"></a><span class="command"><span class="term"><strong>jpackage</strong></span></span>         generates java application packages and images
  <a id="jps"></a><span class="command"><span class="term"><strong>jps</strong></span></span>                   lists the instrumented JVMs on the target system
  <a id="jrunscript"></a><span class="command"><span class="term"><strong>jrunscript</strong></span></span>     is a command line script shell
  <a id="jshell"></a><span class="command"><span class="term"><strong>jshell</strong></span></span>             is an interactive tool for learning the Java programming language and prototyping Java code
  <a id="jstack"></a><span class="command"><span class="term"><strong>jstack</strong></span></span>             prints Java stack traces of Java threads for a given Java process, core file, or a remote debug server
  <a id="jstat"></a><span class="command"><span class="term"><strong>jstat</strong></span></span>               displays performance statistics for an instrumented JVM
  <a id="jstatd"></a><span class="command"><span class="term"><strong>jstatd</strong></span></span>             is an RMI server application that monitors for the creation and termination of instrumented JVMs
  <a id="jwebserver"></a><span class="command"><span class="term"><strong>jwebserver</strong></span></span>     provides a minimal HTTP server, designed to be used for prototyping, testing, and debugging
  <a id="keytool"></a><span class="command"><span class="term"><strong>keytool</strong></span></span>           is a key and certificate management utility
  <a id="rmiregistry"></a><span class="command"><span class="term"><strong>rmiregistry</strong></span></span>   creates and starts a remote object registry on the specified port on the current host
  <a id="serialver"></a><span class="command"><span class="term"><strong>serialver</strong></span></span>       returns the serialVersionUID for one or more classes in a form suitable for copying into an evolving class
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](java.md "Java-21.0.10")

    Java-21.0.10

-   [Next](ojdk-conf.md "Configuring the Java environment")

    Configuring the Java environment

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
