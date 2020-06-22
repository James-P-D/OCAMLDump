type animal_type = Cat | Dog | Rabbit

let make_noise (a:animal_type) =
  match a with
  | Cat -> "meow"
  | Dog -> "woof"
  | Rabbit -> "carrots, please";;
    
let fido:animal_type = Dog;;
  
print_string (make_noise fido) 