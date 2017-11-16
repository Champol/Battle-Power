/// HACE SALTAR AL JUGADOR.

if (stunned) {exit}

// Agacharse.
if (motion == FIRM) and (input[K_SAL] == K_PRESSED)
    {
    alarm[3] = FPS/10;
    hspd = 0;
    }

// Saltar.
if (alarm[3] == 0)
    {
    motion = JUMP;
    vspd = player_jspeed(jump);
    grav = JGRAV*GRAV;
    }

// Soltar salto.
if (motion == JUMP) and (!input[K_SAL])
    {
    grav = GRAV;
    }
