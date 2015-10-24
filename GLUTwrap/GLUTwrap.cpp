#include "GLUTwrap.h"

#ifdef __APPLE__
    #include <GLUT/glut.h>
#else
    #include <GL/glut.h>
#endif

#include <sstream>
using namespace std;

// default window parameters

const int WINDOW_W = 640;
const int WINDOW_H = 480;
const int WINDOW_X = 50;
const int WINDOW_Y = 50;

void GWregisterHandlers(
    void( * display )( void ),
    void( * animate )( void ),
    void ( * keyboard )( unsigned char key, int x, int y )
) {
    glutDisplayFunc( display );
    glutKeyboardFunc( keyboard );
    glutIdleFunc( animate );
}

void GWinit( int *argc, char *argv[] ) {
    glutInitWindowSize( WINDOW_W, WINDOW_H);
    glutInitWindowPosition( WINDOW_X, WINDOW_Y );
    glutInitDisplayMode( GLUT_RGBA | GLUT_SINGLE);
    glutInit(argc, argv);
    glutCreateWindow("COSC 1337 Graphics Project");
    glClearColor( 1.0, 1.0, 1.0, 0.0 ); // white
    glLoadIdentity();
    glOrtho( 0, WINDOW_W, 0, WINDOW_H, 1, -1 );
}

void GWclear( void ) {
    glClear( GL_COLOR_BUFFER_BIT );
}

void GWrun( void ) {
    glutMainLoop();
}

void GWsetColor( ColorName color ) {
}

void GWdrawPolygon( int x[], int y[], int npoints, bool filled ) {
}

string  GWwindow_state ( void ) {
    int x = glutGet(GLUT_WINDOW_X);
    int y = glutGet(GLUT_WINDOW_Y);
    int w = glutGet(GLUT_WINDOW_WIDTH);
    int h = glutGet(GLUT_WINDOW_HEIGHT);
    ostringstream  msg;
    msg <<  w << "x" << h << "+" << x << "+" << y;
    return msg.str();
}

