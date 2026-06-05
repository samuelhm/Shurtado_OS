::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Important Preliminary Material

-   [Prev](partintro.md "Important Preliminary Material"){accesskey="p"}

    Important Preliminary Material

-   [Next](toolchaintechnotes.md "Toolchain Technical Notes"){accesskey="n"}

    Toolchain Technical Notes

-   [Up](partintro.md "Important Preliminary Material"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-part3intro-intro}i. Introduction {#i.-introduction .sect1}

:::: {.sect1 lang="en"}
This part is divided into three stages: first, building a cross compiler and its associated libraries; second, using this cross toolchain to build several utilities in a way that isolates them from the host distribution; and third, entering the chroot environment (which further improves host isolation) and constructing the remaining tools needed to build the final system.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

This is where the real work of building a new system begins. Be very careful to follow the instructions exactly as the book shows them. You should try to understand what each command does, and no matter how eager you are to finish your build, you should refrain from blindly typing the commands as shown. Read the documentation when there is something you do not understand. Also, keep track of your typing and of the output of commands, by using the [**tee**]{.command} utility to send the terminal output to a file. This makes debugging easier if something goes wrong.
:::

The next section is a technical introduction to the build process, while the following one presents [**very important**]{.strong} general instructions.
::::

::: navfooter
-   [Prev](partintro.md "Important Preliminary Material"){accesskey="p"}

    Important Preliminary Material

-   [Next](toolchaintechnotes.md "Toolchain Technical Notes"){accesskey="n"}

    Toolchain Technical Notes

-   [Up](partintro.md "Important Preliminary Material"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
