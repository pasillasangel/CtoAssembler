/*
    Introducir la potencia en bujias de una fuente
    luminosa P y si distancia D desde un punto.
    Determinar la iluminacion sobre un objeto
    colocado en ese punto.

    Medir luminusidad
    P = I / d^2

    P = Iluminacion
    I = Intensidad luminosa
    D = Distancia

    https://es.slideshare.net/ablancomeza/intensidad-luminosa
*/

#include <stdio.h>

int main()
{
    float d, p;
    print("Ingrese distancia: ");
    scanf("%f", &d);
    d = d * d;
    p = (300 / d);
    printf("La Iluminacion es de :");
    printf("%f", p);

    return 0;
}
