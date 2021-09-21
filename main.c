/*
** EPITECH PROJECT, 2021
** B-ASM-400-NCE-4-1-asmminilibc-clement1.berard
** File description:
** main
*/

#include <string.h>
#include <stdio.h>

#define SIZE 40

int main(int ac, char *av)
{
    /// STRLEN ///
    // char *str = "hello";
    // printf("Strlen vaut : %i\n", strlen(str));
    // return (0);

    /// STRCHR ///
    // char buffer1[SIZE] = "computer program";
    // char *ptr;
    // int ch = 'p';
    // ptr = strchr(buffer1, ch);
    // printf("The first occurrence of %c in '%s' is '%s'\n", ch, buffer1, ptr);
    // return (0);

    /// MEMSET ///
    // char str[50] = "GeeksForGeeks is for programming geeks."; 
    // printf("\nBefore memset(): %s\n", str); 
    // memset(str + 13, '.', 8*sizeof(char)); 
    // printf("After memset():  %s\n", str); 
    // return 0;

    /// MEMCPY ///
    // char str1[] = "Geeks";   
    // char str2[] = "Quiz";   
    // puts("str1 before memcpy "); 
    // puts(str1); 
    // memcpy (str1, str2, sizeof(str2)); 
    // puts("\nstr1 after memcpy "); 
    // puts(str1); 
    // return 0; 

    /// STRCMP ///
    // char str1[] = "abcd", str2[] = "abCd", str3[] = "abcd";
    // int result;
    // result = strcmp(str1, str2);
    // printf("strcmp(str1, str2) = %d\n", result);
    // result = strcmp(str1, str3);
    // printf("strcmp(str1, str3) = %d\n", result);
    // return 0;

    /// STRNCMP ///
    // int result;
    // char example1[50];
    // char example2[50];
    // strcpy(example1, "C strncmp at TechOnTheNet.co");
    // strcpy(example2, "C strncmp is a string function");
    // result = strncmp(example1, example2, 11);
    // if (result == 0) printf("Strings are the same\n");
    // if (result < 0) printf("Second string is less than the first\n");
    // return 0;

    /// MEMMOVE ///
    // char str1[] = "Geeks";
    // char str2[] = "Quiz";
    // puts("str1 before memmove ");
    // puts(str1);
    // memmove(str1, str2, sizeof(str2));
    // puts("\nstr1 after memmove ");
    // puts(str1);
    // return 0;

    /// STRSTR ///
    // char s1[] = "GeeksforGeeks"; 
    // char s2[] = "for"; 
    // char* p; 
    // p = strstr(s1, s2);  
    // if (p) { 
    //     printf("String found\n"); 
    //     printf("First occurrence of string '%s' in '%s' is '%s'", s2, s1, p); 
    // } else
    //     printf("String not found\n"); 
    // return 0; 

    /// STRPBRK ///
    // char s1[] = "geeksforgeeks"; 
    // char s2[] = "app"; 
    // char s3[] = "kite"; 
    // char *r, *t; 
    // r = strpbrk(s1, s2);  
    // if (r != 0) 
    //     printf("First matching character: %c\n", *r); 
    // else
    //     printf("Character not found"); 
    // t = strpbrk(s1, s3); 
    // if (t != 0) 
    //     printf("\nFirst matching character: %c\n", *t); 
    // else
    //     printf("Character not found"); 
    // return (0); 
}


///STRCASECMP ///
// void test(const char *s1, const char *s2)
// {
//     printf("%s v. %s = ",s1,s2);
//     if( strcasecmp(s1,s2)==0 )
//         puts("match");
//     else
//         puts("no match");
// }

// int main()
// {
//     char string1[] = "I drink coffee";
//     char string2[] = "I DRINK COFFEE";
//     char string3[] = "I drink tea";

//     test(string1,string1);
//     test(string1,string2);
//     test(string1,string3);

//     return(0);
// }