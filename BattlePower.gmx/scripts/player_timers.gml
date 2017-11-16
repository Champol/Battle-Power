/// ACTUALIZAR TEMPORIZADORES.

if (immune)     {immune--}                      // Tiempo de invulnerabilidad.
if (aim.wait)   {aim.wait--}                    // Tiempo para próximo disparo.
if (disp.wait)  {disp.wait--}                   // Lapso para cambiar de arma.
if (choosing)   {aim.wait = max(aim.wait,1)}    // No disparar eligiendo arma.
