/// EFECTOS DE LA EXPLOSIÓN.

explosion_damage();
if (X_dmg == 0)
    {
    instance_destroy();
    exit;
    }
explosion_harm();
explosion_push();
explosion_destroy();
explosion_sound();
explosion_particles();
alarm[0] = 1*FPS;
