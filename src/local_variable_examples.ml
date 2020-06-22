let quadruple x =
  let double y = y + y in
  let answer = double x + double x in
  answer;;
  
print_string((string_of_int(quadruple 7)) ^ "!\n")