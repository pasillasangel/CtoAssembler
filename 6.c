/*
    Introducir el angulo de refraccion de un rayo luminoso
    y encontrar el angulo de incidencia para cualquier
    indice de refraccion dado.

    https://goo.gl/WabFKU

    La ley establece que:

    Sea � el angulo de incidencia
    � el angulo de refraccion
    n = indice de refraccion

    sen�/sen� = n

    sen� = n.sen�

    sen� = 1,48.sen34�

    sen� = 0,827

    � = 55,79�

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
