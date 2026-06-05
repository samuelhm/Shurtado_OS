::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](openjade.md "OpenJade-1.3.2"){accesskey="p"}

    OpenJade-1.3.2

-   [Next](docbook-utils.md "DocBook-utils-0.6.14"){accesskey="n"}

    DocBook-utils-0.6.14

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#docbook-dsssl}docbook-dsssl-1.79 {#docbook-dsssl-1.79 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to DocBook DSSSL Stylesheets {#introduction-to-docbook-dsssl-stylesheets .sect2}

The [DocBook DSSSL Stylesheets]{.application} package contains DSSSL stylesheets. These are used by [OpenJade]{.application} or other tools to transform SGML and XML DocBook files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.bz2](https://downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.bz2){.ulink}

-   Download (FTP): [](){.ulink}

-   Download MD5 sum: bc192d23266b9a664ca0aba4a7794c7c

-   Download size: 277 KB

-   Estimated disk space required: 14 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
**Documentation and test data**

-   Download (HTTP): [https://downloads.sourceforge.net/docbook/docbook-dsssl-doc-1.79.tar.bz2](https://downloads.sourceforge.net/docbook/docbook-dsssl-doc-1.79.tar.bz2){.ulink}

-   Download MD5 sum: 9a7b809a21ab7d2749bb328334c380f2

-   Download size: 142 KB
:::

### DocBook DSSSL Stylesheets Dependencies

#### Required

[sgml-common-0.6.3](sgml-common.md "sgml-common-0.6.3"){.xref}

#### Required (to Test the DocBook SGML Toolchain)

[docbook-3.1-dtd](docbook-3.1-dtd.md "docbook-3.1-dtd"){.xref}, [docbook-4.5-dtd](docbook-4.5-dtd.md "docbook-4.5-dtd"){.xref}, [OpenSP-1.5.2](opensp.md "OpenSP-1.5.2"){.xref}, and [OpenJade-1.3.2](openjade.md "OpenJade-1.3.2"){.xref}
::::::

::: {.installation lang="en"}
## Installation of DocBook DSSSL Stylesheets {#installation-of-docbook-dsssl-stylesheets .sect2}

If you downloaded the documentation, run:

``` userinput
tar -xf ../docbook-dsssl-doc-1.79.tar.bz2 --strip-components=1
```

Install [DocBook DSSSL Stylesheets]{.application} by running the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 bin/collateindex.pl /usr/bin                      &&
install -v -m644 bin/collateindex.pl.1 /usr/share/man/man1         &&
install -v -d -m755 /usr/share/sgml/docbook/dsssl-stylesheets-1.79 &&
cp -v -R * /usr/share/sgml/docbook/dsssl-stylesheets-1.79          &&

install-catalog --add /etc/sgml/dsssl-docbook-stylesheets.cat \
    /usr/share/sgml/docbook/dsssl-stylesheets-1.79/catalog         &&

install-catalog --add /etc/sgml/dsssl-docbook-stylesheets.cat \
    /usr/share/sgml/docbook/dsssl-stylesheets-1.79/common/catalog  &&

install-catalog --add /etc/sgml/sgml-docbook.cat              \
    /etc/sgml/dsssl-docbook-stylesheets.cat
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

The above commands create an installation script for this package.
:::

::: {.testing lang="en"}
## Testing the DocBook SGML Toolchain (Optional) {#testing-the-docbook-sgml-toolchain-optional .sect2}

The following commands will perform the necessary tests to confirm that your installed DocBook SGML toolchain will produce desired results. You must have the [docbook-3.1-dtd](docbook-3.1-dtd.md "docbook-3.1-dtd"){.xref}, [docbook-4.5-dtd](docbook-4.5-dtd.md "docbook-4.5-dtd"){.xref}, [OpenSP-1.5.2](opensp.md "OpenSP-1.5.2"){.xref}, and [OpenJade-1.3.2](openjade.md "OpenJade-1.3.2"){.xref} packages installed, and perform the tests as the `root`{.systemitem} user.

All tests will be performed from the `/usr/share/sgml/docbook/dsssl-stylesheets-1.79/doc/testdata`{.filename} directory as the `root`{.systemitem} user:

``` root
cd /usr/share/sgml/docbook/dsssl-stylesheets-1.79/doc/testdata
```

The first test should produce no output to stdout (your screen) and create a file named `jtest.rtf`{.filename} in the current directory:

``` root
openjade -t rtf -d jtest.dsl jtest.sgm
```

The next test should return only the following line to stdout: `onsgmls:I: "OpenSP" version "1.5.2"`{.computeroutput}

``` root
onsgmls -sv test.sgm
```

The next test should produce no output to stdout and create a file named `test.rtf`{.filename} in the current directory:

``` root
openjade -t rtf \
    -d /usr/share/sgml/docbook/dsssl-stylesheets-1.79/print/docbook.dsl \
    test.sgm
```

The last test should produce no output to stdout and create a file named `c1.htm`{.filename} in the current directory:

``` root
openjade -t sgml \
    -d /usr/share/sgml/docbook/dsssl-stylesheets-1.79/html/docbook.dsl \
    test.sgm
```

Finally, clean up:

``` root
rm jtest.rtf test.rtf c1.htm
```
:::

:::::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::::: segmentedlist
::::::: seglistitem
::: seg
**Installed Program:** [collateindex.pl]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Files:** [DSSSL stylesheets]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/sgml/docbook/dsssl-stylesheets-1.79]{.segbody}
:::
:::::::
::::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------------------------
  []{#collateindex.pl}[[**collateindex.pl**]{.command}]{.term}   is a [Perl]{.application} script that creates a DocBook index from raw index data
  -------------------------------------------------------------- -----------------------------------------------------------------------------------
:::
::::::::::
::::::::::::::::::

::: navfooter
-   [Prev](openjade.md "OpenJade-1.3.2"){accesskey="p"}

    OpenJade-1.3.2

-   [Next](docbook-utils.md "DocBook-utils-0.6.14"){accesskey="n"}

    DocBook-utils-0.6.14

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
