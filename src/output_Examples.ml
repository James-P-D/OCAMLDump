let x = print_string "Hello, World!\n"  
let _ = print_string "Hello, World!\n"  
let h = "Hello, "
let w = "World!\n"
let _ = print_string (h ^ w)            
let f x = print_string (h ^ w)          
let y1 = f 37
let y2 = f f                            
