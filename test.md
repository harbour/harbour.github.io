---
layout: default2
title: "Test"
---

# Welcome to Harbour

Harbour is the open/free software implementation of a multi-platform,
multi-threading, object-oriented, scriptable programming language,
backwards compatible with xBase languages. Harbour consists of
a compiler and runtime libraries with multiple UI and database
backends, its own make system and a large collection of libraries
and interfaces to popular APIs.

---

# How to Get

## Stable versions (non-fork/mainline)

### Harbour stable binary download

<https://github.com/vszakats/harbour-core/releases/tag/v3.0.0>

> NOTE: It is identical to the mainline stable release, and
> not supported or recommended by this fork. It is hosted
> here because the old service started [bundling](https://helb.github.io/goodbye-sourceforge/)
> [malware](https://www.howtogeek.com/218764/) into some projects.

### Harbour stable source download

<https://github.com/vszakats/harbour-core/archive/v3.0.0.zip>

## Unstable versions

> :bulb: TIP:
> [For](https://groups.google.com/forum/#!msg/harbour-users/2fwUzdKwpKA/32nI4WhZLfYJ)
> [users](https://groups.google.com/forum/#!msg/harbour-users/Ro99f8S6my0/KvfjhCx_jE4J)
> [contributing](.github/CONTRIBUTING.md) to development, it's recommended to follow [commits](https://github.com/vszakats/harbour-core/commits/master) and reading
> [ChangeLog.txt](ChangeLog.txt?raw=true).

### Harbour live source repository

You will need Git version control software installed on your system
and to issue this command:

    git clone https://github.com/vszakats/harbour-core.git harbour-core

You can get subsequent updates using this command:

    git pull

### Harbour unstable sources

Download source archive from any of these URLs and unpack:

* <https://github.com/vszakats/harbour-core/archive/master.zip>
* <https://github.com/vszakats/harbour-core/archive/master.tar.gz>

### Harbour unstable binaries (updated after each commit)

#### Windows (mingw, 64-bit hosted, 32/64-bit targets, 7-zip archive)

* <https://github.com/vszakats/harbour-core/releases/download/v3.4.0dev/harbour-snapshot-win.7z>

#### Mac (using Homebrew :beer:)

    brew install https://raw.githubusercontent.com/vszakats/harbour-core/master/package/harbour.rb --HEAD

### Follow commits using:

* [Web browser](https://github.com/vszakats/harbour-core/commits/master)
* [RSS feed](https://github.com/vszakats/harbour-core/commits/master.atom)
* Apps
  * [iOctocat](https://ioctocat.com/) on iOS
  * [CodeHub](https://itunes.apple.com/us/app/codehub-github-for-ios/id707173885) on iOS
  * [OctoDroid](https://play.google.com/store/apps/details?id=com.gh4a) on Android
  * [Gitskarios for Github](https://play.google.com/store/apps/details?id=com.alorma.github) on Android
  * [Committed](https://itunes.apple.com/us/app/committed-source-control-notifications/id881634293) on Mac

# How to Build

For all platforms you will need:

* Supported ANSI C compiler
* GNU Make (3.81 recommended, minimum 3.79 required, see also platform details)
* Harbour sources (2.0.0 or upper)

## on Windows hosts (possible cross-build targets: Windows CE, MS-DOS, OS/2, Linux)

Platform specific prerequisites:

1. Windows 7 or upper system is recommended to *build* Harbour.
2. Make sure to have your C compiler of choice installed
   in `PATH`. Refer to your C compiler installation and setup
   instructions for details. Make sure no tools in your `PATH`
   belonging to other C compilers are interfering with
   your setup. Also avoid to keep multiple copies of the same
   compiler, or different versions of the same compiler in
   `PATH` at the same time. For the list of supported compilers,
   look up [Supported Platforms and C Compilers](#supported-platforms-and-c-compilers).
3. GNU Make 3.81 or upper is required. A copy of this tool
   is included in the source package, so you don't have to do
   anything.
   If you want to get it separately, you can find it [here](#external-links).
   Unpack it to your `PATH` or Harbour source root directory,
   and run it as `mingw32-make`.

To build:

    > win-make

To test it, type:

    > cd tests
    > ..\bin\<plat>\<comp>\hbmk2 hello.prg
    > hello

You should see `Hello, world!` on screen.

## on Windows hosts with POSIX shells (MSYS2/Cygwin)

> Though you can use these alternative shells to build Harbour on Windows,
> it's recommended to use the native one.

To build:

    > sh -c make

To test it, type:

    > cd tests
    > ..\bin\<plat>\<comp>\hbmk2 hello.prg
    > hello

You should see `Hello, world!` on screen.

## on MS-DOS hosts (possible cross-build targets: Windows, OS/2, Linux)

Make sure to have your C compiler of choice installed in `PATH`.

To build:

    > dos-make

To test it, type:

    > cd tests
    > ..\bin\<plat>\<comp>\hbmk2 hello.prg
    > hello

You should see `Hello, world!` on screen.

## on OS/2 hosts (possible cross-build targets: MS-DOS, OS/2, Linux)

To build:

    > os2-make

To test it, type:

    > cd tests
    > ..\bin\<plat>\<comp>\hbmk2 hello.prg
    > hello

You should see `Hello, world!` on screen.

## on Linux hosts (possible cross-build targets: Windows, Windows CE, MS-DOS, OS/2)

To build:

    $ make [HB_PLATFORM=<...>]

To test it, type:

    $ cd tests
    $ ../bin/<plat>/<comp>/hbmk2 hello.prg
    $ ./hello

You should see `Hello, world!` on screen.

## on Darwin (Mac) hosts (possible cross-build targets: Windows, Windows CE, MS-DOS)

Platform specific prerequisite:
   Xcode or Command Line Tools for Xcode installed

To build:

    $ make [HB_PLATFORM=<...>]

To test it, type:

    $ cd tests
    $ ../bin/<plat>/<comp>/hbmk2 hello.prg
    $ ./hello

You should see `Hello, world!` on screen.

> You can override default (host) architecture by adding
> values below to `HB_USER_CFLAGS`, `HB_USER_LDFLAGS` envvars,
> you can use multiple values:<br />
> <br />
> Intel 32-bit: `-arch i386`<br />
> Intel 64-bit: `-arch x86_64`<br />

## on FreeBSD hosts

Platform specific prerequisites:

1. You will need to have the developer tools installed.
2. Then you will need to install gmake and optionally bison.
   If you installed the ports collection, then all you need
   to do to install bison and gmake is to run the following
   commands, which may require that you run su root first to
   get the correct permissions:

        $ cd /usr/ports/devel/gmake
        $ make
        $ make install
        $ make clean
        $ cd /usr/ports/devel/bison
        $ make
        $ make install
        $ make clean

To build:

    $ gmake

To test it, type:

    $ cd tests
    $ ../bin/<plat>/<comp>/hbmk2 hello.prg
    $ ./hello

You should see `Hello, world!` on screen.

## on Minix hosts

Install GNU make from the Minix pkgsrc repository; for details see [here](http://wiki.minix3.org/en/UsersGuide/InstallingBinaryPackages).

Optionally, GCC may also be installed if you wish to use that instead
of Clang, the Minix system compiler.

## on other \*nix hosts (possible cross-build targets: Windows, Windows CE, MS-DOS)

To build:

    $ gmake [HB_PLATFORM=<...>]

Or

    $ make [HB_PLATFORM=<...>]

To test it, type:

    $ cd tests
    $ ../bin/<plat>/<comp>/hbmk2 hello.prg
    $ ./hello

You should see `Hello, world!` on screen.

> For sunpro on Solaris:<br />
> If you have any GNU binutils stuff installed, do make sure
> `/usr/ccs/bin` (the location of the native Sun C compilation
> system tools) come *before* the GNU binutils components in
> your `$PATH`.
