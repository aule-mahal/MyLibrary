#ifndef STACK_H
#define STACK_H
#include <stdlib.h>

#define SUCCESS 1
#define FAIL 	0
#define ERROR	-1
#define INVALID	-2
#define EMPTY_STACK	-100

typedef struct item{
    int elem;
    struct item *nxt;
} item;
    
typedef struct stack{
    int size;
    item *top;
} stack;


item *CreateItem(int X);

stack *CreateStack();

int Push(stack *S, int X);

int Size(stack *S);

//Retorna mensagem de erro apenas e desempilha topo
int Pop(stack *S);

//Retorna topo da pilha
int Top(stack *S);

void DestroyStack(stack *S);

#endif
