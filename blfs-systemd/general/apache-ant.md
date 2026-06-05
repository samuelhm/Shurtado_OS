::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](ojdk-conf.md "Configuring the Java environment"){accesskey="p"}

    Configuring the Java environment

-   [Next](../basicnet/basicnet.md "Networking"){accesskey="n"}

    Networking

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#apache-ant}apache-ant-1.10.17 {#apache-ant-1.10.17 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Apache Ant {#introduction-to-apache-ant .sect2}

The [Apache Ant]{.application} package is a [Java]{.application}-based build tool. In theory, it is like the [**make**]{.command} command, but without [**make**]{.command}'s wrinkles. [Ant]{.application} is different. Instead of a model that is extended with shell-based commands, [Ant]{.application} is extended using [Java]{.application} classes. Instead of writing shell commands, the configuration files are XML-based, calling out a target tree that executes various tasks. Each task is run by an object that implements a particular task interface.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.apache.org/dist/ant/source/apache-ant-1.10.17-src.tar.xz](https://archive.apache.org/dist/ant/source/apache-ant-1.10.17-src.tar.xz){.ulink}

-   Download MD5 sum: 218213b1db69824923c2439461213527

-   Download size: 3.7 MB

-   Estimated disk space required: 328 MB

-   Estimated build time: 0.2 SBU (excluding download time)
:::

### Apache Ant Dependencies

#### Required

A JDK ([Java Binary](java.md#java-bin "Binary JDK Information"){.xref} or [OpenJDK-21.0.10](openjdk.md "OpenJDK-21.0.10"){.xref}) and [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::
::::::

::: {.installation lang="en"}
## Installation of Apache Ant {#installation-of-apache-ant .sect2}

Build a limited bootstrap version of [Apache Ant]{.application} using the following command:

``` userinput
./bootstrap.sh
```

Download the runtime dependencies using the `fetch.xml`{.filename} ant build script:

``` userinput
bootstrap/bin/ant -f fetch.xml -Ddest=optional
```

Build [Apache Ant]{.application} by running the following command:

``` userinput
./build.sh -Ddist.dir=$PWD/ant-1.10.17 dist
```

Install, as the `root`{.systemitem} user:

``` root
cp -rv ant-1.10.17 /opt/            &&
chown -R root:root /opt/ant-1.10.17 &&
ln -sfv ant-1.10.17 /opt/ant
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**bootstrap/bin/ant -f fetch.xml -Ddest=optional**]{.command}: Downloads the missing dependencies to the user's home directory, and copies them into the source tree (in the `lib/optional`{.filename} directory, where [**ant**]{.command} picks them up at build time).

[**./build.sh -Ddist.dir=\$PWD/ant-1.10.17 dist**]{.command}: This command builds, tests, then installs the package into a temporary directory.
:::

::::: {.configuration lang="en"}
## Configuring Apache Ant {#configuring-apache-ant .sect2}

::: {.sect3 lang="en"}
### []{#apache-ant-config}Config Files {#config-files .sect3}

`/etc/ant/ant.conf`{.filename}, `~/.ant/ant.conf`{.filename}, and `~/.antrc`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Some packages will require [**ant**]{.command} to be in the search path and the `ANT_HOME`{.envar} environment variable defined. Satisfy these requirements by issuing, as the `root`{.systemitem} user:

``` root
cat > /etc/profile.d/ant.sh << EOF
# Begin /etc/profile.d/ant.sh

pathappend /opt/ant/bin
export ANT_HOME=/opt/ant

# End /etc/profile.d/ant.sh
EOF
```

The above instructions assume you have configured your system as described in [The Bash Shell Startup Files](../postlfs/profile.md "The Bash Shell Startup Files"){.xref}.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ant, antRun, antRun.pl, complete-ant-cmd.pl, runant.pl, and runant.py]{.segbody}
:::

::: seg
**Installed Libraries:** [Numerous `ant*.jar`{.filename} and dependent libraries in `$ANT_HOME`{.envar}`/lib`{.filename}]{.segbody}
:::

::: seg
**Installed Directories:** [/opt/ant-1.10.17]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
  []{#ant}[[**ant**]{.command}]{.term}                                   is a [Java]{.application} based build tool used by many packages instead of the conventional [**make**]{.command} program
  []{#antRun}[[**antRun**]{.command}]{.term}                             is a support script used to start [**ant**]{.command} build scripts in a given directory
  []{#antRun.pl}[[**antRun.pl**]{.command}]{.term}                       is a [Perl]{.application} script that provides similar functionality offered by the [**antRun**]{.command} script
  []{#complete-ant-cmd.pl}[[**complete-ant-cmd.pl**]{.command}]{.term}   is a [Perl]{.application} script that allows [Bash]{.application} to complete an [**ant**]{.command} command-line
  []{#runant.pl}[[**runant.pl**]{.command}]{.term}                       is a [Perl]{.application} wrapper script used to invoke [**ant**]{.command}
  []{#runant.py}[[**runant.py**]{.command}]{.term}                       is a [Python]{.application} wrapper script used to invoke [**ant**]{.command}
  []{#ant-star}[`ant*.jar`{.filename}]{.term}                            files are the [Apache Ant]{.application} [Java]{.application} class libraries
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](ojdk-conf.md "Configuring the Java environment"){accesskey="p"}

    Configuring the Java environment

-   [Next](../basicnet/basicnet.md "Networking"){accesskey="n"}

    Networking

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
