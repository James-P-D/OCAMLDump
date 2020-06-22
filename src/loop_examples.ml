(* We can count down from 10 to 1 *)
let loop_up = for i = 1 to 10 do
    print_string(string_of_int(i) ^ "\n")
  done;;

(* We can count down from 10 to 1 *)
let loop_down = for i = 10 downto 1 do
    print_string(string_of_int(i) ^ "\n")
  done;;
  
