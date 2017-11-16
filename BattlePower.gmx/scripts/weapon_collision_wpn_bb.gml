/// COLISIÓN ENTRE DOS WEAPON QUE REBOTAN.

var vx,vy,mu,tg,bx,lb;

// Buscar el momento preciso.
do {
   self.x -= self.hspeed/10;
   self.y -= self.vspeed/10;
   other.x -= other.hspeed/10;
   other.y -= other.vspeed/10;   
   }
until (!place_meeting(x,y,other))

// Calcular valores relativos.
vx = other.hspeed-self.hspeed;
vy = other.vspeed-self.vspeed;
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
self.vspeed += lb;
other.hspeed -= mu*bx;
other.vspeed -= mu*lb;
   
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
