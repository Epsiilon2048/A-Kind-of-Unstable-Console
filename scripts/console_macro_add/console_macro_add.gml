

function console_macro_add(name, type, value, sort=true){ with o_console {

console_macros[$ name] = {type: type, value: value}

if ds_list_find_index(macro_list, name) == -1 
{ 
	if sort ds_list_file(macro_list, name)
	else ds_list_add(macro_list, name)
}
}}



function index_functions(){ with o_console {
if not gmcl_index_functions exit

var i = 100001
while better_script_exists(i)
{
	var name = script_get_name(i++)
	
	if string_pos("___struct___", name) != 1 and string_pos("anon_", name) != 1
	{
		ds_list_add(method_list, name)
	}
}

ds_list_sort(method_list, true)

var cur = ""
var prev = ""

for(var i = 0; i <= ds_list_size(method_list)-1; i++)
{
	cur = method_list[| i]
	if cur == prev ds_list_delete(method_list, i--)
	prev = cur
}
}}



function index_assets(){ with o_console {
if not gmcl_index_assets exit

var assets = [
	{exists: animcurve_exists,	get_name: function(curve_id){ return animcurve_get(curve_id).name }},
	{exists: font_exists,		get_name: font_get_name},
	{exists: object_exists,		get_name: object_get_name},
	{exists: path_exists,		get_name: path_get_name},
	{exists: room_exists,		get_name: room_get_name},
	{exists: sequence_exists,	get_name: function(sequence_id){ return sequence_get(sequence_id).name }},
	{exists: shader_exists,		get_name: shader_get_name},
	{exists: audio_exists,		get_name: audio_get_name},
	{exists: sprite_exists,		get_name: sprite_get_name},
	{exists: timeline_exists,	get_name: timeline_get_name},
]

for(var i = 0; i <= array_length(assets)-1; i++) {
	var asset = assets[i]
	var j = 0; while asset.exists(j) {
		var name = asset.get_name(j)
		if not string_starts_with(name, "_") {
			ds_list_add(asset_list, name)
		}
		j++
	}
}
ds_list_sort(asset_list, true)
}}



function console_macro_add_builtin(criteria){ with o_console {
if not gmcl_index_builtin_functions exit

if is_undefined(criteria) criteria = ""

if criteria != "" for(var j = 0; j >= array_length(builtin_excluded)-1; j++)
{
	if string_pos(criteria, builtin_excluded[j]) == 1
	{
		array_delete(builtin_excluded, j, 1)
	}
}

static i = 0
static check_inc = 70
var t

if initialized i = 0
else t = get_timer()

var added = 0

for(; i <= 10000; i++)
{
	var name = script_get_name(i)
	
	if better_script_exists(i)
	{	
		var excluded = false
		
		if criteria != "" 
		{
			if string_pos(criteria, name) != 1 excluded = true
		}
		else for(var j = 0; j <= array_length(builtin_excluded)-1; j++)
		{
			if string_pos(builtin_excluded[j], name) == 1 
			{
				excluded = true
				break
			}
		}
		
		if not excluded 
		{
			console_macros[$ name] = {type: dt_method, value: i}
			
			if ds_list_find_index(macro_list, name) == -1 
			{
				ds_list_add(macro_list, name)
				added ++
			}
		}
	}
	
	if not initialized and (i mod check_inc) == check_inc-1
	{
		var _t = get_timer()
		
		var ms = (_t-t)/10000
		var lag = (ms/(game_get_speed(gamespeed_fps)/100))
			
		if lag >= .3
		{
			stay = true
			break
		}
	}
}

if i > 10000 
{
	ds_list_sort(macro_list, true)
	return "Added "+string(added)+" builtin function"+((added == 1) ? "" : "s")
}
}}