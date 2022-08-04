#include <stdio.h>
#include <stdlib.h>

int main (int argc, char *argv[]) {

	int MAX_LOOP_A = atoi(argv[1]);
	int MAX_LOOP_B = atoi(argv[2]);
	int MAX_LOOP_C = atoi(argv[3]);

	int a, b, c;
	int k = 0;

	for ( a = 0; a < MAX_LOOP_A; a += 1 ) {
	for ( b = 0; b < MAX_LOOP_B; b += 1 ) {
	for ( c = 0; c < MAX_LOOP_C; c += 1 ) {

		k += 1;
		k += 1;
		k += 1;
		k += 1;
		k += 1;

	}}}

	return 0;
}
