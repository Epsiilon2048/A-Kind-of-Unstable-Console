
/// @description Returns an array converted from a ds list
/// @param ds_list
function ds_list_to_array(ds_list){

var array = array_create(ds_list_size(ds_list))

for(var i = 0; i <= ds_list_size(ds_list)-1; i++)
{
	array[@ i] = ds_list[| i]
}
return array
}


