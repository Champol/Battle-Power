/// SE ASEGURA QUE SOLO HAYA UNA INSTANCIA DE DICHO OBJETO.

// object_unique();

if (instance_number(object_index) > 1) {instance_destroy()};
