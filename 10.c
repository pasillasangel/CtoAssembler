/*
    El Tiempo que requiere un objeto para recorrer
    una cierta distancia cuando viaja a velocidad
    constante esta dado por la formula t = d/r,
    donde d es la distancia y r es la rapidez.
    Calcular t cuando r = 40 km/seg y d varia de
    10 a 100m en incrementos de 10 m.
*/

#include <stdio.h>

int main()
{
    float t, r = 40;
    for(float d = 10; d <= 100; d = d + 10)
    {
        t = (d / r);

        printf("Tiempo recorrido: %f\n", t);
    }
    return 0;
}
