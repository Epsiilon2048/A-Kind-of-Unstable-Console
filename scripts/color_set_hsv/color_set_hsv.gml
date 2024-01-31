
function color_set_hsv(col, hue=color_get_hue(col), saturation=color_get_saturation(col), value=color_get_value(col)){ //returns a color with added hue
return make_color_hsv(hue, saturation, value)
}