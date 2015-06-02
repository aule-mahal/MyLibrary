#include <stdio.h>
#include <stdlib.h>

#define LCHILD(x) (x*2)+1
#define RCHILD(x) (x*2)+2
#define PARENT(x) x/2
#define IS_GREATER(x, y) x > y? x : y

//Type of data used
typedef int Elem;

typedef struct MinHeap{
	int size;
	int max;
	Elem *heap;
}MinHeap;

//Creates new minheap of size. Return NULL if failed.
MinHeap *CreateMinHeap(int size){
	MinHeap *mh = (Elem*)malloc(sizeof(MinHeap));
	Elem *ar = (Elem*)calloc(size, sizeof(Elem));
	if(ar == NULL || mh == NULL)
		return NULL;

	mh->size = 0;
	mh->max = size;
	mh->heap = ar;
	return mh;
}



//Insert element "x" in static heap "heap"
void PushMinHeap(MinHeap *heap, Elem x){

}

void MinHeapify(MinHeap *h, Elem x){
	Elem l = LCHILD(h->heap(x));
	Elem r = RCHILD(h->heap(x));
	if(l <= h->size && 
}