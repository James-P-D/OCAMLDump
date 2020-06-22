(* We can pass functions as parameters *)
let doubler x = x * 2;;
let tripler x = x * 3;;

let do_twice f n = f(f(n));;

print_string("2 doubled twice is " ^ (string_of_int(do_twice doubler 2)) ^ "!\n");;
print_string("2 tripled twice is " ^ (string_of_int(do_twice tripler 2)) ^ "!\n");; 

(* We can also return functions from functions *)

let double_even_triple_odd x = 
  if ((x mod 2) == 0) then doubler else tripler;;
    
let n1 = 4;;
let n2 = 5;;
let function1 = double_even_triple_odd n1;;
let function2 = double_even_triple_odd n2;;
print_string(string_of_int(n1) ^ " goes to " ^ (string_of_int(function1 n1)) ^ "!\n");;
print_string(string_of_int(n2) ^ " goes to " ^ (string_of_int(function2 n2)) ^ "!\n");; 