#include <string.h>
#include <stdlib.h>

void reverse(char* str){
    int length;
    int i;
    char tmp;
    length = strlen(str);
    for( i=0; i<(length/2); i++) {
	tmp = str[i];
	str[i] = str[(length - i - 1)];
	str[(length - i - 1)] = tmp;
    };
};
