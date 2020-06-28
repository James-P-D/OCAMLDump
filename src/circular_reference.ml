(* Use 'and' for circular references! *)

let rec doubler = function
  | [] -> 0;
  | head::tail -> head * 2 + tripler tail
                              
and tripler = function
  | [] -> 0;
  | head::tail -> head * 3 + doubler tail
  
let maths_stuff some_list =
  doubler some_list;;

let foo = maths_stuff [1;2;3;4;5;6] (* Should be 54 *)