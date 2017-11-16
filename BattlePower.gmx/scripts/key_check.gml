// DETERMINA SI UN COMANDO ESTÁ SIENDO EJECUTADO POR UN JUGADOR.

// key_check(type,key);

var type,key;

type = argument0;
key = argument1;

// Teclado.
if (type == K_KEYBOARD)
   {
   if (keyboard_check_released(key))    {return K_RELEASED}
   if (keyboard_check_pressed(key))     {return K_PRESSED}
   if (keyboard_check(key))             {return K_HOLD}
   }

// Gamepad.
if (type > K_KEYBOARD)
   {
   if (gamepad_button_check_released(type,key)) {return K_RELEASED}
   if (gamepad_button_check_pressed(type,key))  {return K_PRESSED}
   if (gamepad_button_check(type,key))          {return K_HOLD}
   }
   
// Nada.
return K_NOT;
