


function struct_add(dest, src){
	
var names = variable_struct_get_names(src)
var name_count = array_length(names)

for(var i = 0; i <= name_count-1; i++)
{
	dest[$ names[@ i]] = src[$ names[@ i]]
}
}


