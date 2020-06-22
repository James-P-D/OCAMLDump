let display_hello = print_string "Hello, World!\n"  
let hello_only = "Hello, "
let world_only = "World!\n"
let display_hello_and_world = print_string (hello_only ^ world_only) (* '^' for infix string concatonation *)            

let print_two_strings s1 s2 = print_string (s1 ^ s2)          
let print_one_last_time = print_two_strings "Goodbye " "world\n" 

(* We can convert ints to string to display them *)
let print_integer = print_string (string_of_int(4) ^ "\n")

(* We can convert floats to string to display them *)
let print_float = print_string (string_of_float(3.1415) ^ "\n")