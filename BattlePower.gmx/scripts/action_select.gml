/// Cambiar el Arma seleccionada en el Inventario.

// action_select(axis,direction);

var i,axis,dir;

axis = argument0;
dir = argument1;

// Suelta tecla de dirección.
if (dir == 0)
    {
    disp.wait = 0;
    exit;
    }

// Lapso de inmovilidad.
if (disp.wait > 0)
    {
    exit;
    } 

// En caso de error.
disp.wex = disp.wpn;                            // Recordar ex-Arma.
alarm[2] = FPS/10;                              // Tiempo de error.

// Selección horizontal.
if (axis == HOR)                                
   {
   if ((0 < disp.wpn) and (disp.wpn < 5))       // Si está en la primera fila...
      {
      do {          
         disp.wpn = index_wrap(disp.wpn+1,1,4); // Seleccionar el siguiente.
         } until (ammo[disp.wpn] > 0)           // Hasta que tenga municiones.
      }
   if ((4 < disp.wpn) and (disp.wpn < 9))       // Si está en la segunda fila...
      {
      do {
         disp.wpn = index_wrap(disp.wpn+1,5,8); // Seleccionar el siguiente.
         } until (ammo[disp.wpn] > 0)           // Hasta que tenga municiones.
      }
   disp.wait = FPS/6;                           // Breve lapso.
   }

// Selección vertical.
if (axis == VER)
   {
   ammo[W_TOT] = 0;
   if (disp.wpn < 5) for (i=5;i<9;i++) {ammo[W_TOT] += ammo[i]}
   if (disp.wpn > 4) for (i=1;i<5;i++) {ammo[W_TOT] += ammo[i]}
   if (ammo[W_TOT] <= 0) {exit}                 // No cambiar de fila.
   disp.wpn = index_wrap(disp.wpn-4,1,8);       // Cambiar de fila.
   while (ammo[disp.wpn] <= 0)                  // Buscar Arma.
      {
      if (disp.wpn < 5) {disp.wpn = index_wrap(disp.wpn+1,1,4)}
      if (disp.wpn > 4) {disp.wpn = index_wrap(disp.wpn+1,5,8)}
      }
   disp.wait = FPS/6;                           // Breve lapso.
   }
