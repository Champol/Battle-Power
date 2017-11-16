/// CALCULAR COLISIONES DE ARMAS CON MAYOR PRECISIÓN.

/* EXPLICACIÓN:
 * Este código se corre antes del Step Event de todos los objetos,
 * y es equivalente al movimiento de las armas durante un step, por
 * lo cual la speed de estas está dividida en la cantidad de steps.
*/

repeat (STEPS-1)
    {
    with (obj_weapon)
        {
        x += hspeed;
        y += vspeed;
        if (place_meeting(x,y,all))
            {
            event_perform(ev_collision,instance_place(x,y,all));
            }    
        }
    }
