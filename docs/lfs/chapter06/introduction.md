::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](chapter06.md "Cross Compiling Temporary Tools"){accesskey="p"}

    Cross Compiling Temporary Tools

-   [Next](m4.md "M4-1.4.21"){accesskey="n"}

    M4-1.4.21

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-introduction-cross}6.1. Introduction {#introduction .sect1}

::: {.sect1 lang="en"}
This chapter shows how to cross-compile basic utilities using the just built cross-toolchain. Those utilities are installed into their final location, but cannot be used yet. Basic tasks still rely on the host\'s tools. Nevertheless, the installed libraries are used when linking.

Using the utilities will be possible in the next chapter after entering the ["[chroot]{.quote}"]{.quote} environment. But all the packages built in the present chapter need to be built before we do that. Therefore we cannot be independent of the host system yet.

Once again, let us recall that improper setting of `LFS`{.envar} together with building as `root`{.systemitem}, may render your computer unusable. This whole chapter must be done as user `lfs`{.systemitem}, with the environment as described in [Section 4.4, "Setting Up the Environment."](../chapter04/settingenvironment.md "4.4. Setting Up the Environment"){.xref}
:::

::: navfooter
-   [Prev](chapter06.md "Cross Compiling Temporary Tools"){accesskey="p"}

    Cross Compiling Temporary Tools

-   [Next](m4.md "M4-1.4.21"){accesskey="n"}

    M4-1.4.21

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
