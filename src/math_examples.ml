let int1 = 10;;
let int2 = 3;;

print_string(string_of_int(int1 + int2) ^ "\n");;
print_string(string_of_int(int1 - int2) ^ "\n");;
print_string(string_of_int(int1 * int2) ^ "\n");;
print_string(string_of_int(int1 / int2) ^ "\n");;   (* Integer division *)
print_string(string_of_int(int1 mod int2) ^ "\n");; (* Modulus *) 

let float1 = 10.5;;
let float2 = 2.9;; 

print_string(string_of_float(float1 +. float2) ^ "\n");;
print_string(string_of_float(float1 -. float2) ^ "\n");;
print_string(string_of_float(float1 *. float2) ^ "\n");;
print_string(string_of_float(float1 /. float2) ^ "\n");;
print_string(string_of_float(float1 ** float2) ^ "\n");; (* Exp *) 