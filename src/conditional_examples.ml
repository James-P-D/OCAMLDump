(* We can use if..then..else *)
let is_even x = 
  if ((x mod 2) == 0) then "even" else "odd";;
    
print_string("4 is " ^ is_even(4) ^ "!\n");;
print_string("5 is " ^ is_even(5) ^ "!\n");;

(* Be careful when comparing strings. '=' checks for structural equality (do they contain
   the same string?) whereas '==' checks for physical equality (are they the same variable?) *)

let check_strings1 = if ("foo" = "foo") then "same" else "different";;  (* same *)
let check_strings2 = if ("foo" == "foo") then "same" else "different";; (* different *)

let str = "foo";;

let check_strings3 = if (str = str) then "same" else "different";;      (* same *)
let check_strings4 = if (str == str) then "same" else "different";;     (* same *)