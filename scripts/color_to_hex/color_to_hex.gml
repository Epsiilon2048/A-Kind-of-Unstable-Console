
function color_to_hex(color){

var hex = dec_to_hex(color, 6)

return string_copy(hex, 5, 2)+string_copy(hex, 3, 2)+string_copy(hex, 1, 2)
}
