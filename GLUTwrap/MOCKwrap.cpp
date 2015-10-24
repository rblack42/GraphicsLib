#include <iostream>
using namespace std;

#include "GLUTwrap.h"

void GWregisterHandlers(
    void( * display )( void ),
    void( * animate )( void ),
    void ( * keyboard )( unsigned char key, int x, int y )
) {
}

void GWinit( int *argc, char *argv[] ) {
}

void GWclear( void ) {
}

void GWrun( void ) {
}

void GWsetColor( ColorName color ) {
}

void GWdrawPolygon( int x[], int y[], int npoints, bool filled ) {
}

string  GWwindow_state ( void ) {
    return "";
}

