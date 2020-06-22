(* We can declare lists, just make sure they are all of the same type *)
let list1 = [1;2;3];;

(* We can construct lists by adding head, to head, to head, ... to empty list *)
let list2 = 10 :: (20 :: (30 :: []));;

(* We can concatonate lists with '@' (or by using 'List.append') *)
let list3 = list1 @ list2;;

(* We can initialise lists with functions*)
let initialsed_list = List.init 5 (fun i -> i * 2);;

(* Pattern matching on empty list and head::tail *)
let rec sum_int_list = function
  | [] -> 0
  | h :: t -> h + (sum_int_list t)
    
let total = sum_int_list list3 (* Returns 66 *)

(* We can use List.iter to iterate over a list *)                               
let display_element elem = 
  Printf.printf "I'm looking at element %d now\n" elem;;
let display_list = List.iter display_element list3;;

(* We can ust List.map to apply a function to every item in a list and return a new list *)
let double_int x = x * 2;;
let double_list = List.map double_int list3;;

(* We can filter out numbers from a list with List.filter*)
let number_list = List.init 10 (fun i -> i);;
let even_only_list = List.filter (fun x -> x mod 2 == 0) number_list;;

(* We can get the length of a list *)
let list3_length = List.length list3;;

(* We can check if 25 is in list3 (it isn't) *)
let twenty_five_in_list3 = List.mem 25 list3;;
