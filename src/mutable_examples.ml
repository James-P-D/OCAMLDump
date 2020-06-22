(* Shouldn't use mutable values in functional languages, but useful to know they exist... *)

(* Note that in this example, x is always 10, even after we attempt to increment it *)
let x = 10;;
print_string("x = " ^ string_of_int(x) ^ "\n");;
let inc_x = x + 1;;
inc_x;;
print_string("x = " ^ string_of_int(x) ^ "\n");; 

(* But using references we can create mutable types *)
let y = ref 10;;
print_string("y = " ^ string_of_int(!y) ^ "\n");;
let inc_y = y := (!y) + 1;;
inc_y;;
print_string("y = " ^ string_of_int(!y) ^ "\n");; 