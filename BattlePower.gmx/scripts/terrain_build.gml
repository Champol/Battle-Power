/// CREA UN BUILD BLOCK EN EL LUGAR INDICADO.

// terrain_build_block(i,j,i_min,i_max);

var i,j,i_min,i_max,xx,yy,block;

i = argument0;
j = argument1;
i_min = argument2;
i_max = argument3;

// Fuera de los límites.
if (i < i_min)  {return noone}
if (i > i_max)  {return noone}
if (j < 8)      {return noone}
if (j > 24)     {return noone}

// Posición.
xx = field_x(i);
yy = field_y(j);

// Lugar ocupado.
if (position_meeting(xx,yy,obj_block))
    {return noone}

// Crear bloque.
global.Block_Count++;
block = instance_create(xx,yy,obj_build);
block.i = i;
block.j = j;
block.i_min = i_min;
block.i_max = i_max;
return block;
