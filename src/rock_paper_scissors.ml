type rps_type = Rock | Paper | Scissors | Exit;;

let read_char() =
  print_string "Enter a string\n";
  let str = input_line stdin in
  print_string ("length is " ^ string_of_int(String.length(str)) ^ "\n");
  if (String.length(str) > 0) then str.[0] else read_char();; 
  
let read_user_input() =
  print_string "before c\n";
  let c = ref ' ' in
  print_string "after c\n";
  print_string "Enter (r)ock, (p)aper, (s)cissors, or e(x)it.\n";
  c := read_char();
  print_char !c;
  print_string ", ok!\n";
  c;;

read_user_input()
