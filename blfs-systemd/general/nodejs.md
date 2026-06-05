::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](mtdev.md "mtdev-1.1.7"){accesskey="p"}

    mtdev-1.1.7

-   [Next](npth.md "npth-1.8"){accesskey="n"}

    npth-1.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nodejs}Node.js-24.16.0 {#node.js-24.16.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Node.js {#introduction-to-node.js .sect2}

[Node.js]{.application} is a [JavaScript]{.application} runtime built on [Chrome's]{.application} V8 JavaScript engine.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://nodejs.org/dist/v24.16.0/node-v24.16.0.tar.xz](https://nodejs.org/dist/v24.16.0/node-v24.16.0.tar.xz){.ulink}

-   Download MD5 sum: 9d59af23e08e2f1167957c2d0dbd403a

-   Download size: 53 MB

-   Estimated disk space required: 1.5 GB (with tests)

-   Estimated build time: 16 SBU (add 4.3 SBU for tests: both using parallelism=8 and 8 CPUs online, parts of the tests will use all online CPUs)
:::

### Node.js Dependencies

#### Required

[Which-2.25](which.md "Which-2.25 and Alternatives"){.xref}

#### Recommended

[Brotli-1.2.0](brotli.md "brotli-1.2.0"){.xref}, [c-ares-1.34.6](../basicnet/c-ares.md "c-ares-1.34.6"){.xref}, [ICU-78.3](icu.md "icu-78.3"){.xref}, [libuv-1.52.1](libuv.md "libuv-1.52.1"){.xref}, [nghttp2-1.69.0](../basicnet/nghttp2.md "nghttp2-1.69.0"){.xref}, and [simdutf-9.0.0](simdutf.md "simdutf-9.0.0"){.xref}

#### Optional

[http-parser](https://github.com/nodejs/http-parser){.ulink} and [npm](https://www.npmjs.com/){.ulink} (an internal copy of [**npm**]{.command} will be installed if not present)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of Node.js {#installation-of-node.js .sect2}

Build [Node.js]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr          \
            --shared-brotli        \
            --shared-cares         \
            --shared-libuv         \
            --shared-nghttp2       \
            --shared-openssl       \
            --shared-simdutf       \
            --shared-zlib          \
            --with-intl=system-icu &&
make
```

To test the results, issue: [**make test-only**]{.command}. Out of over 4600 tests, about 10 in the 'parallel' test suite are known to fail. Some failures are due to assumptions about dependent packages like icu and nghttp2 versions that are earlier than what is in BLFS. Also note that if you pass a high parallelism option (like -j20; -j8 is fine) to the test procedure, additional tests will run out of memory and fail. 12 test failures are known to occur with OpenSSL-4 but do not affect usage at runtime.

Now, as the `root`{.systemitem} user:

``` root
make install &&
ln -sf node /usr/share/doc/node-24.16.0
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-intl=system-icu`*: This parameter uses the system version of [ICU]{.application}. Other values are `full-icu`{.option} (to build a local, full [icu]{.application} library) and `small-icu`{.option} (to build a local, minimal [ICU]{.application} library).

*`--shared-{brotli,cares,libuv,nghttp2,openssl,simdutf,zlib}`*: This parameter uses the system installed libraries instead of local copies.

`--without-npm`{.option}: This option tells the build system to not build [npm]{.application} (use if you'd like to build a separate [npm]{.application} later).

`--shared-http-parser`{.option}: This option uses the system installed [http-parser]{.application} library instead of a local copy if you have installed it.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [corepack, node, npm, and npx]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/node, /usr/lib/node_modules/{corepack,npm}, /usr/share/doc/{node,node-24.16.0}, and /usr/share/systemtap/tapset]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------------
  []{#corepack}[[**corepack**]{.command}]{.term}     is an experimental tool to help with managing versions of package managers.
  []{#node}[[**node**]{.command}]{.term}             is the server-side JavaScript runtime
  []{#npm}[[**npm**]{.command}]{.term}               is the [Node.js]{.application} package manager
  []{#npx}[[**npx**]{.command}]{.term}               is short for **`npm exec`**, which allows running commands from [NPM]{.application} packages
  [`/usr/lib/node_modules/npm/`{.filename}]{.term}   is the installation root for Node.js executables and libraries
  -------------------------------------------------- ----------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](mtdev.md "mtdev-1.1.7"){accesskey="p"}

    mtdev-1.1.7

-   [Next](npth.md "npth-1.8"){accesskey="n"}

    npth-1.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
