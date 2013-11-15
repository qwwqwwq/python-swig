/* example.i */
%module example
%{
    /* Put header files here or function declarations like below */
    #include <string.h>
    #include <stdlib.h>
    extern void reverse(char* str);
%}
/* This tells SWIG to treat an double * argument with name 'OutValue' as
 an output value.  We'll append the value to the current result which 
 is guaranteed to be a List object by SWIG.
*/

%include "cstring.i"
%cstring_mutable(char* str);
void reverse(char* str);
