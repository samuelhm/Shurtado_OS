::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libksba.md "libksba-1.8.0"){accesskey="p"}

    libksba-1.8.0

-   [Next](libmbim.md "libmbim-1.34.0"){accesskey="n"}

    libmbim-1.34.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#liblinear}liblinear-250 {#liblinear-250 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to liblinear {#introduction-to-liblinear .sect2}

This package provides a library for learning linear classifiers for large scale applications. It supports Support Vector Machines (SVM) with L2 and L1 loss, logistic regression, multi class classification and also Linear Programming Machines (L1-regularized SVMs). Its computational complexity scales linearly with the number of training examples making it one of the fastest SVM solvers around.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

After updating this package from [liblinear-247]{.application} or earlier, you need to reinstall [Nmap-7.99](../basicnet/nmap.md "Nmap-7.99"){.xref} in order to link to the new library.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/cjlin1/liblinear/archive/v250/liblinear-250.tar.gz](https://github.com/cjlin1/liblinear/archive/v250/liblinear-250.tar.gz){.ulink}

-   Download MD5 sum: 53ffb394295c7f766adc200a603d6e0d

-   Download size: 76 KB

-   Estimated disk space required: 712 KB

-   Estimated build time: less than 0.1 SBU
:::
::::::

::: {.installation lang="en"}
## Installation of liblinear {#installation-of-liblinear .sect2}

Install [liblinear]{.application} by running the following commands:

``` userinput
make lib
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
install -vm644 linear.h /usr/include   &&
install -vm755 liblinear.so.6 /usr/lib &&
ln -sfv liblinear.so.6 /usr/lib/liblinear.so
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [liblinear.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------
  []{#liblinear-lib}[`liblinear.so`{.filename}]{.term}   is a large linear classification library
  ------------------------------------------------------ ------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libksba.md "libksba-1.8.0"){accesskey="p"}

    libksba-1.8.0

-   [Next](libmbim.md "libmbim-1.34.0"){accesskey="n"}

    libmbim-1.34.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
