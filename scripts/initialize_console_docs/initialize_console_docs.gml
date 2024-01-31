
function initialize_console_docs(){

static com_add = function(name, details){

command_doc_add(name, details)
ds_list_add(command_order, {str: name, cat: false})
}

static com_add_category = function(text, hidden){

ds_list_add(command_order, {str: text, cat: true, hidden: is_undefined(hidden) ? false : hidden})
}

commands = ds_create(ds_type_map, "commands")
command_order = ds_create(ds_type_list, "command_order")

com_add_category("Commands", false)
com_add("help", {desc: "Returns a help menu"})
com_add("command_help", {hidden: true, optargs: ["command"], desc: "Returns the usage of a command; if left blank, returns the list of commands"})
com_add("roomobj", {desc: "Returns all the instances in the room"})
com_add("objvar", {optargs: ["instance"], desc: "Returns all the variables in the specified/scoped instance"})
com_add("select_obj", {desc: "After running, click on an instance to set the console's scope"})
com_add("reset_obj", {optargs: ["instance"], desc: "Destroys and recreates the specified/scoped instance"})

command_doc_add("instance_create_layer", {args: ["x", "y", "layer_id_or_name", "obj"], desc: ""})
command_doc_add("instance_create_depth", {args: ["x", "y", "depth", "obj"], desc: ""})

command_doc_add("array_delete", {args: ["array", "index", "number"], desc: ""})
command_doc_add("array_insert", {args: ["array", "index", "value"], desc: ""})
command_doc_add("array_push", {args: ["array", "value"], moreargs: true, desc: ""})

deprecated_commands = ds_create(ds_type_map, "deprecated_commands")
}