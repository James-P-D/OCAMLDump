type rps_type = Rock | Paper | Scissors | Exit;;

let char_to_enum c =
  match c with
  | 'r' -> Rock
  | 'p' -> Paper
  | 's' -> Scissors
  | c -> Exit;;

let int_to_enum n =
  match n with
  | 0 -> Rock
  | 1 -> Paper
  | n -> Scissors;;

let rec read_user_choice() =
  print_endline "Enter (r)ock, (p)aper, (s)cissors, or e(x)it.";
  let str = input_line stdin in
  if ((String.length(str) > 0) && ((str.[0] == 'r') || (str.[0] == 'p') || (str.[0] == 's') || (str.[0] == 'x'))) then char_to_enum(str.[0]) else read_user_choice();; 
  
let read_user_input() =
  let user_choice = ref Exit in
  user_choice := read_user_choice();
  user_choice;;

let get_computer_choice() = 
  let n = Random.int 3 in
  int_to_enum n;;

let rps() = 
  Random.self_init();
  get_computer_choice();; 

rps();;