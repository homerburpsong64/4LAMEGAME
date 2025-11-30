#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// Turn on 3D
d3d_start();

// Camera position
cam_x = 0;
cam_y = 0;
cam_z = 32;

// Camera direction (degrees, 0 = east, 90 = north)
cam_dir = 0;

// Camera pitch (up/down tilt)
cam_pitch = 0;

// Disable lighting/shading for solid colors
d3d_set_lighting(false);
d3d_set_shading(false);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// Rotate left/right
if (keyboard_check(vk_left))  cam_dir -= 2;
if (keyboard_check(vk_right)) cam_dir += 2;

// Forward/backward
spd = 2;
if (keyboard_check(ord('W'))) {
    cam_x += lengthdir_x(spd, cam_dir);
    cam_y += lengthdir_y(spd, cam_dir);
}
if (keyboard_check(ord('S'))) {
    cam_x -= lengthdir_x(spd, cam_dir);
    cam_y -= lengthdir_y(spd, cam_dir);
}

// Strafe left/right
if (keyboard_check(ord('A'))) {
    cam_x += lengthdir_x(spd, cam_dir - 90);
    cam_y += lengthdir_y(spd, cam_dir - 90);
}
if (keyboard_check(ord('D'))) {
    cam_x += lengthdir_x(spd, cam_dir + 90);
    cam_y += lengthdir_y(spd, cam_dir + 90);
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// Clear screen
draw_clear(c_black);

// Projection (simple fixed camera)
d3d_set_projection(0, -400, 200, 0, 0, 32, 0, 0, 1);

// Floor (5 args only)
draw_set_color(c_gray);
d3d_draw_floor(-320, -320, 320, 320, 0);

// Walls (6 args only)
draw_set_color(c_red);
d3d_draw_wall(-200, -200, 0, 200, -200, 64);

draw_set_color(c_blue);
d3d_draw_wall(-200, 200, 0, 200, 200, 64);

draw_set_color(c_green);
d3d_draw_wall(-200, -200, 0, -200, 200, 64);

draw_set_color(c_yellow);
d3d_draw_wall(200, -200, 0, 200, 200, 64);
