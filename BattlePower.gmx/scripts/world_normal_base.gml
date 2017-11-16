/// GENERA UN TERRENO ALEATORIO DEL MUNDO NORMAL.

var style = STYLE;

// Fondo.
background_index[0] = bg_daysky;

// Agua.
WATER= instance_create(W/2,field_y(24),obj_water);

if (style == WORLD_RANDOM)
    {style = choose(WORLD_FLAT,WORLD_1_ISLAND,WORLD_2_ISLAND,WORLD_2_PILLAR,WORLD_4_PILLAR)}

// Terreno.
switch (style)
    {
    case WORLD_FLAT:
        {
        terrain_build(07,24,01,40);
        terrain_build(16,24,01,40);
        terrain_build(25,24,01,40);
        terrain_build(34,24,01,40);
        break;
        }
    case WORLD_1_ISLAND:
        {
        terrain_build(20,24,01,40);
        terrain_build(21,24,01,40);
        break;
        }
    case WORLD_2_ISLAND:
        {
        terrain_build(10,24,01,19);
        terrain_build(31,24,22,40);
        break;
        }
    case WORLD_2_PILLAR:
        {
        terrain_build(10,24,05,15);
        terrain_build(31,24,26,36);
        }
        break;
    case WORLD_4_PILLAR:
        {
        terrain_build(07,24,04,10);
        terrain_build(16,24,13,19);
        terrain_build(25,24,22,28);
        terrain_build(34,24,31,37);
        break;
        }
    }
