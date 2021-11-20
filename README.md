# jpm

JPM is the Janet Project Manager tool. It is for automating builds and downloading
dependencies of Janet projects. This project is a port of the original `jpm` tool
(which started as a single file script) to add more functionality, clean up code, make
more portable and configurable, and
refactor `jpm` into independent, reusable pieces that can be imported as normal Janet modules.

This also introduces parallel builds, possible MSYS support, a `jpm` configuration file, and more
CLI options. Other improvements are planned such as parallel dependency downloading, more
out of the box support for non-C toolchains and pkg-config, installation from sources besides git
such as remote tarballs, zipfiles, or local directories, and more.

## Self Installation (Bootstrapping)

clone this repo, and from its directory, run

```
$ [sudo] janet bootstrap.janet
```

There are also several example config files in the `configs` directory, and you can use the environment
variable `JANET_JPM_CONFIG` to use a configuration file. The config files can be either `janet` or `jdn`
files. To override/set the default configuration, replace the contents of default-config.janet with a
customized config file before installing. To select a configuration file to use to override the default
when installing, pass in a config file argument to the `bootstrap.janet` script, for example:

```
$ [sudo] janet bootstrap.janet configs/msvc_config.janet
```

The bootstrapping process can also be configured by setting PREFIX to install to a different system directory.
Generally, you will want to install to the same directory that Janet was installed to so jpm can find the
required headers and libraries for compiling C libraries.

```
$ [sudo] PREFIX=/usr janet bootstrap.janet
```

## Updating

If you aleady have an installation of jpm configured, you can update `jpm` with

```
$ [sudo] jpm install jpm
```

which should automatically update to the latest `jpm`.
