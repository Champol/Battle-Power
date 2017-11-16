/// CONSTRUYE UN TERRENO ALEATORIO SEGÚN LOS PARÁMETROS DADOS.

/* PARÁMETROS A CONSIDERAR:
 *
 * WORLD: tipo de mundo (textura, modo, ambiente).
 * STYLE: estilo del campo de batalla (forma, estrategia).
 * PLAYER[0]: cantidad de jugadores (forma, spawns).
 */

Block_Count = 0;
Block_Limit = 300 // BLOCKS[B_GROUND];

// Generar terreno.
terrain_base(WORLD);
terrain_steps();
terrain_morph();
terrain_ground();
sdm ("Ready terrain");

// terrain_array();
// terrain_beam(9,24);
