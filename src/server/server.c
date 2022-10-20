#include "fcgi_stdio.h"
#include <stdlib.h>

int main() {
    while(FCGI_Accept >= 0) {
        printf("Content-type: text/htmlrnStatus: 200 Hello World!");
    }
    return 0;
}