/// PAUSA LA BATALLA.

if (PAUSED) {exit}
PAUSED = true;

instance_deactivate_object(obj_player);
instance_deactivate_object(obj_block);
instance_deactivate_object(obj_weapon);

surf_pause = surface_create(W,H);
surface_copy(surf_pause,0,0,application_surface);
application_surface_draw_enable(false);

// menu_pause();
