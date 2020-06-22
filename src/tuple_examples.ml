(* We can create tuples *)
let some_tuple = (1, 2);;

(* We can get individual values, and discard what we don't want with '_' *)
let (first, _) = some_tuple;;
let (_, second) = some_tuple;;

(* Tuples can contain multiple data types *)
let some_other_tuple = (1, "hello", 12.34);;