(* Create a hash-table (dictionary, map, whatever you want to call it) with initial size of 10 *)
let students = Hashtbl.create 10;;

(* Add some elements *)
Hashtbl.add students 1 "Adam";
Hashtbl.add students 2 "Bob";
Hashtbl.add students 3 "Claire"; 

(* Get an element *)
Hashtbl.find students 2;; (* Returns "Bob" *)

(* We can check for a key *)
Hashtbl.mem students 4;; (* Returns false *)
                         
(* We can remove *)
Hashtbl.remove students 2;; (* Returns false *)

(* This will now throw an exception since Bob is gone! *)
Hashtbl.find students 2;; (* Throws Not_found exception *) 