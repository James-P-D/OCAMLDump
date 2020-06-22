(* We can declare strings *)
let some_string = "This is a string\n";;

(* We can get the zeroth-indexed character from a string *)
let x = some_string.[0];;

(* We can get the length of strings *)
let string_length = String.length(some_string);;

(* We can get the substring at index 5 for 4 characters *)
let substring = String.sub some_string 5 4;;

(* We can get the first index of a char in a string *)
let index = String.rindex some_string 'a';;

(* Be careful when comparing strings. '=' checks for structural equality (do they contain
   the same string?) whereas '==' checks for physical equality (are they the same variable?) *)

let check_strings1 = if ("foo" = "foo") then "same" else "different";;  (* same *)
let check_strings2 = if ("foo" == "foo") then "same" else "different";; (* different *)
let str = "foo";;
let check_strings3 = if (str = str) then "same" else "different";;      (* same *)
let check_strings4 = if (str == str) then "same" else "different";;     (* same *)

(* We can declare characters*)
let some_char = 'x';;

(* We can get the ASCII code for characters *)
let ascii_code = Char.code(some_char);;

(* We can get the char from the ASCII code *)
let letter_from_code = Char.chr(65);;

(* We can convert to lowercase *)
let lowercase_a = Char.lowercase_ascii(letter_from_code);;

(* We can convert to uppercase *)
let uppercase_a = Char.uppercase_ascii(lowercase_a);;

(* We can compare characters. (Function returns an int, zero if equal, 32 in our case) *)
let compare_char = Char.compare 'a' 'A';;

(* We can compare characters for equality. *)
let equal_char = Char.equal 'a' 'a';;