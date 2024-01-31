
/// @description Returns if an instance exists
/// @param {real} inst
function better_instance_exists(inst){
return is_numeric(inst) and inst < 0xfffffffb and instance_exists(inst)
}