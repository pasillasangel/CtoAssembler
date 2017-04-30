/*
    Dado el peso atomico de un elemento, usar la
    ecuacion E = mc^2 para encontrar la cantidad
    de energia producidacuando el elemento se
    convierte en energia.

    Oro: 196.96
    C = 299 792 458
*/
#include <stdio.h>

int main()
{
    long double E, C = 299792458, M = 196.96;
    C = C * C;
    E = M * C;
    printf("Energia del Oro: %f", E);
    return 0;
}
