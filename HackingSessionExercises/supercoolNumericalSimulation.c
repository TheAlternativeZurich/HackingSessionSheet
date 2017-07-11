/*
 * This program is a super awesome numerical simulation of some super duper
 * new ultra cool physcial thingy. And of course it takes forever to run,
 * so you have to run on the ultra modern amazingly new TheAlt super cluster.
 */

#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Starting calculation...\n");

    sleep(2);

    // some cleverly named variables
    int a, b, c;

    // initialize the variables
    a = 42;
    b = 0;
    c = 0;

    //actually do the calculation
    b = c++;
    b++;
    int temp = a;
    a = b + c;
    printf("Just so you know that i'm actually doing something i just calculated %d \n", a);

    sleep (2);

    c = temp+1;
    a = temp;
    int res = a;

    char result[3];
    result[2] = 0;

    if (res == 42) {
        // we are happy the calculation worked
        snprintf(result, 3, "%d", res);
    } else {
        result[0] = '4'; // correct the wrong calculation
        result[1] = '2';
    }

    printf("%s\n", result);

    // save the result in the res file
    FILE *fp;
    fp = fopen("AmazingResults.txt", "w+");
    fputs(result, fp);
    fclose(fp);

    // notify the user
    printf("the answer to everything has just been calculated\n");
    return 0;
}
