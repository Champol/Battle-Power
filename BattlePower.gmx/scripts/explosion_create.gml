/// CREA UNA EXPLOSIÓN Y PRODUCE SUS EFECTOS.

// explosion_create(author,type);

with (instance_create(x,-y,obj_explosion))
    {
    owner = argument0;
    type = argument1;
    explosion_effect();
    }
