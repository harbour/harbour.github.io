---
layout: default
title: "Code Examples"
---

# Code Examples

This is the list of some examples in Harbour's test directory.
The examples demonstrate Harbour features in small programs.

## Categories:

* [Basic](#basic)
* [Arrays](#arrays)
* [Database](#database)
* [Extensions](#extensions)
* [Web](#web)
* [More examples](#more-examples)
* [How to build/run applications](#how-to-buildrun-applications)

---

## Basic

* [Hello, world!](sample_hello.html)
* [Dynamic code evalutation sample](sample_macro.html)
* [`BEGIN SEQUENCE` support](sample_begin.html)
* [Codeblock support sample](sample_codebloc.html)
* [Codeblock advanced sample](sample_codebl.html)
* [Manipulation of date values](sample_dates3.html)
* [Manipulating variables by reference](sample_byref.html)
* [.ini file reading/writing](sample_parseini.html)
* [`INIT`/`EXIT PROCEDURE` support](sample_initexit.html)
* [Run command: About to shell to OS](sample_osshell.html)
* [Testing long string handling support](sample_longdev.html)
* [Mouse sample support](sample_mouse.html)

## Arrays

* [Multidimensional arrays demo](sample_array16.html)
* [`AEval()` sample](sample_arreval.html)

## Database

* [`Browse()` function demo](sample_browse.html)
* [`TBrowse()` and `TBColumn()` examples](sample_tbrowse.html)

## Extensions

* [`SWITCH` support](sample_switch.html)
* [`FOR EACH` example](sample_foreach.html)
* [Idle processing](sample_idle.html)
* [Idle processing advanced](sample_onidle.html)

## Web

* [Harbour Test of a HTML-Generator class](sample_html.html)

## More examples

More examples can be provided with the installation package of the Harbour.
Look the `/tests` and `/extras` folders to find other samples, but the best
examples are the source code of Harbour itself.

---

## How to build/run applications

```
$ hbmk2 app.prg
$ ./app
```

or run them as scripts:

```
$ hbrun app.prg
```
