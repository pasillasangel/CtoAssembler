/*
    Las fuerzas de arrastres y elevacion de un cohete
    pueden darse aproximadamente por las ecuaciones:
    Arrastres = DdAV^2 y elevacion = LdAV^2, donde D
    y L son los coeficientes de arrastre y elevacion,
    respectivamente determinados en forma experimental;
    d es la densidad del aire, A es el area de la seccion
    transversal del cohete y V su velocidad. Introducir
    diferentes valores de D, L, d, A y V e imprimir los
    valores de las fuerzas de arrastres y elevacion.
*/

#include <stdio.h>
int main()
{
    float arrastre, elevacion, L, DMay, dMin, A, V;
    printf("Ingrese Coeficiente de Arrastre: ");
    scanf("%f", &DMay);
    printf("Ingrese Coeficiente de Elevacion: ");
    scanf("%f", &L);
    printf("Ingrese Densidad del Aire: ");
    scanf("%f", &dMin);
    printf("Ingrese Area transversal: ");
    scanf("%f", &A);
    printf("Ingrese Velocidad: ");
    scanf("%f", &V);

    V = V * V;
    arrastre = DMay * dMin * A * V;
    elevacion = L * dMin * A * V;

    printf(" - Arrastre = ");
    printf("%f", arrastre);

    printf(" - Elevacion = ");
    printf("%f", elevacion);
}
