::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](java.md "Java-21.0.10"){accesskey="p"}

    Java-21.0.10

-   [Next](ojdk-conf.md "Configuring the Java environment"){accesskey="n"}

    Configuring the Java environment

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#openjdk}OpenJDK-21.0.10 {#openjdk-21.0.10 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to OpenJDK {#introduction-to-openjdk .sect2}

[OpenJDK]{.application} is an open-source implementation of Oracle's Java Standard Edition platform. [OpenJDK]{.application} is useful for developing [Java]{.application} programs, and provides a complete runtime environment to run [Java]{.application} programs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

OpenJDK is GPL'd code, with a special exception made for non-free projects to use these classes in their proprietary products. In similar fashion to the LGPL, which allows non-free programs to link to libraries provided by free software, the [GNU General Public License, version 2, with the Classpath Exception](https://openjdk.org/legal/gplv2+ce.md){.ulink} allows third party programs to use classes provided by free software without the requirement that the third party software also be free. As with the LGPL, any modifications made to the free software portions of a third party application, must also be made freely available.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [OpenJDK]{.application} source includes a very thorough, open source test suite using the [JTreg]{.application} test harness. The testing instructions below allow testing the just built JDK for reasonable compatibility with the proprietary Oracle JDK. However, in order for an independent implementation to claim compatibility, it must pass a proprietary [JCK/TCK]{.application} test suite. No claims of compatibility, or even partial compatibility, may be made without passing an approved test suite.

Oracle does provide free community access, on a case-by-case basis, to a closed toolkit to ensure 100% compatibility with its proprietary JDK. Neither the binary version provided on the [Java-21.0.10](java.md "Java-21.0.10"){.xref} page nor the JVM built with the instructions below have been tested against the [TCK](https://openjdk.java.net/groups/conformance/JckAccess/jck-access.md){.ulink}. Any version that is built using the instructions given, cannot claim to be compatible with the proprietary JDK, without the user applying for, and completing the compatibility tests themselves.

With that in mind, the binaries produced using this build method are regularly tested against the TCK by the members listed on the site above. In addition to the community license above, an educational, non-commercial license for the TCK can be obtained [here](https://www.oracle.com/java/scholarship-program.md){.ulink}.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/openjdk/jdk21u/archive/jdk-21.0.10-ga.tar.gz](https://github.com/openjdk/jdk21u/archive/jdk-21.0.10-ga.tar.gz){.ulink}

-   Download MD5 sum: ea4fc0a1057529cae074ab6ab0a7e1f2

-   Download Size: 109 MB

-   Estimated disk space required: 4.0 GB (add 802 MB for tests)

-   Estimated build time: 3.8 SBU with 4 jobs (add 25 SBU for tests with 4 jobs)
:::

### Additional Downloads

[**Optional test harness**]{.strong}

::: itemizedlist
-   [https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/jtreg-8.2.1+1.tar.gz](https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/jtreg-8.2.1+1.tar.gz){.ulink}

-   Download MD5 sum: e5f9bac8e929180a6b1643f498755844

-   Download Size: 9.7 MB
:::

### OpenJDK Dependencies

#### Required Dependencies

An existing binary ([Java-21.0.10](java.md "Java-21.0.10"){.xref} or an earlier built version of this package. The instructions below assume that you are using [Configuring the Java environment](ojdk-conf.md "Configuring the Java environment"){.xref}), [alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [cpio-2.15](cpio.md "cpio-2.15"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref}, [Which-2.25](which.md "Which-2.25 and Alternatives"){.xref}, [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}, and [Zip-3.0](zip.md "Zip-3.0"){.xref}

#### Recommended

[make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}, [giflib-6.1.3](giflib.md "giflib-6.1.3"){.xref}, [harfBuzz-14.2.1](harfbuzz.md "harfBuzz-14.2.1"){.xref}, [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, and [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}

#### Optional

[git-2.54.0](git.md "Git-2.54.0"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, [mercurial-7.2.2](mercurial.md "Mercurial-7.2.2"){.xref}, [ccache](https://ccache.dev/){.ulink}, [pandoc](https://pandoc.org/){.ulink}, and [pigz](https://zlib.net/pigz){.ulink}
:::::::

::::: {.installation lang="en"}
## Installation of OpenJDK {#installation-of-openjdk .sect2}

If you have downloaded the optional test harness, unpack it now:

``` userinput
tar -xf ../jtreg-8.2.1+1.tar.gz
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Before proceeding, you should ensure that your environment `PATH`{.envar} variable contains the location of the Java compiler used for bootstrapping [OpenJDK]{.application}. This is the only requirement for the environment. Modern Java installations do not need `JAVA_HOME`{.envar} and `CLASSPATH`{.envar} is not used here. Furthermore, OpenJDK developers recommend unsetting `JAVA_HOME`{.envar} and `CLASSPATH`{.envar}.

The build system does not allow the `-j`{.option} switch in `MAKEFLAGS`{.envar}. See the command explanation for `--with-jobs=`{.option} for more information on customizing parallelization.
:::

Configure and build the package with the following commands:

``` userinput
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

``` userinput
export JT_JAVA=$(echo $PWD/build/*/jdk) &&
jtreg/bin/jtreg -jdk:$JT_JAVA -automatic -ignore:quiet -v1 \
    test/jdk:tier1 test/langtools:tier1 &&
unset JT_JAVA
```

For more control over the test suite, review the documentation available in `jtreg/doc/jtreg/usage.txt`{.filename}. To review the results, see the files `JTreport/test_{jdk,langtools}/text/stats.txt`{.filename} and `JTreport/test_{jdk,langtools}/text/summary.txt`{.filename}. You should expect to see around 80 failures and 10 errors.

Install the package with the following commands as the `root`{.systemitem} user:

``` root
install -vdm755 /opt/jdk-21.0.10+6             &&
cp -Rv build/*/images/jdk/* /opt/jdk-21.0.10+6 &&
chown -R root:root /opt/jdk-21.0.10+6          &&
for s in 16 24 32 48; do
  install -vDm644 src/java.desktop/unix/classes/sun/awt/X11/java-icon${s}.png \
                  /usr/share/icons/hicolor/${s}x${s}/apps/java.png
done
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you only wish to install the Java Runtime Environment, you can substitute `build/*/images/jre`{.filename} in the above [**cp**]{.command} command.
:::

There will be plenty of binaries with debug info that take up over half of the installed size. If you don't care about debugging, you can remove the info. As the `root`{.systemitem} user:

``` root
find /opt/jdk-21.0.10+6 -name *.debuginfo -delete
```

Restore the `MAKEFLAGS`{.envar} variable:

``` userinput
export MAKEFLAGS=$MAKEFLAGS_HOLD &&
unset  MAKEFLAGS_HOLD
```

There are now two [OpenJDK]{.application} SDKs installed in `/opt`{.filename}. You should decide on which one you would like to use as the default. Normally, you would opt for the just installed [OpenJDK]{.application}. If so, do the following as the `root`{.systemitem} user:

``` root
ln -v -nsf jdk-21.0.10+6 /opt/jdk
```

If desired, you can create .desktop files to add entries in the menu for [**java**]{.command} and [**jconsole**]{.command}. The needed icons have already been installed. As the `root`{.systemitem} user:

``` root
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
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**bash configure...**]{.command}: the top level `configure`{.filename} is a wrapper around the autotools one. It is not executable and must be run through [**bash**]{.command}.

*`--enable-unlimited-crypto`*: Because of limitations on the usage of cryptography in some countries, there is the possibility to limit the size of encryption keys and the use of some algorithms in a policy file. This switch allows to ship a policy file with no restriction. It is the responsibility of the user to ensure proper adherence to the law.

*`--disable-warnings-as-errors`*: This switch disables use of `-Werror`{.envar} in the build.

*`--with-stdc++lib=dynamic`*: This switch forces the build system to link to `libstdc++.so`{.filename} (dynamic) instead of `libstdc++.a`{.filename} (static).

*`--with-jobs=`*`$(nproc)`**: The *`-j`* passed to make does not work with make as invoked here. By default, the build system will use the number of CPUs - 1.

*`--with-jtreg=$PWD/jtreg`*: This switch tells configure where to find jtreg. Omit if you have not downloaded the optional test suite.

*`--with-{giflib,harfbuzz,lcms,libjpeg,libpng,zlib}=system`*: These switches force the build system to use the system libraries instead of the bundled versions.

*`--with-version-build`*: Currently, the build system does not include the build number in the version string. It has to be specified here.

*`--with-version-pre`*: This switch allows you to prefix the version string with a custom string.

*`--with-version-opt`*: This switch allows you to add an optional build description to the version string.

*`--with-cacerts-file=/etc/pki/tls/java/cacerts`*: Specifies where to find a `cacerts`{.filename} file, `/etc/pki/tls/java/`{.filename} on a BLFS system. Otherwise, an empty one is created. You can use the [**/usr/sbin/make-ca --force**]{.command} command to generate it, once you have installed the Java binaries.

`--with-boot-jdk`{.option}: This switch provides the location of the temporary [JDK]{.application}. It is normally not needed if [**java**]{.command} is found in the `PATH`{.envar}.
:::

::::: {.configuration lang="en"}
## []{#openjdk-config}Configuring OpenJDK {#configuring-openjdk .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Normally, the Java environment has been configured after installing the binary version, and can be used with the just built package as well. Review [Configuring the Java environment](ojdk-conf.md "Configuring the Java environment"){.xref} in case you want to modify something.

To test if the man pages are correctly installed, issue [**source /etc/profile**]{.command} and [**man java**]{.command} to display the respective man page.
:::

::: {.sect3 lang="en"}
### Setting up the JRE Certificate Authority Certificates (cacerts) file {#setting-up-the-jre-certificate-authority-certificates-cacerts-file .sect3}

If you have run the instructions on the [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} page, you only need to create a symlink in the default location for the `cacerts`{.filename} file. As user `root`{.systemitem}:

``` root
ln -sfv /etc/pki/tls/java/cacerts /opt/jdk/lib/security/cacerts
```

To check the installation, issue:

``` root
cd /opt/jdk
bin/keytool -list -cacerts
```

At the prompt `Enter keystore password:`{.computeroutput}, enter **`changeit`** (the default) or just press the [“[Enter]{.quote}”]{.quote} key. If the `cacerts`{.filename} file was installed correctly, you will see a list of the certificates with related information for each one. If not, you need to reinstall them.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [jar, jarsigner, java, javac, javadoc, javap, jcmd, jconsole, jdb, jdeprscan, jdeps, jfr, jhsdb, jimage, jinfo, jlink, jmap, jmod, jpackage, jps, jrunscript, jshell, jstack, jstat, jstatd, jwebserver, keytool, rmiregistry, and serialver]{.segbody}
:::

::: seg
**Installed Libraries:** [37 libraries in /opt/jdk-21.0.10+6/lib/]{.segbody}
:::

::: seg
**Installed Directory:** [/opt/jdk-21.0.10+6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#jar}[[**jar**]{.command}]{.term}                   combines multiple files into a single jar archive
  []{#jarsigner}[[**jarsigner**]{.command}]{.term}       signs jar files and verifies the signatures and integrity of a signed jar file
  []{#java-prog}[[**java**]{.command}]{.term}            launches a Java application by starting a Java runtime environment, loading a specified class and invoking its main method
  []{#javac}[[**javac**]{.command}]{.term}               reads class and interface definitions, written in the Java programming language, and compiles them into bytecode class files
  []{#javadoc}[[**javadoc**]{.command}]{.term}           parses the declarations and documentation comments in a set of Java source files and produces a corresponding set of HTML pages describing the classes, interfaces, constructors, methods, and fields
  []{#javap}[[**javap**]{.command}]{.term}               disassembles a Java class file
  []{#jcmd}[[**jcmd**]{.command}]{.term}                 is a utility to send diagnostic command requests to a running Java Virtual Machine
  []{#jconsole}[[**jconsole**]{.command}]{.term}         is a graphical console tool to monitor and manage both local and remote Java applications and virtual machines
  []{#jdb}[[**jdb**]{.command}]{.term}                   is a simple command-line debugger for Java classes
  []{#jdeprscan}[[**jdeprscan**]{.command}]{.term}       scans class or jar files for uses of deprecated API elements
  []{#jdeps}[[**jdeps**]{.command}]{.term}               shows the package-level or class-level dependencies of Java class files
  []{#jfr}[[**jfr**]{.command}]{.term}                   is a tool for working with [“[Flight Recorder]{.quote}”]{.quote} files
  []{#jhsdb}[[**jhsdb**]{.command}]{.term}               is a tool to analyze the content of a core dump from a crashed Java Virtual Machine (JVM)
  []{#jimage}[[**jimage**]{.command}]{.term}             is used to list, extract, verify, or get information about modules in [*jimage*]{.emphasis} format
  []{#jinfo}[[**jinfo**]{.command}]{.term}               prints Java configuration information for a given Java process, core file, or a remote debug server
  []{#jlink}[[**jlink**]{.command}]{.term}               is used to assemble and optimize a set of modules and their dependencies into a custom runtime image
  []{#jmap}[[**jmap**]{.command}]{.term}                 prints shared object memory maps or heap memory details of a given process, core file, or a remote debug server
  []{#jmod}[[**jmod**]{.command}]{.term}                 creates JMOD files and lists the content of existing JMOD files
  []{#jpackage}[[**jpackage**]{.command}]{.term}         generates java application packages and images
  []{#jps}[[**jps**]{.command}]{.term}                   lists the instrumented JVMs on the target system
  []{#jrunscript}[[**jrunscript**]{.command}]{.term}     is a command line script shell
  []{#jshell}[[**jshell**]{.command}]{.term}             is an interactive tool for learning the Java programming language and prototyping Java code
  []{#jstack}[[**jstack**]{.command}]{.term}             prints Java stack traces of Java threads for a given Java process, core file, or a remote debug server
  []{#jstat}[[**jstat**]{.command}]{.term}               displays performance statistics for an instrumented JVM
  []{#jstatd}[[**jstatd**]{.command}]{.term}             is an RMI server application that monitors for the creation and termination of instrumented JVMs
  []{#jwebserver}[[**jwebserver**]{.command}]{.term}     provides a minimal HTTP server, designed to be used for prototyping, testing, and debugging
  []{#keytool}[[**keytool**]{.command}]{.term}           is a key and certificate management utility
  []{#rmiregistry}[[**rmiregistry**]{.command}]{.term}   creates and starts a remote object registry on the specified port on the current host
  []{#serialver}[[**serialver**]{.command}]{.term}       returns the serialVersionUID for one or more classes in a form suitable for copying into an evolving class
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](java.md "Java-21.0.10"){accesskey="p"}

    Java-21.0.10

-   [Next](ojdk-conf.md "Configuring the Java environment"){accesskey="n"}

    Configuring the Java environment

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
