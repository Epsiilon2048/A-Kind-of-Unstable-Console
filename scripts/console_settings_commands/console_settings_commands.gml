
function color_scheme(value){ with o_console {

if not is_undefined(color_schemes[$ value])
{
	colors = color_schemes[$ value]
	
	cs_index = value

	if run_in_embed
	{
		return color_scheme_settings()
	}
	else
	{
		return stitch("Console color scheme set to ",value)
	}
}
else return "No such color scheme exists!"
}}




function destroy_console(confirmation){

if confirmation
{
	instance_destroy(o_console)
}
else
{
	output_set({__embedded__: true, o: [
	"H-huh?? Unless you build your own method of getting it back, I'll be gone for the rest of the runtime!\nCould break some stuff too!! S-seriously, I bet it'll crash the moment you do it!\n",
	"Are you absolutely sure? <",{str: "yep!", scr: destroy_console, arg: true},">"
	]})
}
}
	


	
function error_report(){ with o_console {

var list

if variable_struct_exists(prev_exception, "stacktrace")
{
	list = array_create(array_length(prev_exception.stacktrace)+1)
	list[0] = {str: "Stacktrace\n", col: o_console.colors.variable}

	for(var i = 0; i <= array_length(prev_exception.stacktrace)-1; i++)
	{
		list[i+1] = string_replace_all(prev_exception.stacktrace[i], "	", "")+"\n"
	}
}
else list = []

if variable_struct_exists(prev_exception, "Long message") array_push(list, 
	"\n",
	{str: "longMessage", col: o_console.colors.variable},"\n"+
	prev_exception.longMessage
)

//return format_output(list, true, error_report)
return prev_exception
}}