/// CONTINÚA LA BATALLA.

if (!PAUSED) {exit}
PAUSED = false;

instance_activate_all();

surface_free(surf_pause);
application_surface_draw_enable(true);
