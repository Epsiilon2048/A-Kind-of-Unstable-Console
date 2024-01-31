	
/// @description Returns if an object exists
/// @param {real} obj
function better_object_get_name(obj){
if obj == global return "global"

if instance_exists(obj) obj = obj.object_index
return object_get_name(obj)
}
	