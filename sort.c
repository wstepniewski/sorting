#include "sort.h"

void update(int *tab, int l, int p );
void sort(int *tab, int l, int p );


void insertionSort(int *tab, int nSize )
{
    for( int i = 1; i < nSize; i++ )
    {
        int x = tab[i];
        int j = i - 1;
        while( j >= 0 && x < tab[j] )
        {
            tab[j + 1] = tab[j--];
        }
        tab[j + 1] = x;
    }
}

void selectionSort( int *tab, int nSize )
{
    for( int i = 0; i < nSize - 1; i++ )
    {
        int k = i;
        int x = tab[i];
        for(int j = i + 1; j < nSize; j++ )
        {
            if( tab[j] < x )
            {
                k = j;
                x = tab[j];
            }
        }
        tab[k] = tab[i];
        tab[i] = x;
    }
}

void bubbleSort( int *tab, int nSize )
{
    for( int i = 0; i < nSize - 1; i++ )
    {
        for( int j = nSize - 1; j > i; j-- )
        {
            if( tab[j] < tab[j - 1] )
            {
                int temp = tab[j];
                tab[j] = tab[j - 1];
                tab[j - 1] = temp;
            }
        }
    }
}

void mixedSort( int *tab, int nSize )
{
    int l = 1;
    int p = nSize - 1;
    int k = nSize - 1;
    do
    {
        for( int j = p; j >= l; j-- )
        {
            if( tab[j - 1] > tab[j] )
            {
                int x = tab[j - 1];
                tab[j - 1] = tab[j];
                tab[j] = x;
                k = j;
            }
        }
        l = k + 1;
        for( int j = l; j <= p; j++ )
        {
            if( tab[j - 1] > tab[j] )
            {
                int x = tab[j - 1];
                tab[j - 1] = tab[j];
                tab[j] = x;
                k = j;
            }
        }
        p = k - 1;
    } while( l <= p );
}

void halfSort( int *tab, int nSize )
{
    for( int i = 0; i < nSize; i++ )
    {
        int x = tab[i];
        int l = 0;
        int p = i - 1;
        while( l <= p )
        {
            int m = ( l + p ) / 2;
            if( x < tab[m] )
            {
                p = m - 1;
            }
            else
            {
                l = m + 1;
            }
        }
        for( int j = i - 1; j >= l; j-- )
        {
            tab[j + 1] = tab[j];
        }
        tab[l] = x;
    }
}

void update(int *tab, int l, int p )
{
    if( l >= p ) return;
    int i = l;
    int j = 2 * i + 1;
    int temp = tab[i];
    while( j <= p )
    {
        if( j < p )
            if( tab[j] < tab[j + 1] ) j++;
        if( temp > tab[j] ) break;
        tab[i] = tab[j];
        i = j;
        j = 2 * i + 1;
    }
    tab[i] = temp;
}

void heapSort( int *tab, int nSize )
{
    for( int l = nSize / 2; l >= 0; l-- )
        update(tab, l, nSize - 1);
    for( int p = nSize - 1; p > 0; p-- )
    {
        int temp = tab[0];
        tab[0] = tab[p];
        tab[p] = temp;
        update(tab, 0, p - 1);
    }
}

void sort(int *tab, int l, int p )
{
    int i = l;
    int j = p;
    int x = tab[( l + p ) / 2];
    do
    {
        while( tab[i] < x ) i++;
        while( x < tab[j] ) j--;
        if( i <= j )
        {
            int w = tab[i];
            tab[i] = tab[j];
            tab[j] = w;
            i++;
            j--;
        }
    } while( i <= j );
    if( l < j ) sort(tab, l, j);
    if( p > i ) sort(tab, i, p);
}

void quickSort( int *tab, int nSize )
{
    sort(tab, 0, nSize - 1);
}