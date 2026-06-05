::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](yasm.md "yasm-1.3.0"){accesskey="p"}

    yasm-1.3.0

-   [Next](openjdk.md "OpenJDK-21.0.10"){accesskey="n"}

    OpenJDK-21.0.10

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#java}Java-21.0.10 {#java-21.0.10 .sect1}

::::::::: {.sect1 lang="en"}
::: {.sect2 lang="en"}
## About Java {#about-java .sect2}

Java is different from most of the packages in LFS and BLFS. It is a programming language that works with files of bytecode to obtain instructions and executes them in a Java Virtual Machine (JVM). An introductory java program looks like:

``` screen
public class HelloWorld
{
    public static void main(String[] args)
    {
        System.out.println("Hello, World");
    }
}
```

This program is saved as `HelloWorld.java`{.filename}. The file name, [*HelloWorld*]{.emphasis}, must match the class name. It is then converted into byte code with [**javac HelloWorld.java**]{.command}. The output file is `HelloWorld.class`{.filename}. The program is executed with [**java HelloWorld**]{.command}. This creates a JVM and runs the code. The 'class' extension must not be specified.

Several class files can be combined into one file with the [**jar**]{.command} command. This is similar to the standard [**tar**]{.command} command. For instance, the command [**jar cf myjar.jar \*.class**]{.command} will combine all class files in a directory into one jar file. These act as library files.

The JVM can search for and use classes in jar files automatically. It uses the `CLASSPATH`{.envar} environment variable to search for jar files. This is a standard list of colon-separated directory names similar to the `PATH`{.envar} environment variable.
:::

:::::: {.package lang="en"}
## []{#java-bin}Binary JDK Information {#binary-jdk-information .sect2}

Creating a JVM from source requires a set of circular dependencies. The first thing that's needed is a set of programs called a Java Development Kit (JDK). This set of programs includes [**java**]{.command}, [**javac**]{.command}, [**jar**]{.command}, and several others. It also includes several base [*jar*]{.emphasis} files.

To start, we set up a binary installation of the JDK created by the BLFS editors. It is installed in the `/opt`{.filename} directory to allow for multiple installations, including a source based version.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Binary Package Information

::: itemizedlist
-   Binary download (x86): [https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/OpenJDK-21.0.10+6-i686-bin.tar.xz](https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/OpenJDK-21.0.10+6-i686-bin.tar.xz){.ulink}

-   Download MD5 sum: 79dcce21ca6bfd8f1892bfabf3e3926d

-   Download size (binary): 164 MB

-   Estimated disk space required: 315 MB
:::

::: itemizedlist
-   Binary download (x86_64): [https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/OpenJDK-21.0.10+6-x86_64-bin.tar.xz](https://anduin.linuxfromscratch.org/BLFS/OpenJDK/OpenJDK-21.0.10/OpenJDK-21.0.10+6-x86_64-bin.tar.xz){.ulink}

-   Download MD5 sum: c457d34d4234a3f0d8cf1f79c0513a9c

-   Download size (binary): 170 MB

-   Estimated disk space required: 344 MB
:::

### Java Binary Runtime Dependencies

[alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [giflib-6.1.3](giflib.md "giflib-6.1.3"){.xref}, [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, and [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}
::::::

::: {.installation lang="en"}
## Installation of the Java BinaryJDK {#installation-of-the-java-binaryjdk .sect2}

Begin by extracting the appropriate binary tarball for your architecture and changing to the extracted directory. Install the binary [OpenJDK]{.application} with the following commands as the `root`{.systemitem} user:

``` root
install -vdm755 /opt/OpenJDK-21.0.10-bin &&
mv -v * /opt/OpenJDK-21.0.10-bin         &&
chown -R root:root /opt/OpenJDK-21.0.10-bin
```

The binary version is now installed. You may create a symlink to that version by issuing, as the `root`{.systemitem} user:

``` root
ln -sfn OpenJDK-21.0.10-bin /opt/jdk
```

You may now proceed to [Configuring the Java environment](ojdk-conf.md "Configuring the Java environment"){.xref}, where the instructions assume that the above link exists.
:::
:::::::::

::: navfooter
-   [Prev](yasm.md "yasm-1.3.0"){accesskey="p"}

    yasm-1.3.0

-   [Next](openjdk.md "OpenJDK-21.0.10"){accesskey="n"}

    OpenJDK-21.0.10

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
