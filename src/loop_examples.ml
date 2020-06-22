(* We can count down from 10 to 1 *)
let loop_up = for i = 1 to 5 do
    print_string(string_of_int(i) ^ "\n")
  done;;

(* We can count down from 10 to 1 *)
let loop_down = for i = 20 downto 15 do
    print_string(string_of_int(i) ^ "\n")
  done;;
  
(* We can use while loops (in this case, with a mutable int)*)  
let x = ref 10;;
let while_loop = while (!x >= 0) do
    print_string(string_of_int(!x) ^ "\n");
    x := (!x) - 1
  done;;