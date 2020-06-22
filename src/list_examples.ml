(* We can declare lists, just make sure they are all of the same type *)
let list1 = [1;2;3];;

(* We can construct lists by adding head, to head, to head, ... to empty list *)
let list2 = 10 :: (20 :: (30 :: []));;

(* We can concatonate lists with '@' *)
let list3 = list1 @ list2;;

(* Pattern matching on empty list and head::tail *)
let rec sum_int_list = function
  | [] -> 0
  | h :: t -> h + (sum_int_list t)
    
let total = sum_int_list list3 (* Returns 66 *)