(* We can catch exceptions *)
let divider a b = try a / b with Division_by_zero -> -1;;

let x = divider 10 2;; (" x = 5 ")
let y = divider 10 0;; (" x = -1 ")


(* We can also match on multiple different exceptions by using guards ('|') *)
(*
try
    <expression1>
with
| Not_found -> raise (MLFailure "abc")
| Divide_by_zero -> max_int
| _ -> raise (Invalid_argument "def")
*)