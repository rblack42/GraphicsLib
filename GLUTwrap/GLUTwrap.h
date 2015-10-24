// Glut Wrapper for GraphicsLib
//    these routines interface with GLUT directly
#include <string>
using namespace std;

#include <GLcolors.h>

void GWregisterHandlers(
    void( * display )( void ),
    void( * animate )( void ),
    void ( * keyboard )( unsigned char key )
);

void GWinit( int argc, char *argv[] );

void GWclear( void );

void GWrun( void );

void GWsetColor( ColorName color );

void GWdrawPolygon( int x[], int y[], int npoints, bool filled );

string  GWwindow_state ( void );
