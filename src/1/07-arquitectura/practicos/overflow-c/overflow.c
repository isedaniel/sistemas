#include<stdio.h>

int main() {
	int i = 2147483647;
	printf("%d\n", i);
	printf("%d\n", ++i);
	return 0;
}

/* OUTPUT:
 *
 * 2147483647
 * -2147483648
 *
 */

