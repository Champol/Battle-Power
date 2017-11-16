/// SELECCIONA UNA POSICIÓN ADECUADA PARA SPAWNEAR.

// terrain_spawn(i_min,i_max,allow_crates);

var i,j,i_mej,i_seg,i_min,i_max,crates,block;

i_min = argument0;
i_max = argument1;
crates = argument2;

i_mej = -1;
i_seg = 10;

// Buscar mejor posición.
for (i=i_min; i<=i_max; i++)
for (j=1; j<=24; j++)
    {
    block = instance_position(field_x(i),field_y(j+1),obj_block);
    if (block == noone)         {continue}
    if (block.type == B_ATOMIC) {continue}
    if (!crates)
        {
        if (block.type == B_HEALTH) {continue}
        if (block.type == B_CHEST) {continue}
        }
    if (SecurityMap[i,j] > i_seg)
        {
        i_mej = i;
        i_seg = SecurityMap[i,j];
        }
    if (SecurityMap[i,j] == i_seg)
        {
        i_mej = choose(i,i_mej,i_mej);
        }
    }

// Retornar posición si había.
if (i_mej != -1) {return i}
i = terrain_spawn(i_min,i_max,true);
if (i_mej != -1) {return i}
i = terrain_spawn(00,41,false);
if (i_mej != -1) {return i}
i = terrain_spawn(00,41,true);
if (i_mej != -1) {return i}
return rir(01,40);
