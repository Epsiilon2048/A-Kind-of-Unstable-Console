	
/// @description If a variable in a struct exists return the variable, otherwise return the not_exists value
/// @param struct
/// @param variable
/// @param not_exists
function variable_struct_exists_get(struct, variable, not_exists){

if is_struct(struct) and variable_struct_exists(struct, variable) return variable_struct_get(struct, variable)
else return not_exists
}