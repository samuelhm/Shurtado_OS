::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 1. Introduction

-   [Prev](resources.md "Resources"){accesskey="p"}

    Resources

-   [Next](../part2.md "Preparing for the Build"){accesskey="n"}

    Preparing for the Build

-   [Up](chapter01.md "Chapter 1. Introduction"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-intro-askforhelp}1.5. Help {#help .sect1}

::::::::: {.sect1 lang="en"}
::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In case you\'ve hit an issue building one package with the LFS instruction, we strongly discourage posting the issue directly onto the upstream support channel before discussing via a LFS support channel listed in [Section 1.4, "Resources."](resources.md "1.4. Resources"){.xref} Doing so is often quite inefficient because the upstream maintainers are rarely familiar with LFS building procedure. Even if you\'ve really hit an upstream issue, the LFS community can still help to isolate the information wanted by the upstream maintainers and make a proper report.

If you must ask a question directly via an upstream support channel, you shall at least note that many upstream projects have the support channels separated from the bug tracker. The ["[bug]{.quote}"]{.quote} reports for asking questions are considered invalid and may annoy upstream developers for these projects.
:::

If an issue or a question is encountered while working through this book, please check the FAQ page at [https://www.linuxfromscratch.org/faq/#generalfaq](https://www.linuxfromscratch.org/faq/#generalfaq){.ulink}. Questions are often already answered there. If your question is not answered on that page, try to find the source of the problem. The following hint will give you some guidance for troubleshooting: [https://www.linuxfromscratch.org/hints/downloads/files/errors.txt](https://www.linuxfromscratch.org/hints/downloads/files/errors.txt){.ulink}.

If you cannot find your problem listed in the FAQ, search the mailing lists at [https://www.linuxfromscratch.org/search.html](https://www.linuxfromscratch.org/search.html){.ulink}.

We also have a wonderful LFS community that is willing to offer assistance through the mailing lists and IRC (see the [Section 1.4, "Resources"](resources.md "1.4. Resources"){.xref} section of this book). However, we get several support questions every day, and many of them could have been easily answered by going to the FAQ or by searching the mailing lists first. So, for us to offer the best assistance possible, you should first do some research on your own. That allows us to focus on the more unusual support needs. If your searches do not produce a solution, please include all the relevant information (mentioned below) in your request for help.

::::: {.sect2 lang="en"}
## 1.5.1. Things to Mention {#things-to-mention .sect2}

Apart from a brief explanation of the problem being experienced, any request for help should include these essential things:

::: itemizedlist
-   The version of the book being used (in this case r13.0-131-systemd)

-   The host distribution and version being used to create LFS

-   The output from the [Host System Requirements](../chapter02/hostreqs.md#version-check){.xref} script

-   The package or section the problem was encountered in

-   The exact error message, or a clear description of the problem

-   Note whether you have deviated from the book at all
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Deviating from this book does [*not*]{.emphasis} mean that we will not help you. After all, LFS is about personal preference. Being up-front about any changes to the established procedure helps us evaluate and determine possible causes of your problem.
:::
:::::

::: {.sect2 lang="en"}
## 1.5.2. Configure Script Problems {#configure-script-problems .sect2}

If something goes wrong while running the [**configure**]{.command} script, review the `config.log`{.filename} file. This file may contain errors encountered during [**configure**]{.command} which were not printed to the screen. Include the [*relevant*]{.emphasis} lines if you need to ask for help.
:::

::: {.sect2 lang="en"}
## 1.5.3. Compilation Problems {#compilation-problems .sect2}

Both the screen output and the contents of various files are useful in determining the cause of compilation problems. The screen output from the [**configure**]{.command} script and the [**make**]{.command} run can be helpful. It is not necessary to include the entire output, but do include all of the relevant information. Here is an example of the type of information to include from the [**make**]{.command} screen output.

``` screen
gcc -D ALIASPATH=\"/mnt/lfs/usr/share/locale:.\"
-D LOCALEDIR=\"/mnt/lfs/usr/share/locale\"
-D LIBDIR=\"/mnt/lfs/usr/lib\"
-D INCLUDEDIR=\"/mnt/lfs/usr/include\" -D HAVE_CONFIG_H -I. -I.
-g -O2 -c getopt1.c
gcc -g -O2 -static -o make ar.o arscan.o commands.o dir.o
expand.o file.o function.o getopt.o implicit.o job.o main.o
misc.o read.o remake.o rule.o signame.o variable.o vpath.o
default.o remote-stub.o version.o opt1.o
-lutil job.o: In function `load_too_high':
/lfs/tmp/make-3.79.1/job.c:1565: undefined reference
to `getloadavg'
collect2: ld returned 1 exit status
make[2]: *** [make] Error 1
make[2]: Leaving directory `/lfs/tmp/make-3.79.1'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/lfs/tmp/make-3.79.1'
make: *** [all-recursive-am] Error 2
```

In this case, many people would just include the bottom section:

``` screen
make [2]: *** [make] Error 1
```

This is not enough information to diagnose the problem, because it only notes that something went wrong, not [*what*]{.emphasis} went wrong. The entire section, as in the example above, is what should be saved because it includes the command that was executed and all the associated error messages.

An excellent article about asking for help on the Internet is available online at [http://catb.org/\~esr/faqs/smart-questions.html](http://catb.org/~esr/faqs/smart-questions.html){.ulink}. Read this document, and follow the hints. Doing so will increase the likelihood of getting the help you need.
:::
:::::::::

::: navfooter
-   [Prev](resources.md "Resources"){accesskey="p"}

    Resources

-   [Next](../part2.md "Preparing for the Build"){accesskey="n"}

    Preparing for the Build

-   [Up](chapter01.md "Chapter 1. Introduction"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
