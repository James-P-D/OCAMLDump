let y = 2
let x = 3

let return_value =  
  let x = 10 in  
  fun () -> x + y;;

print_string(string_of_int(return_value ()) ^ "\n");;

let y = 4
let x = 5;;

print_string(string_of_int(return_value ()) ^ "\n");;