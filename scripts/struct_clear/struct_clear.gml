
function struct_clear(struct){

var names = variable_struct_get_names(struct)
var name_count = array_length(names)

for(var i = 0; i <= name_count-1; i++)
{
	struct[$ names[@ i]] = undefined
}
}

