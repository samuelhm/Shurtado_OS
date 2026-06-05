::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](epdfview.md "ePDFView-gtk3-20200814"){accesskey="p"}

    ePDFView-gtk3-20200814

-   [Next](mupdf.md "MuPDF-1.26.12"){accesskey="n"}

    MuPDF-1.26.12

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fop}fop-2.11 {#fop-2.11 .sect1}

:::::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to fop {#introduction-to-fop .sect2}

The [FOP]{.application} (Formatting Objects Processor) package contains a print formatter driven by XSL formatting objects (XSL-FO). It is a [Java]{.application} application that reads a formatting object tree and renders the resulting pages to a specified output. Output formats currently supported include PDF, PCL, PostScript, SVG, XML (area tree representation), print, AWT, MIF and ASCII text. The primary output target is PDF.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.apache.org/dist/xmlgraphics/fop/source/fop-2.11-src.tar.gz](https://archive.apache.org/dist/xmlgraphics/fop/source/fop-2.11-src.tar.gz){.ulink}

-   Download MD5 sum: b202dcd7c6dcaf3ec5d14bb193d7bf01

-   Download size: 21 MB

-   Estimated disk space required: 343 MB (including files downloaded to the user directory)

-   Estimated build time: 0.9 SBU
:::

### Additional Downloads

::: itemizedlist
**Required Additional Downloads:**

-   Maven build system:\
    [https://archive.apache.org/dist/maven/maven-3/3.9.12/binaries/apache-maven-3.9.12-bin.tar.gz](https://archive.apache.org/dist/maven/maven-3/3.9.12/binaries/apache-maven-3.9.12-bin.tar.gz){.ulink}\
    bcd2fb0a7f3f27047b693c2a2818c965\
    11 MB (additionally, about 90 MB are downloaded to the building user's directory)\
:::

::: itemizedlist
**Recommended packages**

-   Objects for Formatting Objects (OFFO) hyphenation patterns:\
    [https://downloads.sourceforge.net/offo/2.2/offo-hyphenation.zip](https://downloads.sourceforge.net/offo/2.2/offo-hyphenation.zip){.ulink}\
    bf9c09bf05108ef9661b8f08d91c2336\
    862 KB\
:::

### fop Dependencies

#### Required

[apache-ant-1.10.17](../general/apache-ant.md "apache-ant-1.10.17"){.xref}

#### Recommended

[libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref} (required for the unpacking OFFO hyphenation patterns)

#### Optional

[a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref} (to run tests), [JAI Image I/O Tools](https://jai-tools.blogspot.com/){.ulink}, and [JEuclid](https://jeuclid.sourceforge.net/){.ulink}
:::::::

:::::: {.installation lang="en"}
## Installation of fop {#installation-of-fop .sect2}

Ensure `$JAVA_HOME`{.envar} is set correctly before beginning the build. To build the [JIMI SDK]{.application} and/or [XMLUnit]{.application} extension classes, ensure the corresponding `.jar`{.filename} files can be found via the `CLASSPATH`{.envar} environment variable.

::: {.sect3 lang="en"}
### Installing OFFO Hyphenation Patterns {#installing-offo-hyphenation-patterns .sect3}

Copy the XML hyphenation patterns into the fop source tree by running the following commands:

``` userinput
unzip ../offo-hyphenation.zip &&
cp offo-hyphenation/hyph/* fop/hyph &&
rm -rf offo-hyphenation
```
:::

::: {.sect3 lang="en"}
### Installing a temporary Maven binary {#installing-a-temporary-maven-binary .sect3}

Starting with fop-2.5, the Maven build system is required. We use the binary provided by apache, that we install in a temporary location:

``` userinput
tar -xf ../apache-maven-3.9.12-bin.tar.gz -C /tmp
```
:::

::: {.sect3 lang="en"}
### Installing fop Components {#installing-fop-components .sect3}

The [**javadoc**]{.command} command that ships with OpenJDK 10 and later has become much stricter than previous versions regarding conformance of the Javadoc comments in source code to HTML. The FOP documentation does not meet those standards, so the conformance checks have to be disabled. This can be done with the following command:

``` userinput
sed -i '\@</javad@i\
<arg value="-Xdoclint:none"/>\
<arg value="--allow-script-in-comments"/>\
<arg value="--ignore-source-errors"/>' \
    fop/build.xml
```

Compile [fop]{.application} by running the following commands:

``` userinput
cd fop &&

LC_ALL=en_US.UTF-8                     \
PATH=$PATH:/tmp/apache-maven-3.9.12/bin \
ant package javadocs &&

mv build/javadocs .
```

This package comes with a test suite, but the java infrastructure installed in this book does not allow running it.

Now, install [Fop]{.application} as the `root`{.systemitem} user:

``` root
install -v -d -m755 -o root -g root          /opt/fop-2.11 &&
cp -vR build conf examples fop* javadocs lib /opt/fop-2.11 &&
chmod a+x /opt/fop-2.11/fop                                &&
ln -v -sfn fop-2.11 /opt/fop
```

Finally, remove the temporary copy of Apache Maven:

``` userinput
rm -rf /tmp/apache-maven-3.9.12
```
:::
::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i ... build.xml**]{.command}: This adds three switches to the [**javadoc**]{.command} command, preventing some errors from occurring when building the documentation.

[**export LC_ALL=en_US.UTF-8**]{.command}: the compiler fails if using an ASCII locale.

[**ant `target`{.option}**]{.command}: This reads the file `build.xml`{.filename} and builds the target: `compile`{.option} compiles the java sources, `jar-main`{.option} generates jar archives, `jar-hyphenation`{.option} generates the hyphenation patterns for FOP, `junit`{.option} runs the [junit]{.application} tests, and `javadocs`{.option} builds the documentation. The `all`{.option} target runs all of the above.

[**ln -v -sf fop-2.11 /opt/fop**]{.command}: This is optional and creates a convenience symlink so that `$FOP_HOME`{.envar} doesn't have to be changed each time there's a package version change.
:::

:::::: {.configuration lang="en"}
## Configuring fop {#configuring-fop .sect2}

::: {.sect3 lang="en"}
### []{#fop-config}Config Files {#config-files .sect3}

`~/.foprc`{.filename}
:::

:::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Using [fop]{.application} to process some large FO's (including the FO derived from the BLFS XML sources), can lead to memory errors. Unless you add a parameter to the [**java**]{.command} command used in the [**fop**]{.command} script you may receive messages similar to the one shown below:

`Exception in thread "main" java.lang.OutOfMemoryError: Java heap space`{.computeroutput}

To avoid errors like this, you need to pass an extra parameter to the [**java**]{.command} command used in the [**fop**]{.command} script. This can be accomplished by creating a `~/.foprc`{.filename} (which is sourced by the [**fop**]{.command} script) and adding the parameter to the `FOP_OPTS`{.envar} environment variable.

The [**fop**]{.command} script looks for a `FOP_HOME`{.envar} environment variable to locate the [fop]{.application} class libraries. You can create this variable using the `~/.foprc`{.filename} file as well. Create a `~/.foprc`{.filename} file using the following commands:

``` userinput
cat > ~/.foprc << "EOF"
FOP_OPTS="-Xmx<RAM_Installed>m"
FOP_HOME="/opt/fop"
EOF
```

Replace *`<RAM_Installed>`* with a number representing the amount of RAM installed in your computer (in megabytes). An example would be **`FOP_OPTS="-Xmx768m"`**.

To include the [**fop**]{.command} script in your path, update the system-wide profile with the following command as the `root`{.systemitem} user:

``` root
cat > /etc/profile.d/fop.sh << "EOF"
# Begin /etc/profile.d/fop.sh

pathappend /opt/fop

# End /etc/profile.d/fop.sh
EOF
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Running [**fop**]{.command} can be somewhat verbose. The default logging level can be changed from INFO to any of FINEST, FINER, FINE, CONFIG, INFO, WARNING, SEVERE, ALL, or OFF. To do this, edit `$JAVA_HOME/jre/lib/logging.properties`{.filename} and change the entries for `.level`{.option} and `java.util.logging.ConsoleHandler.level`{.option} to the desired value.
:::
::::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fop]{.segbody}
:::

::: seg
**Installed Libraries:** [fop.jar and numerous support library classes located in `/opt/fop/{build,lib}`{.filename}; JAI components include libmlib_jai.so, jai_codec.jar, jai_core.jar, and mlibwrapper_jai.jar]{.segbody}
:::

::: seg
**Installed Directory:** [/opt/fop-2.11]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
  []{#fop-prog}[[**fop**]{.command}]{.term}   is a wrapper script to the [**java**]{.command} command which sets up the [fop]{.application} environment and passes the required parameters
  []{#fop.jar}[`fop.jar`{.filename}]{.term}   contains all the [fop]{.application} [Java]{.application} classes
  ------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::

::: navfooter
-   [Prev](epdfview.md "ePDFView-gtk3-20200814"){accesskey="p"}

    ePDFView-gtk3-20200814

-   [Next](mupdf.md "MuPDF-1.26.12"){accesskey="n"}

    MuPDF-1.26.12

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
