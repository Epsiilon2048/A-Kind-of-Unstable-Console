


/// @description Returns an array of the value held by each struct in an array of structs
/// @param array
/// @param value
function array_struct_get(array, name){

var _array = array_create(array_length(array), undefined)

for(var i = 0; i <= array_length(array)-1; i++)
{
	_array[i] = variable_struct_get(array[i], name)
}

return _array
}
	