
function initialize_console(){
if not instance_exists(o_console) instance_create_depth(0, 0, 0, o_console)
if o_console.startup < 0 o_console.startup = 0
}