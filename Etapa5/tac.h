#ifndef TAC_H
#define TAC_H

#include "hash.h"

/*OP codes are defined here*/
#define TAC_NOP
#define TAC_SYMBOL
#define TAC_MOVE
#define TAC_ADD



typedef struct tac {
    int tac_code;
    HASHCELL *addr[3];
    struct tac next;
} TAC;

TAC *create_tac();
void print_tac_list(TAC *tc);
int append_list(TAC *dest, TAC *src);

char* make_label();
char* make_temp();


#endif
