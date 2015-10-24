//! CS1 Graphics library using OpenGL and freeglut
//
#include <GraphicsLib.h>
#include <GLcolors.h>
#include <string>
using namespace std;


// constructors -------------------------------------------
GraphicsLib::GraphicsLib() {
    /// default constructor
    version = VERSION;
}

GraphicsLib::GraphicsLib( int x, int y, int w, int h ) {
    screenX = x;
    screenY = y;
    screenW = w;
    screenH = h;
}

// accessor methods ---------------------------------------
string GraphicsLib::getVersion( void ) {
    return version;
}

int GraphicsLib::getScreenX( void ) {
    return screenX;
}

int GraphicsLib::getScreenY( void ) {
    return screenY;
}

int GraphicsLib::getScreenW( void ) {
    return screenW;
}

int GraphicsLib::getScreenH( void ) {
    return screenH;
}

// mutators --------------------------------------------
void GraphicsLib::setSize( int width, int height ) {
    screenW = width;
    screenH = height;
}

void GraphicsLib::setPosition( int x, int y ) {
    screenX = x;
    screenY = y;
}

void GraphicsLib::clear( void ) {
}

void GraphicsLib::setColor( ColorName color ) {
}



