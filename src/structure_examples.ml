(* We can create structures, which are like structs in C *)
type pair_of_ints = { a : int; b : int };;

let some_val:pair_of_ints =  {a = 3; b = 5};;
let just_a = some_val.a;;
let just_b = some_val.b;; 

(* We can make copies of tuples and change fields at same time *)

let tuple_copy = { some_val with b = 0 }