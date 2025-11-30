#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// Create Event of obj_title
global.use_mouse_look = false; // default off

// Example: press M to toggle mouse look
// Step Event of obj_title
if (keyboard_check_pressed(ord('M'))) {
    global.use_mouse_look = !global.use_mouse_look;
}
