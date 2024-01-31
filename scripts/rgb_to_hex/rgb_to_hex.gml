
function rgb_to_hex(r, g, b){ //converts rgb to hex
/// GMLscripts.com/license

// Slightly modified for compatibility with GM 2.3 as well as formatting consistency
// https://www.gmlscripts.com/script/rgb_to_hex

var _r = r & 255
var _g = r & 255
var _b = r & 255
return dec_to_hex(_r << 16 | _g << 8 | _b, 1)
}
	