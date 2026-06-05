::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](genlib.md "General Libraries"){accesskey="p"}

    General Libraries

-   [Next](appstream.md "AppStream-1.1.2"){accesskey="n"}

    AppStream-1.1.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#abseil-cpp}Abseil-cpp-20260107.1 {#abseil-cpp-20260107.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Abseil-cpp {#introduction-to-abseil-cpp .sect2}

The [Abseil-cpp]{.application} package contains a series of libraries designed to augment the C++ standard library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/abseil/abseil-cpp/releases/download/20260107.1/abseil-cpp-20260107.1.tar.gz](https://github.com/abseil/abseil-cpp/releases/download/20260107.1/abseil-cpp-20260107.1.tar.gz){.ulink}

-   Download MD5 sum: d032877f03483884299c50f527f3983e

-   Download size: 2.2 MB

-   Estimated disk space required: 34 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### Abseil-cpp Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Abseil-cpp {#installation-of-abseil-cpp .sect2}

Install [Abseil-cpp]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -D ABSL_PROPAGATE_CXX_STD=ON   \
      -D BUILD_SHARED_LIBS=ON        \
      -G Ninja ..                    &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D ABSL_PROPAGATE_CXX_STD=ON`*: This parameter enables propagating C++ features to targets that link to this package's libraries.

*`-D BUILD_SHARED_LIBS=ON`*: This parameter builds shared versions of the libraries provided by this package instead of static libraries.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libabsl_bad_any_cast_impl.so, libabsl_bad_optional_access.so, libabsl_bad_variant_access.so, libabsl_base.so, libabsl_city.so, libabsl_civil_time.so, libabsl_cord_internal.so, libabsl_cord.so, libabsl_cordz_functions.so, libabsl_cordz_handle.so, libabsl_cordz_info.so, libabsl_cordz_sample_token.so, libabsl_crc32c.so, libabsl_crc_cord_state.so, libabsl_crc_cpu_detect.so, libabsl_crc_internal.so, libabsl_debugging_internal.so, libabsl_decode_rust_punycode.so, libabsl_demangle_internal.so, libabsl_demangle_rust.so, libabsl_die_if_null.so, libabsl_examine_stack.so, libabsl_exponential_biased.so, libabsl_failure_signal_handler.so, libabsl_flags_commandlineflag_internal.so, libabsl_flags_commandlineflag.so, libabsl_flags_config.so, libabsl_flags_internal.so, libabsl_flags_marshalling.so, libabsl_flags_parse.so, libabsl_flags_private_handle_accessor.so, libabsl_flags_program_name.so, libabsl_flags_reflection.so, libabsl_flags_usage_internal.so, libabsl_flags_usage.so, libabsl_graphcycles_internal.so, libabsl_hash.so, libabsl_hashtablez_sampler.so, libabsl_int128.so, libabsl_kernel_timeout_internal.so, libabsl_leak_check.so, libabsl_log_entry.so, libabsl_log_flags.so, libabsl_log_globals.so, libabsl_log_initalize.so, libabsl_log_internal_check_op.so, libabsl_log_internal_conditions.so, libabsl_log_internal_fnmatch.so, libabsl_log_internal_format.so, libabsl_log_internal_globals.so, libabsl_log_internal_log_sink_set.so, libabsl_log_internal_message.so, libabsl_log_internal_nullguard.so, libabsl_log_internal_proto.so, libabsl_log_severity.so, libabsl_log_sink.so, libabsl_malloc_internal.so, libabsl_periodic_sampler.so, libabsl_poison.so, libabsl_random_distributions.so, libabsl_random_internal_distribution_test_util.so, libabsl_random_internal_platform.so, libabsl_random_internal_pool_urbg.so, libabsl_random_internal_randen_hwaes_impl.so, libabsl_random_internal_randen_hwaes.so, libabsl_random_internal_randen_slow.so, libabsl_random_internal_randen.so, libabsl_random_internal_seed_material.so, libabsl_random_seed_gen_exception.so, libabsl_random_seed_sequences.so, libabsl_raw_hash_set.so, libabsl_raw_logging_internal.so, libabsl_scoped_set_env.so, libabsl_spinlock_wait.so, libabsl_stacktrace.so, libabsl_statusor.so, libabsl_status.so, libabsl_strerror.so, libabsl_str_format_internal.so, libabsl_strings_internal.so, libabsl_strings.so, libabsl_string_view.so, libabsl_symbolize.so, libabsl_synchronization.so, libabsl_throw_delegate.so, libabsl_time.so, libabsl_time_zone.so, libabsl_utf8_for_code_point.so, and libabsl_vlog_config_internal.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/absl, /usr/lib/cmake/absl]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](genlib.md "General Libraries"){accesskey="p"}

    General Libraries

-   [Next](appstream.md "AppStream-1.1.2"){accesskey="n"}

    AppStream-1.1.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
