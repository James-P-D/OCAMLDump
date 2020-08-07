# OCAMLDump
Dumping ground for [OCAML](https://ocaml.org/)

Most of this taken from running through the [Dan Grossman's tutorial from Washington University](https://homes.cs.washington.edu/~djg/teachingMaterials/gpl/lectures/camlTutorial.pdf), the offical [OCAML website](https://ocaml.org/learn/) and from the [learn-x-in-y-minutes website](https://learnxinyminutes.com/docs/ocaml/).

## Learning

(Mostly tested with the online [Try OCAML](https://try.ocamlpro.com/) website, but should also work fine with the [installed version](https://ocaml.org/docs/install.html).)

* [comment_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/comment_examples.ml)
* [output_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/output_examples.ml)
* [math_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/math_examples.ml)
* [boolean_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/boolean_examples.ml)
* [string_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/string_examples.ml)
* [explicit_type_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/explicit_type_examples.ml)
* [local_variable_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/local_variable_examples.ml)
* [conditional_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/conditional_examples.ml)
* [loop_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/loop_examples.ml)
* [recursion_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/recursion_examples.ml)
* [anonymous_function_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/anonymous_function_examples.ml)
* [higher_order_function_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/higher_order_function_examples.ml)
* [closure_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/closure_examples.ml)
* [tuple_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/tuple_examples.ml)
* [structure_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/structure_examples.ml)
* [pattern_matching_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/pattern_matching_examples.ml)
* [enum_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/enum_examples.ml)
* [list_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/list_examples.ml)
* [dictionary_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/dictionary_examples.ml)
* [mutable_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/mutable_examples.ml)
* [exception_examples.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/exception_examples.ml)
* [circular_reference.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/circular_reference.ml)

## Rock, Paper Scissors

After a lot of playing around, managed to get [Rock, Paper, Scissors](https://github.com/James-P-D/OCAMLDump/blob/master/src/rock_paper_scissors.ml) working..

![Screenshot](https://github.com/James-P-D/OCAMLDump/blob/master/rock_paper_scissors.gif)

## Compiling

Compiling instructions taken from [RIP Tutorial website](https://riptutorial.com/ocaml/example/12818/your-first-program-in-ocaml).

Note this section makes use of [hello.ml](https://github.com/James-P-D/OCAMLDump/blob/master/src/hello.ml)

### Compiling to Bytecode

Use `ocamlc` to compile to bytecode:

```
jdorr@DESKTOP-MF9T345 /cygdrive/c/Users/jdorr/Desktop/Dev/PegSolitaire/src
$ cat hello.ml
let () = print_endline "Hello World!"
jdorr@DESKTOP-MF9T345 /cygdrive/c/Users/jdorr/Desktop/Dev/PegSolitaire/src
$ ocamlc -o hello hello.ml

jdorr@DESKTOP-MF9T345 /cygdrive/c/Users/jdorr/Desktop/Dev/PegSolitaire/src
$ ./hello
Hello World!
```

### Compiling to Native

Use `ocamlopt` to compile to native:

```
jdorr@DESKTOP-MF9T345 /cygdrive/c/Users/jdorr/Desktop/Dev/PegSolitaire/src
$ cat hello.ml
jdorr@DESKTOP-MF9T345 /cygdrive/c/Users/jdorr/Desktop/Dev/PegSolitaire/src
$ ocamlopt -o hello hello.ml                                
jdorr@DESKTOP-MF9T345 /cygdrive/c/Users/jdorr/Desktop/Dev/PegSolitaire/src
$ ./hello
Hello World!
```

Note the resulting executable also runs fine from Windows:

```
C:\Users\jdorr\Desktop\Dev\PegSolitaire\src>hello.exe
Hello World!
```