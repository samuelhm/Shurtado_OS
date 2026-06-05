::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 1. Welcome to BLFS

-   [Prev](wiki.md "Editor Notes"){accesskey="p"}

    Editor Notes

-   [Next](credits.md "Credits"){accesskey="n"}

    Credits

-   [Up](welcome.md "Chapter 1. Welcome to BLFS"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#askhelp}Asking for Help and the FAQ {#asking-for-help-and-the-faq .sect1}

::::::: {.sect1 lang="en"}
If you encounter a problem while using this book, and your problem is not listed in the FAQ ([https://www.linuxfromscratch.org/faq](https://www.linuxfromscratch.org/faq){.ulink}), you will find that most of the people on Internet Relay Chat (IRC) and on the mailing lists are willing to help you. An overview of the LFS mailing lists can be found in [Mailing lists](maillists.md "Mailing Lists"){.xref}. To assist us in diagnosing and solving your problem, include as much relevant information as possible in your request for help.

:::: {.sect2 lang="en"}
## Things to Check Prior to Asking {#things-to-check-prior-to-asking .sect2}

Before asking for help, you should review the following items:

::: itemizedlist
-   Is the hardware support compiled into the kernel or available as a module to the kernel? If it is a module, is it configured properly in `modprobe.conf`{.filename} and has it been loaded? You should use [**lsmod**]{.command} as the `root`{.systemitem} user to see if it's loaded. Check the `sys.log`{.filename} file or run [**modprobe *`<driver>`***]{.command} to review any error message. If it loads properly, you may need to add the [**modprobe**]{.command} command to your boot scripts.

-   Are your permissions properly set, especially for devices? LFS uses groups to make these settings easier, but it also adds the step of adding users to groups to allow access. A simple [**usermod -G audio *`<user>`***]{.command} may be all that's necessary for that user to have access to the sound system. Any question that starts out with [“[It works as root, but not as ...]{.quote}”]{.quote} requires a thorough review of permissions prior to asking.

-   BLFS liberally uses `/opt/`{.filename}*`<package>`*. The main objection to this centers around the need to expand your environment variables for each package placed there (e.g., PATH=\$PATH:/opt/kde/bin). In most cases, the package instructions will walk you through the changes, but some will not. The section called [“[[Going Beyond BLFS](beyond.md "Going Beyond BLFS"){.xref}]{.quote}”]{.quote} is available to help you check.
:::
::::

:::: {.sect2 lang="en"}
## Things to Mention {#things-to-mention .sect2}

Apart from a brief explanation of the problem you're having, the essential things to include in your request are:

::: itemizedlist
-   the version of the book you are using (being r13.0-790),

-   the package or section giving you problems,

-   the exact error message or symptom you are receiving,

-   whether you have deviated from the book or LFS at all (packing the book instructions into a script while the book does not tell to do so is always considered as deviation, because there have been too many cases of issues where people fail to notice a subtle difference between the script and the book),

-   if you are installing a BLFS package on a non-LFS system.
:::

Note that saying that you've deviated from the book doesn't mean that we won't help you. It'll just help us to see other possible causes of your problem. If you've deviated from the book, you should also tell precisely what the deviation is so the other people can reproduce it. A script can be attached to show what you've exactly done (especially if you already have such a script, i.e. you've already have deviated from the book by packing the book instructions into a script and run it).

Expect guidance instead of specific instructions. If you are instructed to read something, please do so. It generally implies that the answer was way too obvious and that the question would not have been asked if a little research was done prior to asking. The volunteers in the mailing list prefer not to be used as an alternative to doing reasonable research on your end. In addition, the quality of your experience with BLFS is also greatly enhanced by this research, and the quality of volunteers is enhanced because they don't feel that their time has been abused, so they are far more likely to participate.

An excellent article on asking for help on the Internet in general has been written by Eric S. Raymond. It is available online at [http://www.catb.org/\~esr/faqs/smart-questions.html](http://www.catb.org/~esr/faqs/smart-questions.md){.ulink}. Read and follow the hints in that document and you are much more likely to get a response to start with and also to get the help you actually need.
::::
:::::::

::: navfooter
-   [Prev](wiki.md "Editor Notes"){accesskey="p"}

    Editor Notes

-   [Next](credits.md "Credits"){accesskey="n"}

    Credits

-   [Up](welcome.md "Chapter 1. Welcome to BLFS"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
