#include <stdio.h>
#include <stdlib.h>
#include <time.h>
/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
int n;
srand(time(0));     /* Seed rand with current time */
n = rand() - RAND_MAX / 2; /* Assign a random number to n */
printf("%d ", n);   /* Print the random number */
if (n > 0)
printf("is positive\n");
else if (n == 0)
printf("is zero\n");
else
printf("is negative\n");
return (0);
}
