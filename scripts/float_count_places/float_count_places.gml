
function float_count_places(float, max_places){

if (float mod 1) == 0 return 0

if is_undefined(max_places) max_places = 10

var float_string = string_format(float, 0, max_places)

var i = 1
var len = string_length(float_string)
var char = string_char_at(float_string, len)
while char == "0"
{
	i++
	char = string_char_at(float_string, len-i)
}
	
return len-string_pos(".", float_string)-i
}