/// REALIZA LAS ACCIONES DEL JUGADOR.

var hor,ver;

// horecciones.
hor = sign(input[K_DER]-input[K_IZQ]);
ver = sign(input[K_SUB]-input[K_BAJ]);

// Elegir arma.
if (choosing)
    {
    action_select(VER,ver);
    action_select(HOR,hor);
    }

// Apuntar.
else
    {
    action_aim(ver);
    }

// Cargar arma.
if (input[K_DIS])
    {action_charge()}

// Disparar arma.
if (input[K_DIS] == K_RELEASED)
    {action_shoot()}

// Seleccionar arma.
action_choose(input[K_CAM]);
