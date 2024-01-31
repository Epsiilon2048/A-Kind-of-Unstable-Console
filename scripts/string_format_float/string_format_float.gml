
function string_format_float(float, decimal_places){ //formats a float into a string

if not is_numeric(float) or (is_undefined(decimal_places) and (float mod 1) == 0) return string(float)

var _decimal_places = is_undefined(decimal_places) ? 3 : decimal_places

var float_string = string_format(float, 0, _decimal_places)

if is_undefined(decimal_places) and (float mod 1) != 0
{
	var len = string_length(float_string)
	var i = len
	var char = string_char_at(float_string, len)
	while char == "0"
	{
		i--
		char = string_char_at(float_string, i)
	}
	
	float_string = slice(float_string, 1, i+1, 1)
}

return float_string
}
