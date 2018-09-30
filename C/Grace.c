#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define STR "#include <string.h>%c#include <stdio.h>%c#include <stdlib.h>%c%c#define STR %c%s%c%c%c#define BEANSOFCOOL %cVery cool beans my man%c;%c%c#define START int main(){%c%c%cFILE *file =fopen(%cGrace_kid.c%c,%cw%c);%c%c%cfprintf(file , STR, 10, 10, 10, 10, 34, STR, 34, 10, 10, 34, 34, 10, 10, 92, 10, 9, 34, 34, 34, 34, 92, 10, 9, 92, 10, 9, 92, 10, 10, 10, 10, 10, 10, 9, 10, 10);%c%c%cfclose(file);%c%c};%c%cSTART%c%c/*%c%ccool beans%c*/%c"

#define BEANSOFCOOL "Very cool beans my man";

#define START int main(){\
	FILE *file =fopen("Grace_kid.c","w");\
	fprintf(file , STR, 10, 10, 10, 10, 34, STR, 34, 10, 10, 34, 34, 10, 10, 92, 10, 9, 34, 34, 34, 34, 92, 10, 9, 92, 10, 9, 92, 10, 10, 10, 10, 10, 10, 9, 10, 10);\
	fclose(file);\
};

START

/*
	cool beans
*/
