# Atomic [![build](https://github.com/c-cube/ocaml-atomic/actions/workflows/main.yml/badge.svg)](https://github.com/c-cube/ocaml-atomic/actions/workflows/main.yml)

This package is a compatibility package for the `Atomic` module
in OCaml's standard library.

It is purely sequential, which fits the thread model of older versions of OCaml.
The operations are expected to be better, faster, and still atomic, on post-5.0
versions of OCaml.
