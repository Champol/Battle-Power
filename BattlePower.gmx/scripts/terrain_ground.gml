/// MAPEAR LOS GROUND DEL TERRENO.

var i,j;

// Reiniciar valores.
for (i=41; i>=00; i--)
for (j=25; j>=06; j--)
    {
    BattleMap[i,j] = B_GROUND;
    }

// Considerar vecinos.
for (i=40; i>=01; i--)
for (j=24; j>=07; j--)
    {
    if (position_meeting(field_x(i),field_y(j),obj_ground))
        {
        BattleMap[i-1,j] += 1;
        BattleMap[i,j+1] += 2;
        BattleMap[i+1,j] += 4;
        BattleMap[i,j-1] += 8;
        }
    }

// Vacíos.
for (i=40; i>=01; i--)
for (j=24; j>=07; j--)
    {
    if (!position_meeting(field_x(i),field_y(j),obj_ground))
        {
        BattleMap[i,j] = B_EMPTY;
        }
    }
