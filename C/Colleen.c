#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void print_out(char *str){
	printf(str, 10, 10, 10, 10, 10, 9, 10, 9, 10, 10, 10, 10, 9, 10, 9, 9, 10,
	9, 10, 9, 10, 9, 34, str, 34, 10, 9, 10, 9, 10, 10, 10, 10, 9, 10, 10);
}

int main(){
	/*
		WOW WOW WOW MY FRIEND
	*/
	char *str = malloc(10000);
	strcpy(str, "#include <stdio.h>%c#include <stdlib.h>%c#include <string.h>%c%cvoid print_out(char *str){%c%cprintf(str, 10, 10, 10, 10, 10, 9, 10, 9, 10, 10, 10, 10, 9, 10, 9, 9, 10,%c%c9, 10, 9, 10, 9, 34, str, 34, 10, 9, 10, 9, 10, 10, 10, 10, 9, 10, 10);%c}%c%cint main(){%c%c/*%c%c%cWOW WOW WOW MY FRIEND%c%c*/%c%cchar *str = malloc(10000);%c%cstrcpy(str, %c%s%c);%c%cprint_out(str);%c%cfree(str);%c}%c%c/*%c%cI'm just a young lad, trying to make it, in America... AMERICA...%c*/%c");
	print_out(str);
	free(str);
}

/*
	I'm just a young lad, trying to make it, in America... AMERICA...
*/
