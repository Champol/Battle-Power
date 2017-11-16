/// HEALTH BAR.

var col = c_grs;

// Fondo.
draw_sprite(spr_energy,1,x-12,y-S);

// Sano.
if (!infected)
   {
   // Color.
   if (hlth>000 and hlth<=025) {col = c_roj}
   if (hlth>025 and hlth<=050) {col = c_ama}
   if (hlth>050 and hlth<=100) {col = c_ver}
   
   // Barrita.
   if (hlth<=100)
      {
      draw_sprite_ext(spr_energy,0,x-12,y-S,hlth/100,1,0,col,1);
      }
   
   // Bonus.
   if (hlth>100 and hlth<=200)
      {
      draw_sprite_ext(spr_energy,0,x-12,y-S,1,1,0,$00DD00,1);
      draw_sprite_ext(spr_energy,0,x-12,y-S,(hlth-100)/100,1,0,c_bla,1);
      }
   
   // Estrellita.
   /*
   if (hlth>200)
      {
      if (T mod 3 == 0) {col = make_color_hsv(random(255),255,255)}
      draw_sprite_ext(spr_energy,0,x-12,y-S,1,1,0,col,1);
      }
   */
   }
// Enfermo.
else
   {
   // Normal.
   if (hlth<=100)
      {
      draw_sprite_ext(spr_energy,0,x-12,y-S,hlth/100,1,0,c_mor,1);
      }
   
   // Bonus.
   if (hlth>100 and hlth<=200)
      {
      draw_sprite_ext(spr_energy,0,x-12,y-S,1,1,0,c_mor,1);
      draw_sprite_ext(spr_energy,0,x-12,y-S,(hlth-100)/100,1,0,c_bla,1);
      }
   }
