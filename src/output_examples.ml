let display_hello = print_string "Hello, World!\n"  
let hello_only = "Hello, "
let world_only = "World!\n"
let display_hello_and_world = print_string (hello_only ^ world_only) (* '^' for infix string concatonation *)            

let print_two_strings s1 s2 = print_string (s1 ^ s2)          
let print_one_last_time = print_two_strings "Goodbye " "world\n" 