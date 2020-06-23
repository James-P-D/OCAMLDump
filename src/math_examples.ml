let int1 = 10;;
let int2 = 3;;

print_string(string_of_int(int1 + int2) ^ "\n");;
print_string(string_of_int(int1 - int2) ^ "\n");;
print_string(string_of_int(int1 * int2) ^ "\n");;
print_string(string_of_int(int1 / int2) ^ "\n");;   (* Integer division *)
print_string(string_of_int(int1 mod int2) ^ "\n");; (* Modulus *) 

(* We can use underscore for commas in large numbers. No idea why anyone thought this might be a good idea :D *)
let one_thousand = 1_000;;
print_string("one_thousand = " ^ string_of_int(one_thousand) ^ "\n");;

(* Binary integer literals *)
let binary_number = 0b11111111;;
print_string("one_thousand = " ^ string_of_int(binary_number) ^ "\n");;

(* Octal integer literals *)
let octal_number = 0o377;;
print_string("octal_number = " ^ string_of_int(octal_number) ^ "\n");;

(* Hex integer literals *)
let hex_number = 0xFF;;
print_string("hex_number = " ^ string_of_int(hex_number) ^ "\n");;

let float1 = 10.5;;
let float2 = 2.9;; 

(* Note most float operators are normal integer operators followed by a period *)

print_string(string_of_float(float1 +. float2) ^ "\n");;
print_string(string_of_float(float1 -. float2) ^ "\n");;
print_string(string_of_float(float1 *. float2) ^ "\n");;
print_string(string_of_float(float1 /. float2) ^ "\n");;
print_string(string_of_float(float1 ** float2) ^ "\n");; (* Exp *) 


(* We can convert floats to ints *)

let int_from_float1 = int_of_float(float1);; (* Returns an int *)
let int_from_float2 = floor(float1);;        (* Returns a float *)
let int_from_float3 = ceil(float1);;         (* Returns a float *)

print_string("int_from_float1 = " ^ string_of_int(int_from_float1) ^ "\n");;   (* Returns an 10 *)
print_string("int_from_float2 = " ^ string_of_float(int_from_float2) ^ "\n");; (* Returns an 10. (note the decimal point because it's a float) *)
print_string("int_from_float3 = " ^ string_of_float(int_from_float3) ^ "\n");; (* Returns an 11. (note the decimal point because it's a float) *)

(* Finally, obviously we can sin, con, tan, asin, etc. log, log10, etc.
   We also have land, lor, lxor, lnot for bitwise operators, lsr and lsl for bit-shifting *)