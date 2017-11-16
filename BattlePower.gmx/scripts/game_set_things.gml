/// PARÁMETROS VARIOS.

var i = random(100000);
i *= date_current_datetime();
i += 10*get_timer();
random_set_seed(i);
randomize();

math_set_epsilon(0.0001);
