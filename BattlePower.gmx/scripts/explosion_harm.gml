/// DAÑO A LOS JUGADORES.

var dist,dmg,emp,dir,stun;

with (obj_player)
    {
    dist = point_distance(x,y,other.x,other.y);                         // Distancia.
    if (dist <= other.X_max)                                            // Cerca.
        {
        dmg = other.X_dmg*(other.X_max-dist)/(other.X_max-other.X_min); // Daño.
        dmg = ceil(min(dmg,other.X_dmg));                               // Máximo.
        emp = other.X_emp*(other.X_max-dist)/(7*mass);                  // Impulso.
        dir = point_direction(x,y,other.x,other.y);                     // Dirección.
        stun = 1*FPS;                                                   // Aturdir.
        if (other.type == W_ORB) {stun = 5*FPS}                         // Paralizar.
        player_hit(dmg,emp,dir,stun);                                   // Golpear.
        }
    }
