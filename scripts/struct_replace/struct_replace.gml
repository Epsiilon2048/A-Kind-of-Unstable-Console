
function struct_replace(dest, src){
	
var names = variable_struct_get_names(src)
var name_count = array_length(names)

for(var i = 0; i <= name_count-1; i++)
{
	var value = dest[$ names[@ i]]
	
	if is_method(value) continue
	if is_struct(value) dest[$ names[@ i]] = struct_copy( src[$ names[@ i]] )
	else dest[$ names[@ i]] = src[$ names[@ i]]
}

return dest
}

