/// DETERMINA LOS COLORES DE LOS PLAYERS.

var i,col;

while (true)
    {
    col[1] = rir(0,15);
    col[2] = rir(0,15);
    col[3] = rir(0,15);
    col[4] = rir(0,15);
    if (abs(col[1]-col[2]) mod 15 <= 1) {continue}
    if (abs(col[3]-col[4]) mod 15 <= 1) {continue}
    if (abs(col[2]-col[3]) mod 15 <= 1) {continue}
    if (abs(col[4]-col[1]) mod 15 <= 1) {continue}
    if (abs(col[2]-col[4]) mod 15 <= 1) {continue}
    if (abs(col[3]-col[1]) mod 15 <= 1) {continue}    
    break;
    }

for (i=1; i<=PLAYER[0]; i++)
    {
    PLAYER[i].color = make_colour_hsv(col[i]*16,255,255);
    PLAYER[i].aim.color = PLAYER[i].color;
    PLAYER[i].disp.color = PLAYER[i].color;
    }
