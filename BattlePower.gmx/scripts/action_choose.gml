/// ABRE O CIERRA EL INVENTARIO.

// action_choose(step);

if (!alive) {exit}

// Acción según paso correspondiente.
switch (argument0)
    {
    // PRIMERA SEÑAL.
    case K_PRESSED:
        {
        choosing = 0.1;             // Avisar.
        alarm[1] = FPS/4;           // Pedir inventario.
        aim.pow = 0;                // Anular diparo.
        exit;
        }
    // ABRIR INVENTARIO.
    case K_ALARM:
        {
        choosing = true;            // Abrir inventario.
        disp.wpn = weapon;          // Arma actual.
        exit;
        }
    // SELECCIONAR ARMA.
    case K_RELEASED:
        {
        choosing = false;           // Cerrar inventario.
        if (alarm[1] > 0)           // Elegir rápidamente.      
           {
           action_change(0,true);   // Siguiente arma.
           alarm[1] = -1;           // Olvidar aviso.
           exit;
           }
        if (alarm[2] > 0)           // Mecanismo de seguridad.
            {
            disp.wpn = disp.wex;    // Arma anterior.
            }
        weapon = disp.wpn;          // Escoge su arma.
        exit;
        }
    }
