/*
    Dada la altura, la distancia, la distancia imagen y
    la distancia focal de un objeto, encontrar la distancia
    de la imagen.

    a^2 = b^2 + c^2
*/

#include <stdio.h>
#include <math.h>

int main()
{
    double a = 169, b = 25, c = 0;
    c = a - b;
    c = sqrt(c);
    printf("Distancia de la imagen: %f",c);
    return 0;
}
