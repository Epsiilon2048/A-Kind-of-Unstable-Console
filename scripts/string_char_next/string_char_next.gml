

/// @description Retruns the next instance in a string of any of the chars, starting from the pos, in the direction of dir
/// @param {string} chars
/// @param {string} str
/// @param {real} pos
/// @param {real} dir - 1 for forward and -1 for backward
function string_char_next(chars, str, pos, dir){

var i = pos+dir
var len = string_length(str)

var inv = string_pos(string_char_at(str, i), chars) 

while 1 <= i and i <= len and (inv xor not string_pos(string_char_at(str, i), chars))
{
	i += dir
}

i -= dir

//if i > len return 0
return i
}
	