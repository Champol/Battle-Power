/// EMPUJA LAS ARMAS CERCANAS.

var dist,emp,dir;

with (obj_weapon)
    {
    if (mass == 0) {continue}
    dist = point_distance(x,y,other.x,other.y);
    if (dist < other.X_dmg)
        {
        emp = other.X_emp*(other.X_dmg-dist)/(7*mass);
        dir = point_direction(other.x,other.y,x,y);
        motion_add(dir,emp);
        }
    }
