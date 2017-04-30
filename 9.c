/*
    La atracion gravitatoria entre dos cuerpos cualesquiera
    en el universo esta dada por la formula
    F = (G x M x N)/R^2, donde M y N son las masas de los
    cuerpos en KG; R es la distancia entre ellos es m y G
    es la constante de gravitacion. Establecer valores para M
    N, R y G y calcular e imprimir F.
*/

#include <stdio.h>

int main()
{
    float F, G, M, N, R;
    G = 9.8;
    M = 80;
    N = 90;
    R = 2;
    R = R * R;
    F = (( G * M * N ) / R);
    printf("Atraccion gravitacional: %f", F);
    return 0;
}
