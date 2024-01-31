
function initialize_gmcl_macros(){ with o_console {

static am = function(name, type, value){ console_macro_add(name, type, value, false) }

am("undefined",			dt_undefined, o_console)
am("null",				dt_undefined, o_console)

am("mouse_x",			dt_variable, function(){ return mouse_x })
am("mouse_y",			dt_variable, function(){ return mouse_y })
										
am("fps",				dt_variable, function(){ return fps })
am("fps_real",			dt_variable, function(){ return fps_real })

am("room",				dt_variable, function(index){if is_numeric(index) room_goto(index) return room })
										
am("gui_mx",			dt_variable, function(){ return gui_mx })
am("gui_my",			dt_variable, function(){ return gui_my })

am("fps_set",			dt_variable, function(spd){ 
	game_set_speed(spd, gamespeed_fps) 
	return $"Set gamespeed to {spd}fps"
})

am("cs_drowned",		dt_string, cs_drowned)
am("cs_greenbeans",		dt_string, cs_greenbeans)
am("cs_helios",			dt_string, cs_helios)
am("cs_humanrights",	dt_string, cs_humanrights)
am("cs_rainbowsoup",	dt_string, cs_rainbowsoup)
am("cs_royal",			dt_string, cs_royal)
am("cs_sublimate",		dt_string, cs_sublimate)
am("cs_gms2",			dt_string, cs_gms2)

am("true",				dt_real, true)
am("false",				dt_real, false)
										
am("global",			dt_instance, global)
am("noone",				dt_instance, noone)
am("all",				dt_instance, all)

am("c_white",			dt_color, c_white)
am("c_black",			dt_color, c_black)
am("c_red",				dt_color, c_red)
am("c_blue",			dt_color, c_blue)
am("c_yellow",			dt_color, c_yellow)
am("c_green",			dt_color, c_green)

am("gamespeed_fps",				dt_real, gamespeed_fps)
am("gamespeed_mis",				dt_real, gamespeed_microseconds)
am("gamespeed_microseconds",	dt_real, gamespeed_microseconds)

am("fa_top",			dt_real, fa_top)
am("fa_bottom",			dt_real, fa_bottom)
am("fa_middle",			dt_real, fa_middle)
am("fa_left",			dt_real, fa_left)
am("fa_right",			dt_real, fa_right)
am("fa_center",			dt_real, fa_center)

ds_list_sort(macro_list, true)
}}