::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Part XIII. Printing, Scanning and Typesetting

-   [Prev](paps.md "paps-0.8.0"){accesskey="p"}

    paps-0.8.0

-   [Next](tex-path.md "Setting the PATH for TeX Live"){accesskey="n"}

    Setting the PATH for TeX Live

-   [Up](pst.md "Part XIII. Printing, Scanning and Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pst-typesetting}Typesetting {#typesetting .chapter}

:::: {.chapter lang="en"}
This chapter includes [texlive]{.application} applications that create output equivalent to typesetting.

There are two alternative routes through this chapter:

Some people may wish to use the binary installer, either because of the complexity of installing all of [texlive]{.application} from source, or because they only want a part of the package, or perhaps because they wish to get updates as soon as those are available (the source is only updated annually, but the binaries and associated tex and sty files are updated for approximately 10 months). These people should begin at [Setting the PATH for TeX Live](tex-path.md "Setting the PATH for TeX Live"){.xref} and then follow the [install-tl-unx](tl-installer.md "install-tl-unx"){.xref} instructions. After installing, they can run [**tlmgr**]{.command} to update their system.

Most people reading BLFS will wish to build from source. BLFS used to start by installing [install-tl-unx]{.application} and then use that to bootstrap the build. Nowadays, we build almost the whole of [texlive]{.application} [*without*]{.emphasis} a binary install, by adding the separately-packaged texmf files into this build. For this, begin at [Setting the PATH for TeX Live](tex-path.md "Setting the PATH for TeX Live"){.xref} then go to [texlive-20250308](texlive.md "texlive-20250308-source"){.xref} which will install most of [texlive]{.application}, together with [*all*]{.emphasis} of the supporting files. This almost-complete install can then be used to build the remaining parts of [texlive]{.application}: [asymptote-3.10](asymptote.md "asymptote-3.10"){.xref}, [biber-2.21](biber.md "biber-2.21"){.xref}, [dvisvgm-3.6](dvisvgm.md "dvisvgm-3.6"){.xref}, and [xindy-2.5.1](xindy.md "xindy-2.5.1"){.xref}.

Because the texmf files (including documentation, fonts, scripts and supporting files) are all in one tarball, it is not practical to limit what gets extracted in a sensible way (you could exclude one or other of the typesetting engines, not its many supporting files) when building from source in this manner.

In either case, BLFS installs into `/opt/texlive/2025`{.filename}.

Also, please note that texlive is released annually, and updating from the previous year to the current year is no longer supported. If for some reason you wish to keep versions for multiple years, for most things you can mount the old or new system at /opt/texlive and fix up your PATH as necessary. However doing that will not preserve any changes in `texmf-local`{.filename} and if you build from source and try to run a newer version of [biber]{.application} with an older version of [biblatex]{.application} it is unlikely to work.

::: toc
### Table of Contents

-   [Setting the PATH for TeX Live](tex-path.md)
-   [install-tl-unx](tl-installer.md)
-   [texlive-20250308-source](texlive.md)
-   [asymptote-3.10](asymptote.md)
-   [biber-2.21](biber.md)
-   [dvisvgm-3.6](dvisvgm.md)
-   [xindy-2.5.1](xindy.md)
:::
::::

::: navfooter
-   [Prev](paps.md "paps-0.8.0"){accesskey="p"}

    paps-0.8.0

-   [Next](tex-path.md "Setting the PATH for TeX Live"){accesskey="n"}

    Setting the PATH for TeX Live

-   [Up](pst.md "Part XIII. Printing, Scanning and Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
