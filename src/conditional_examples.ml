(* We can use if..then..else *)
let is_even x = 
  if ((x mod 2) == 0) then "even" else "odd";;
    
print_string("4 is " ^ is_even(4) ^ "!\n");;
print_string("5 is " ^ is_even(5) ^ "!\n");;
