(* We can declare anonymous functions (lambdas) with 'fun' *)
let quadruple_again x =
    let double = fun x -> x + x in
    double x + double x;;

print_string((string_of_int(quadruple_again 7)) ^ "!\n")