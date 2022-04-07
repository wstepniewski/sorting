#include <time.h>
#include "sort.h"
#include <stdlib.h>
#include <memory.h>
#include <stdio.h>
//#define _DEBUG_
#define N 50
#define X 10

typedef void ( *pF )( int*, int );
void PrintTab( int *tab, int nSize );
void InitTab( int *tab, int nSize );
int *CreateTab( int nSize );

int main( int argc, char *argv[] )
{
    if( argc != 2 )
    {
        printf( "Usage: %s <tab_size>", argv[0] );
        return 1;
    }

    int nSize = atoi( argv[1] );
    int *t = CreateTab( nSize );
    int *pTab = CreateTab( nSize );
    if( !t || !pTab )
    {
        perror( "allocation error" );
        return 2;
    }

    pF pSortTab[] = {insertionSort, selectionSort, bubbleSort, mixedSort, halfSort, heapSort, quickSort };
    const char *pSortName[] = { "insertionSort: ", "SelectionSort: ", "BubbleSort: ", "MixedSort: ", "HalfSort: ", "HeapSort: ", "QuickSort: " };

    int d = sizeof( pSortTab ) / sizeof( pF );
    int e = sizeof( pSortName ) / sizeof( char * );
    if( d != e )
    {
        perror( "different number of sorting functions and their names: pSortTab//pSortName" );
        return 4;
    }

    InitTab( t, nSize );
    printf( "nSize = %d\n\n\n", nSize );

    for( int i = 0; i < d; i++ )
    {
        memcpy( pTab, t, sizeof( int ) * nSize );
#ifdef _DEBUG_

        PrintTab( pTab, ( nSize < N ) ? nSize : N );
#endif
        clock_t start = clock();
        pSortTab[i]( pTab, nSize );
        clock_t stop = clock();
        double time = (double)(stop - start) / CLOCKS_PER_SEC;
        printf("%s%.3lfs\n\n", pSortName[i], time);
#ifdef _DEBUG_
        PrintTab( pTab, ( nSize < N ) ? nSize : N );
		printf( "\n" );
#endif
    }
    free( t );
    free( pTab );
    return 0;
}

void PrintTab( int *tab, int nSize )
{
    for( int i = 0; i < nSize; i++ )
    {
        printf( "%d ", *tab++ );
        if( (i + 1) % X == 0 ) printf( "\n" );
    }
    printf( "\n" );
}

void InitTab( int *tab, int nSize )
{
    srand( ( unsigned int ) time( NULL ) );
    for( int i = 0; i < nSize; i++ )
    {
        *tab++ = rand() % nSize + 1;
    }
}

int *CreateTab( int nSize )
{
    int *pTab = ( int* ) malloc( sizeof( int ) * nSize );
    if( pTab )
    {
        memset( pTab, 0, sizeof( int ) * nSize );
    }
    return pTab;
}
