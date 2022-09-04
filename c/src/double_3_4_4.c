#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main (int argc, char *argv[]) {

	int MAX_LOOP_A = atoi(argv[1]);
	int MAX_LOOP_B = atoi(argv[2]);
	int MAX_LOOP_C = atoi(argv[3]);

	double a, b, c;
	double k = 0.0;

	srand((unsigned int)time(NULL));
	double x = rand();
	x = 1.0;

	for ( a = 0.0; a < MAX_LOOP_A; a += 1.0 ) {
	for ( b = 0.0; b < MAX_LOOP_B; b += 1.0 ) {
	for ( c = 0.0; c < MAX_LOOP_C; c += 1.0 ) {

		k += x;
		k -= x;
		k *= x;
		k /= x;

	}}}

	return 0;
}
