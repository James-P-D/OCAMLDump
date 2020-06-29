(* We can catch exceptions *)
let divider a b = try a / b with Division_by_zero -> -1;;

let x = divider 10 2;; (* x = 5 *)
let y = divider 10 0;; (* x = -1 *)

(* We can create our own exceptions *)

exception OddNumberException of string;;

let double_if_even n =
  if ((n mod 2) == 0) then (n * 2)
  else raise (OddNumberException (string_of_int(n) ^ " is not an even number"));;
  
let works_ok = double_if_even 2;; (* val works_ok : int = 4 *)
let fails = double_if_even 3;;    (* Exception: OddNumberException "3 is not an even number". *)

(* We can also match on multiple different exceptions by using guards ('|') *)
(*
try
    <expression1>
with
| Not_found -> raise (MLFailure "abc")
| Divide_by_zero -> max_int
| _ -> raise (Invalid_argument "def")
*)