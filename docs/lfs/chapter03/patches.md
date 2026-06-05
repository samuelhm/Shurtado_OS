::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 3. Packages and Patches

-   [Prev](packages.md "All Packages"){accesskey="p"}

    All Packages

-   [Next](../chapter04/chapter04.md "Final Preparations"){accesskey="n"}

    Final Preparations

-   [Up](chapter03.md "Chapter 3. Packages and Patches"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-materials-patches}3.3. Needed Patches {#needed-patches .sect1}

::::: {.sect1 lang="en"}
In addition to the packages, several patches are also required. These patches correct any mistakes in the packages that should be fixed by the maintainer. The patches also make small modifications to make the packages easier to work with. The following patches will be needed to build an LFS system:

:::: materials
::: variablelist

[Bzip2 Documentation Patch - [1.6 KB]{.token}:]{.term}

:   Download: [https://www.linuxfromscratch.org/patches/lfs/development/bzip2-1.0.8-install_docs-1.patch](https://www.linuxfromscratch.org/patches/lfs/development/bzip2-1.0.8-install_docs-1.patch){.ulink}

    MD5 sum: `6a5ac7e89b791aae556de0f745916f7f`{.literal}

[Coreutils Internationalization Fixes Patch - [67 KB]{.token}:]{.term}

:   Download: [https://www.linuxfromscratch.org/patches/lfs/development/coreutils-9.11-i18n-1.patch](https://www.linuxfromscratch.org/patches/lfs/development/coreutils-9.11-i18n-1.patch){.ulink}

    MD5 sum: `900d64d9936516b68613271c9ebc0059`{.literal}

[Expect GCC15 Patch - [12 KB]{.token}:]{.term}

:   Download: [https://www.linuxfromscratch.org/patches/lfs/development/expect-5.45.4-gcc15-1.patch](https://www.linuxfromscratch.org/patches/lfs/development/expect-5.45.4-gcc15-1.patch){.ulink}

    MD5 sum: `0ca4d6bb8d572fbcdb13cb36cd34833e`{.literal}

[Glibc Upstream Fixes Patch - [49 KB]{.token}:]{.term}

:   Download: [https://www.linuxfromscratch.org/patches/lfs/development/glibc-2.43-upstream_fixes-1.patch](https://www.linuxfromscratch.org/patches/lfs/development/glibc-2.43-upstream_fixes-1.patch){.ulink}

    MD5 sum: `1f5074a1dce85a72d2ea465ca76e420b`{.literal}

[Glibc FHS Patch - [2.8 KB]{.token}:]{.term}

:   Download: [https://www.linuxfromscratch.org/patches/lfs/development/glibc-fhs-1.patch](https://www.linuxfromscratch.org/patches/lfs/development/glibc-fhs-1.patch){.ulink}

    MD5 sum: `9a5997c3452909b1769918c759eff8a2`{.literal}

[Kbd Backspace/Delete Fix Patch - [12 KB]{.token}:]{.term}

:   Download: [https://www.linuxfromscratch.org/patches/lfs/development/kbd-2.10.0-backspace-1.patch](https://www.linuxfromscratch.org/patches/lfs/development/kbd-2.10.0-backspace-1.patch){.ulink}

    MD5 sum: `f75cca16a38da6caa7d52151f7136895`{.literal}

[Python OpenSSL 4 Patch - [38 KB]{.token}:]{.term}

:   Download: [https://www.linuxfromscratch.org/patches/lfs/development/Python-3.14.5-openssl_4-1.patch](https://www.linuxfromscratch.org/patches/lfs/development/Python-3.14.5-openssl_4-1.patch){.ulink}

    MD5 sum: `597d7737df1b4ea4e184c193da523050`{.literal}

[Python Security Fixes Patch - [12 KB]{.token}:]{.term}

:   Download: [https://www.linuxfromscratch.org/patches/lfs/development/Python-3.14.5-security_fixes-1.patch](https://www.linuxfromscratch.org/patches/lfs/development/Python-3.14.5-security_fixes-1.patch){.ulink}

    MD5 sum: `1d5084c858197e82f0611b82f0d852f5`{.literal}
:::
::::

Total size of these patches: about 194.4 KB

In addition to the above required patches, there exist a number of optional patches created by the LFS community. These optional patches solve minor problems or enable functionality that is not enabled by default. Feel free to peruse the patches database located at [https://www.linuxfromscratch.org/patches/downloads/](https://www.linuxfromscratch.org/patches/downloads/){.ulink} and acquire any additional patches to suit your system needs.
:::::

::: navfooter
-   [Prev](packages.md "All Packages"){accesskey="p"}

    All Packages

-   [Next](../chapter04/chapter04.md "Final Preparations"){accesskey="n"}

    Final Preparations

-   [Up](chapter03.md "Chapter 3. Packages and Patches"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
