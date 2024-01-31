
/// @description Returns if a script exists
/// @param {real} ind
function better_script_exists(ind){

return 0 <= ind and ind <= 0xfffffffb and script_get_name(ind) != "<unknown>" and script_get_name(ind) != "<undefined>"
}
