/// ANALIZAR LA SEGURIDAD DEL TERRENO.

var i,j,block,SM;

// Crear grilla de seguridad.
for (i=41; i>=00; i--)
    {
    SecurityMap[i,25] = 00;
    for (j=24; j>=00; j--)
        {
        block = instance_position(field_x(i),field_y(j),obj_block);
        if (block != noone) {SecurityMap[i,j] = block.security}
        else                {SecurityMap[i,j] = SecurityMap[i,j+1]}
        }
    }

// Interpolar la información.
repeat(2)
    {
    for (i=40; i>=01; i--)
    for (j=24; j>=07; j--)
        {
        SM[i,j] = 6*SecurityMap[i,j];
        SM[i,j] += SecurityMap[i+1,j];
        SM[i,j] += SecurityMap[i-1,j];
        SM[i,j] += SecurityMap[i,j+1];
        SM[i,j] += SecurityMap[i,j-1];
        }    
    for (i=40; i>=01; i--)
    for (j=24; j>=07; j--)
         {
         SecurityMap[i,j] = SM[i,j]/10;
         }
    }

// Desprestigiar el agua.
for (i=40; i>=01; i--)
for (j=24; j>=07; j--)
    {SecurityMap[i,j] *= 1.1-0.02*j}
