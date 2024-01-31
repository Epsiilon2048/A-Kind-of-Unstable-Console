
function hex_to_color(hex){

var _hex

if is_string(hex)
{
	_hex = string(hex)
	if slice(_hex, 1, 3, 1) == "0x" _hex = slice(_hex, 3, -1, 1)
}
else if is_numeric(hex) _hex = dec_to_hex(hex, 6)

return hex_to_dec( string_copy(_hex, 5, 2)+string_copy(_hex, 3, 2)+string_copy(_hex, 1, 2) )
}
