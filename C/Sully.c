#include <string.h>
#include <stdio.h>
#include <stdlib.h>

extern const char *__progname;

int i = 5;

#define STR "#include <string.h>%c#include <stdio.h>%c#include <stdlib.h>%c%cextern const char *__progname;%c%cint i = %d;%c%c#define STR %c%s%c%c%cint main(){%c%cchar name[100];%c%cif (i <= 0)%c%c%creturn 0;%c%cif (strcmp(__progname, %cSully%c))%c%c%ci--;%c%csprintf(name,%cSully_%%d.c%c,i);%c%cFILE *file =fopen(name,%cw%c);%c%cfprintf(file , STR, 10, 10, 10, 10, 10, 10, i, 10, 10, 34, STR, 34, 10,%c%c10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 34, 34, 10, 9, 9, 10, 9, 34, 34, 10,%c%c9, 34, 34, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 10,%c%c9, 34, 34, 10, 9, 10, 10);%c%cfclose(file);%c%csprintf(name,%cgcc Sully_%%d.c -o Sully_%%d%c, i, i);%c%csystem(name);%c%csprintf(name,%c./Sully_%%d%c, i);%c%csystem(name);%c}%c"

int main(){
	char name[100];
	if (i <= 0)
		return 0;
	if (strcmp(__progname, "Sully"))
		i--;
	sprintf(name,"Sully_%d.c",i);
	FILE *file =fopen(name,"w");
	fprintf(file , STR, 10, 10, 10, 10, 10, 10, i, 10, 10, 34, STR, 34, 10,
	10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 34, 34, 10, 9, 9, 10, 9, 34, 34, 10,
	9, 34, 34, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 10,
	9, 34, 34, 10, 9, 10, 10);
	fclose(file);
	sprintf(name,"gcc Sully_%d.c -o Sully_%d", i, i);
	system(name);
	sprintf(name,"./Sully_%d", i);
	system(name);
}
