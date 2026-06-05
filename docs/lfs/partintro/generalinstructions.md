::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Important Preliminary Material

-   [Prev](toolchaintechnotes.md "Toolchain Technical Notes"){accesskey="p"}

    Toolchain Technical Notes

-   [Next](../chapter05/chapter05.md "Compiling a Cross-Toolchain"){accesskey="n"}

    Compiling a Cross-Toolchain

-   [Up](partintro.md "Important Preliminary Material"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-generalinstructions}iii. General Compilation Instructions {#iii.-general-compilation-instructions .sect1}

::::: {.sect1 lang="en"}
::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

During a development cycle of LFS, the instructions in the book are often modified to adapt for a package update or take the advantage of new features from updated packages. Mixing up the instructions of different versions of the LFS book can cause subtle breakages. This kind of issue is generally a result from reusing some script created for a prior LFS release. Such a reuse is strongly discouraged. If you are reusing scripts for a prior LFS release for any reason, you\'ll need to be very careful to update the scripts to match current version of the LFS book.
:::

Here are some things you should know about building each package:

::: itemizedlist
-   Several packages are patched before compilation, but only when the patch is needed to circumvent a problem. A patch is often needed in both the current and the following chapters, but sometimes, when the same package is built more than once, the patch is not needed right away. Therefore, do not be concerned if instructions for a downloaded patch seem to be missing. Warning messages about [*offset*]{.emphasis} or [*fuzz*]{.emphasis} may also be encountered when applying a patch. Do not worry about these warnings; the patch was still successfully applied.

-   During the compilation of most packages, some warnings will scroll by on the screen. These are normal and can safely be ignored. These warnings are usually about deprecated, but not invalid, use of the C or C++ syntax. C standards change fairly often, and some packages have not yet been updated. This is not a serious problem, but it does cause the warnings to appear.

-   Check one last time that the `LFS`{.envar} environment variable is set up properly:

    ``` userinput
    echo $LFS
    ```

    Make sure the output shows the path to the LFS partition\'s mount point, which is `/mnt/lfs`{.filename}, using our example.

-   Finally, two important items must be emphasized:

    :::: {.admon .important}
    ![\[Important\]](../images/important.png)
    ### Important

    The build instructions assume that the [Host System Requirements](../chapter02/hostreqs.md "2.2. Host System Requirements"){.xref}, including symbolic links, have been set properly:

    ::: itemizedlist
    -   [**bash**]{.command} is the shell in use.

    -   [**sh**]{.command} is a symbolic link to [**bash**]{.command}.

    -   [**/usr/bin/awk**]{.command} is a symbolic link to [**gawk**]{.command}.

    -   [**/usr/bin/yacc**]{.command} is a symbolic link to [**bison**]{.command}, or to a small script that executes bison.
    :::
    ::::

    :::: {.admon .important}
    ![\[Important\]](../images/important.png)
    ### Important

    Here is a synopsis of the build process.

    ::: orderedlist
    1.  Place all the sources and patches in a directory that will be accessible from the chroot environment, such as `/mnt/lfs/sources/`{.filename}.

    2.  Change to the `/mnt/lfs/sources/`{.filename} directory.

    3.  []{#buildinstr}For each package:

        ::: orderedlist
        1.  Using the [**tar**]{.command} program, extract the package to be built. In [Chapter 5](../chapter05/chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){.xref} and [Chapter 6](../chapter06/chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){.xref}, ensure you are the [*lfs*]{.emphasis} user when extracting the package.

            Do not use any method except the [**tar**]{.command} command to extract the source code. Notably, using the [**cp -R**]{.command} command to copy the source code tree somewhere else can destroy timestamps in the source tree, and cause the build to fail.

        2.  Change to the directory created when the package was extracted.

        3.  Follow the instructions for building the package.

        4.  Change back to the sources directory when the build is complete.

        5.  Delete the extracted source directory unless instructed otherwise.
        :::
    :::
    ::::
:::
:::::

::: navfooter
-   [Prev](toolchaintechnotes.md "Toolchain Technical Notes"){accesskey="p"}

    Toolchain Technical Notes

-   [Next](../chapter05/chapter05.md "Compiling a Cross-Toolchain"){accesskey="n"}

    Compiling a Cross-Toolchain

-   [Up](partintro.md "Important Preliminary Material"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
