/*
    La distancia de frenado en Celsius (C) de un carro
    experimental se calcula como 1.8 veces el cuadrado
    de su velocidad S^2: es decir, C = 1.8 s^2. Calcular
    e imprimir la distancia de frenado para velocidades
    de 40 km/h a 60km/h.
*/

#include <stdio.h>

int main()
{
    float c, sx2;
    for(float s = 40; s <= 60; s++)
    {
        sx2 = s * s;
        c =(1.8 * sx2);
        printf("Distancia de frenado %f: %f\n", s, c);
    }
    return 0;
}
