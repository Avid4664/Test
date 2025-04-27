#include <stdio.h>
#include "add.h"
#include "sub.h"

int main() {
    int a = 5, b = 3;
    printf("Sum: %d\n", add(a, b));
    printf("Sub: %d\n", sub(a, b));
    return 0;
}
