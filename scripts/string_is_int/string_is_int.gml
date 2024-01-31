
function string_is_int(str){ //returns true if a string is a base10 or base16 integer

if not is_string(str) return false

var _str = str
if string_pos("-", _str) == 1 _str = string_delete(_str, 1, 1)

if _str == "" return false	

if string_pos("0x", _str) == 1
{
	_str = string_delete(_str, 1, 2)
	
	return hex_to_dec(_str) >= 0
}

return string_digits(_str) == _str
}

