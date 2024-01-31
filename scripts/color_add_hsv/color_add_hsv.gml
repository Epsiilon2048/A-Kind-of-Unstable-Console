	
function color_add_hsv(col, hue=0, saturation=0, value=0){ //returns a color with added hue
return make_color_hsv(
	color_get_hue(col)+hue, 
	color_get_saturation(col)+saturation,
	color_get_value(col)+value
)
}