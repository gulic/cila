#include <stdio.h>

void sort__ (float *a, int *m);

void menu_ (float *a, int *n)
{
	int i, m, op;
	char trash[51];
	m  =  0;
	op = -1;
	
	printf ("\n\tEjemplo de programación conjunta Fortran y C\n");
	printf ("\n\tCILA -- Curso de Introducción a Linux para Alumnos\n");
	while (op)
	{
		printf ("\nMenú:\n");
		printf (" 1. Vaciar el vector\n");
		printf (" 2. Añadir un elemento al vector\n");
		printf (" 3. Ordenar el vector\n");
		printf (" 4. Mostrar el vector\n");
		printf (" 0. Salir del menú\n");
		printf ("Elije una opción (0/1/2/3/4): ");
		while (scanf ("%d", &op) != 1)
		{
			scanf ("%50s", trash);
			printf ("La opción %s no es válida\n", trash);
			printf ("Elije una opción (0/1/2/3/4): ");
		} /* while */
		switch (op)
		{
			case 1:
				for (i = 0; i < m; i++)
					a[i] = 0;
				m = 0;
				printf ("El vector ha sido vaciado\n");
				break;
			case 2:
				printf ("Introduce un número real: ");
				while (scanf ("%f", a+m) != 1)
				{
					scanf ("%50s", trash);
					printf ("%s no es un número real\n", trash);
					printf ("Introduce un número real: ");
				} /* while */
				m++;
				break;
			case 3:
				sort__ (a, &m);
				printf ("El vector ha sido ordenado\n");
				break;
			case 4:
				printf ("\n\tEl vector contiene %d números\n", m);
				for (i = 0; i < m; i++)
					printf ("\ta[%d] = %f\n", i, a[i]);
				break;
			case 0:
				printf ("Menú terminado\n");
				break;
			default:
				printf ("La opción %d no es válida\n", op);
		} /* switch */
	} /* while */
} /* menu */
