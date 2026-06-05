::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](openjdk.md "OpenJDK-21.0.10"){accesskey="p"}

    OpenJDK-21.0.10

-   [Next](apache-ant.md "apache-ant-1.10.17"){accesskey="n"}

    apache-ant-1.10.17

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ojdk-conf}Configuring the Java environment {#configuring-the-java-environment .sect1}

::::: {.sect1 lang="en"}
::: {.sect2 lang="en"}
## []{#java-profile}Setting up the environment {#setting-up-the-environment .sect2}

After the package installation is complete, the next step is to make sure that the system can properly find the files. If you set up your login scripts as recommended in [The Bash Shell Startup Files](../postlfs/profile.md "The Bash Shell Startup Files"){.xref}, update the environment by creating the `openjdk.sh`{.filename} script, as the `root`{.systemitem} user:

``` root
cat > /etc/profile.d/openjdk.sh << "EOF"
# Begin /etc/profile.d/openjdk.sh

# Set JAVA_HOME directory
JAVA_HOME=/opt/jdk

# Adjust PATH
pathappend $JAVA_HOME/bin

# Auto Java CLASSPATH: Copy jar files to, or create symlinks in, the
# /usr/share/java directory.

AUTO_CLASSPATH_DIR=/usr/share/java

pathprepend . CLASSPATH

for dir in `find ${AUTO_CLASSPATH_DIR} -type d 2>/dev/null`; do
    pathappend $dir CLASSPATH
done

for jar in `find ${AUTO_CLASSPATH_DIR} -name "*.jar" 2>/dev/null`; do
    pathappend $jar CLASSPATH
done

export JAVA_HOME

# By default, Java creates several files in a directory named
# /tmp/hsperfdata_[username]. This directory contains files that are used for
# performance monitoring and profiling, but aren't normally needed on a BLFS
# system. This environment variable disables that feature.
_JAVA_OPTIONS="-XX:-UsePerfData"

export _JAVA_OPTIONS

unset AUTO_CLASSPATH_DIR dir jar _JAVA_OPTIONS

# End /etc/profile.d/openjdk.sh
EOF
```

If [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} is installed, the super user should have access to the above variables. Execute the following commands as the `root`{.systemitem} user:

``` root
cat > /etc/sudoers.d/java << "EOF"
Defaults env_keep += JAVA_HOME
Defaults env_keep += CLASSPATH
Defaults env_keep += _JAVA_OPTIONS
EOF
```

To use [**mandb**]{.command} to include the OpenJDK man pages in its database, issue, as the `root`{.systemitem} user:

``` root
cat >> /etc/man_db.conf << "EOF" &&
# Begin Java addition
MANDATORY_MANPATH     /opt/jdk/man
MANPATH_MAP           /opt/jdk/bin     /opt/jdk/man
MANDB_MAP             /opt/jdk/man     /var/cache/man/jdk
# End Java addition
EOF

mkdir -p /var/cache/man &&
mandb -c /opt/jdk/man
```
:::

::: {.sect2 lang="en"}
## []{#ojdk-certs}Setting up the Certificate Authority Certificates for Java {#setting-up-the-certificate-authority-certificates-for-java .sect2}

[OpenJDK]{.application} uses its own format for the CA certificates. The Java security modules use `$JAVA_HOME`{.envar}`/lib/security/cacerts`{.filename} by default. In order to keep all the certificates in one place, we use `/etc/pki/tls/java/cacerts`{.filename}. The instructions on the [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} page previously created the file located in `/etc/pki/tls/java`{.filename}. Set up a symlink in the default location as the `root`{.systemitem} user:

``` root
ln -sfv /etc/pki/tls/java/cacerts /opt/jdk/lib/security/cacerts
```

Use the following command to check if the `cacerts`{.filename} file has been successfully installed:

``` root
/opt/jdk/bin/keytool -list -cacerts
```

At the prompt `Enter keystore password:`{.computeroutput}, enter **`changeit`** (the default) or just press the [“[Enter]{.quote}”]{.quote} key. If the `cacerts`{.filename} file was installed correctly, you will see a list of the certificates with related information for each one. If not, you need to reinstall them.

If you later install a new JVM, you just have to create the symlink in the default location to be able to use the cacerts.
:::
:::::

::: navfooter
-   [Prev](openjdk.md "OpenJDK-21.0.10"){accesskey="p"}

    OpenJDK-21.0.10

-   [Next](apache-ant.md "apache-ant-1.10.17"){accesskey="n"}

    apache-ant-1.10.17

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
