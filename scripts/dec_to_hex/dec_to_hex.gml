
function dec_to_hex(dec, len){ //converts base10 to base16
/// GMLscripts.com/license

// Slightly modified for compatibility with GM 2.3 as well as formatting consistency
// https://www.gmlscripts.com/script/dec_to_hex

var _dec = dec
var _len = is_undefined(len) ? 1 : len

var hex = ""
 
if _dec < 0
{
    _len = max(_len, ceil( logn( 16, 2*abs(_dec) ) ) )
}
 
var dig = "0123456789ABCDEF"
while _len-- or _dec 
{
    hex = string_char_at(dig, (_dec & $F) + 1) + hex
    _dec = _dec >> 4;
}
 
return hex;
}