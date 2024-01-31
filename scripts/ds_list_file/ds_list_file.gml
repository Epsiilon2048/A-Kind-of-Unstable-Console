
// Files a value into a sorted DS list
function ds_list_file(id, value){

for(var i = 0; i <= ds_list_size(id)-1; i++)
{
	var item = id[| i]

	if value == item break
	
	var j = 1; while string_char_at(item, j) == string_char_at(value, j)
	{
		j++
	}
	
	if ord( string_char_at(value, j) ) < ord( string_char_at(item, j) )
	{
		break
	}
}

ds_list_insert(id, i, value)
}
