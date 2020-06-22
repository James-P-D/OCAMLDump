let double_small_numbers_only x =
  match x with
  | 0 -> 0
  | 1 -> 2
  | 3 -> 6
  | 4 -> 8
  | 5 -> 10
  | x -> x ;;
    
let n1 = double_small_numbers_only 3;;
let n2 = double_small_numbers_only 10;; 