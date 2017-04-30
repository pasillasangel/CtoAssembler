/*
    Introducir el angulo de refraccion de un rayo luminoso
    y encontrar el angulo de incidencia para cualquier
    indice de refraccion dado.

    https://goo.gl/WabFKU

    La ley establece que:

    Sea ß el angulo de incidencia
    ø el angulo de refraccion
    n = indice de refraccion

    senß/senø = n

    senß = n.senø

    senß = 1,48.sen34º

    senß = 0,827

    ß = 55,79º

*/

#include <stdio.h>
#include <math.h>

int main()
{
    float n = 1.48, beta, t, teta, multi;
    printf("Introducir angulo de refraccion: ");
    scanf("%f", &t);
    teta = sin(t);
    multi = n * teta;
    beta = sin(multi);
    printf("Angulo de incidencia es: %f", beta);
    return 0;
}
