/*
    El numero de chirridos que hace un grillo por
    minuto es una funcion de la temperatura. En
    consecuencia, es posible decir cuanto calor
    hace usando a un grillo como termometro.
    Una formula es t = (n + 40)/4. Aqui, t representa
    la temperatura en grados fahrenheit y el numero
    de chirridos que emite el grillo por minuto. Determinar
    e imprimir valores de t para n igual a 40, 50, 60, 70
    140, 150.
*/

#include <stdio.h>

int main()
{
    float t;

    for(float n = 40;n <= 150; n = n + 10)
    {
        t = ((n + 40) / 4);
        printf("Valor: %f\n", t);
    }
    return 0;
}
