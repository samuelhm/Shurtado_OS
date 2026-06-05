::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](k3b.md "k3b-26.04.1"){accesskey="p"}

    k3b-26.04.1

-   [Next](plasma.md "KDE Plasma"){accesskey="n"}

    KDE Plasma

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kde-add-pkgs}Further KDE packages {#further-kde-packages .sect1}

::::: {.sect1 lang="en"}
This chapter did not provide instructions for all of the available packages in the KDE Software Compilation (KDE Gear). The included packages were selected based on what most people would want to use on a standard desktop computer.

For a full list of available packages, have a look on the KDE download servers at [https://download.kde.org/stable/release-service/26.04.1/src](https://download.kde.org/stable/release-service/26.04.1/src){.ulink}.

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/Further_KDE_Packages](https://wiki.linuxfromscratch.org/blfs/wiki/Further_KDE_Packages){.ulink}

Some additional packages worth mentioning are:

::: itemizedlist
-   Juk: A lightweight music player.

-   Dragon: A video player.

-   Kcalc: A scientific calculator.

-   Kwalletmanager: A credentials management application.

-   Marble: A global map program.

-   Krdc: A Remote Desktop Viewer that supports VNC and RDP.

-   A variety (about 40) of KDE games including: kpat, kfourinline, and kmines.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some packages will require additional dependencies. To determine what dependencies are needed, run this command from the top of the source tree:

``` userinput
cmake -W no-dev -LH .
```

Note that this creates some files in the top of the source directory, so that it is better to reextract a clean source before proceeding to the build.
:::

Most of these packages can be built with the standard KDE instructions:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev .. &&
make
```

And as the `root`{.systemitem} user:

``` root
make install
```
:::::

::: navfooter
-   [Prev](k3b.md "k3b-26.04.1"){accesskey="p"}

    k3b-26.04.1

-   [Next](plasma.md "KDE Plasma"){accesskey="n"}

    KDE Plasma

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
