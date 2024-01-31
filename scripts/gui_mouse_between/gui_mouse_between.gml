	
/// Returns if the mouse is between gui coordinates
/// @param x1
/// @param y1
/// @param x2
/// @param y2
function gui_mouse_between(x1, y1, x2, y2){

return point_in_rectangle(gui_mx, gui_my, min(x1, x2), min(y1, y2), max(x1, x2), max(y1, y2))
}