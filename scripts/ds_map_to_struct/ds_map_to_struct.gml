
function ds_map_to_struct(ds_map){

var struct = {}
var keys = ds_map_keys_to_array(ds_map)

for(var i = 0; i <= ds_map_size(ds_map)-1; i++)
{
	struct[$ keys[@ i]] = ds_map[? keys[@ i]]
}
return struct
}
	