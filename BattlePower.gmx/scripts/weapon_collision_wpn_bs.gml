/// COLISIÓN ENTRE WEAPON QUE REBOTA Y WEAPON DETENIDA.

var vx,vy,mu,tg,bx,lb;

// Buscar el momento preciso.
do  {
    self.x -= self.hspeed/10;
    self.y -= self.vspeed/10;
    }
until (!place_meeting(x,y,other))

// Calcular valores relativos.
vx = -self.hspeed;
vy = -self.vspeed;
mu = self.mass/other.mass;

// Choque chueco.
if (self.x-other.x != 0)
    {
    tg = (y-other.y)/(x-other.x);
    bx = 2*(vx+vy*tg);
    bx /= (1+mu)*(1+tg*tg);
    lb = tg*bx;
    }
// Choque vertical.
else
    {
    tg = 0;
    bx = choose(-0.5,0.0,+0.5);
    lb = vy;
    }

// Aplicar choque elástico.
self.hspeed += bx;
self.vspeed += 2*lb;
other.hspeed -= mu*bx;
other.vspeed -= 0;
   
// Desplazar levemente.
self.x += self.hspeed/2;
self.y += self.vspeed/2;
other.x += other.hspeed/2;
other.y += other.vspeed/2;

// Amortiguar el movimiento.
self.hspeed *= 0.8;
self.vspeed *= 0.8;
other.hspeed *= 0.8;
other.vspeed *= 0.8;

// Desmaterializar momentaneamente.
self.ghost = true;
self.alarm[1] = FPS/5;
other.ghost = true;
other.alarm[1] = FPS/5;

// Hacer sonido correspondiente.
sound_effect(snd_wpn_bounce,0.5);
