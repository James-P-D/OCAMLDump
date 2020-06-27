(* VERY IMPORTANT! print_string() does flush the stdout buffer! print_endline() and print_newline() do!
   we can also flush with 'flush stdout;' *)
   
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

(* We can also use printf() to display stuff (decimals, strings, floats, floats 2 d.p. etc. *)
let printf_example = Printf.printf "%d %s %f %.2f\n" 12 "hello" 123.456 123.456;;

(* There's also a function which always ends with a new line, so no need for '\n' *)

let final_hello = print_endline "Hello";;