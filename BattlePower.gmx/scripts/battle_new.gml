/// INICIAR UNA NUEVA BATALLA.

/* EXPLICACIÓN:
 * Este evento ocurre al entrar en room_battlefield.
 * Ya se debe haber establecido el WORLD, STYLE,
 * número de PLAYERS, AMMO y proporción de BLOCKS,
 * o se debe haber definido un archivo para cargar.
*/

if (BATTLE) {exit}

BATTLE = true;
PAUSED = false;
TIME = 0;
GRAV = 0.8;
WIND = 0.0;
JGRAV = 0.6;

audio_play_sound(mus_battle,1,true);

with (obj_player) {instance_destroy()}
player_create(1,04,15);
player_create(2,26,37);
battle_colors();

terrain_generate();

alarm[0] = 3*FPS;
