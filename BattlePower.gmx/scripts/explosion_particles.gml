        /*
   // Característica de las particles.
   X_pow = sqrt(X_dmg*X_max);                                                          // Desde 16 hasta 64.
   X_pow = (X_pow-16)/48;                                                              // Desde 00 hasta 01.
   part_type_size(E_exp,3+5*X_pow,5+10*X_pow,0.1,0.1);                                 // Tamaño.
   part_type_speed(E_exp,0,0.1+0.1*X_pow,-0.002,0.01);                                 // Rapidez.
   part_type_life(E_exp,0.8*FPS,1.0*FPS);                                              // Lapso.
   part_type_color_rgb(E_exp,100,200,0,100,0,0);                                       // Color. (E_exp,175,250,0,175,0,0)
   if (X_typ == -Nit) {part_type_color_rgb(E_exp,0,150,100,200,0,50)}                  // Nitro.
   part_type_size(E_des,1.4+1.6*X_pow,1.4+1.6*X_pow,-0.04,0);                          // Destello.
   
   // Efecto visual.
   if (X_typ != Orb)
      {
      part_particles_create(PSX,x,y,E_des,1);                                             // Destello.
      X_pem = part_emitter_create(PSX);                                                   // Emitter.
      part_emitter_region(PSX,X_pem,x-5-5*X_pow,x+5+5*X_pow,y-5-5*X_pow,y+5+5*X_pow,1,0); // Círculo.
      part_emitter_burst(PSX,X_pem,E_exp,15);                                             // Emitir.
      part_emitter_destroy(PSX,X_pem);                                                    // Destruir.
      alarm[0] = 1*FPS;                                                                   // Lapso.
      }
   */
