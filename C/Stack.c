#include "Stack.h"

item *CreateItem(int X){
    item *new = (item*)malloc(sizeof(item));
    if(new == NULL)
        return NULL;
    
    new->elem = X;
    new->nxt = NULL;
    return new;
    }

stack *CreateStack(){
    stack *new = (stack*)malloc(sizeof(stack));
    if(new == NULL)
        return NULL;
    
    new->size = 0;
    new->top = NULL;
    return new;
}

int Push(stack *S, int X){
    if(S == NULL)
        return INVALID;
    
    item *new = CreateItem(X);
    new->nxt = S->top;
    S->top = new;
    S->size++;
    return SUCCESS;
    }

int Size(stack *S){
    if(S == NULL)
        return INVALID;
    return S->size;
    }

int Top(stack *S){
    if(S == NULL)
        return INVALID;
    if(S->size > 0)
        return S->top->elem;
    else
        return EMPTY_STACK;
    }

int Pop(stack *S){
    if(S == NULL)
        return INVALID;
    
    if(S->size == 0)
        return FAIL;
    
    item *aux;
    aux = S->top;
    S->top = S->top->nxt;
    S->size--;
    free(aux);
    return SUCCESS;
    }

void DestroyStack(stack *S){
    while(S->size > 0){
        Pop(S);
    }
    free(S);
    }
