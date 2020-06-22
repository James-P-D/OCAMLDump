(* smallest infinite loop *)
let rec forever x = forever x

let rec fact x =
  if x==0 then 1 else x * (fact(x-1));;
    
let x = fact 5 ;;
let y = fact 10 ;;