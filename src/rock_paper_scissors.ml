type rps_type = Rock | Paper | Scissors | Exit;;

type result_type = UserWins | ComputerWins | Draw;;

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

let enum_to_string (e:rps_type) =
  match e with
  | Rock -> "Rock" 
  | Paper -> "Paper"
  | Scissors -> "Scissors"
  | Exit -> "Exit";;

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

let check_result (user_choice:rps_type) (computer_choice:rps_type) =
  print_endline ("User chose " ^ enum_to_string(user_choice));
  print_endline ("Computer chose " ^ enum_to_string(computer_choice));
  UserWins;;

let not_exit (e:rps_type) =
  print_endline ("User chose!!!!!! " ^ enum_to_string(e));
  if (e == Exit) then (print_endline ("FALSE"); false) else (print_endline ("TRUE"); true);;

let rps() = 
  Random.self_init();
  
  let user_wins = ref 0 in
  let computer_wins = ref 0 in
  let draws = ref 0 in
  
  let user_choice = ref Rock in
  while (not_exit(!user_choice)) do
    (user_choice) := read_user_choice();
    let computer_choice = get_computer_choice() in
    if (!user_choice == Exit) then print_endline("We want to leave") else print_endline("We want to stay");
    match (check_result !user_choice computer_choice) with
    | UserWins -> user_wins := (!user_wins) + 1
    | ComputerWins -> computer_wins := (!computer_wins) + 1
    | Draw -> draws := (!draws) + 1
  done;
  (user_wins, computer_wins, draws);;

rps();;