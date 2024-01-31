
function hex_to_dec(hex){ //converts base16 to base10
/// GMLscripts.com/license

// Slightly modified for compatibility with GM 2.3 as well as formatting consistency
// https://www.gmlscripts.com/script/hex_to_dec


var _hex = string_upper(hex)
var dec = 0
h = "0123456789ABCDEF"
for (var p = 1; p <= string_length(_hex); p++)
{
    dec = dec << 4 | (string_pos( string_char_at(_hex, p), h ) - 1)
}
return dec
}
