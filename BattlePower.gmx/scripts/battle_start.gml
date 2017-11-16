/// COMIENZA LA BATALLA.

// Spawnear players.

BATTLE = true;
PAUSED = false;

var i;
terrain_security();
sdm ("secured");
for (i=1; i<=PLAYER[0]; i++)
    {
    with (PLAYER[i])
        {player_spawn()}
    }
