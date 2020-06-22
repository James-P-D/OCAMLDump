(* Booleans are straightforward*)

(* Note '|' and '&' exist, and work for OR and AND, but are deprecated *)
let both a b = a && b;;
let either a b = a || b;;
let opposite a = not a;;

both true false;;   (* Evaluates to true *)
either true false;; (* Evaluates to false *)
opposite true;;     (* Evaluates to false *)
