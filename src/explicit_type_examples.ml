(* We can specify the type of variables like in F# *)

let total (a:int) (b:int) =
  a + b ;;
total 10 5

(* This works, but if we tried to run

total 10.5 3

..or even..

total 10.0 3.0

.. it would fail because it was expecting integer inputs *)