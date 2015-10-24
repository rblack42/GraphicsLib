/**
 * \class GraphicsLib
 *
 * requires: freeglut, OpenGL
 */

#pragma once
#include <string>
using namespace std;
#include "version.h"
#include "GLcolors.h"

class GraphicsLib {
    private:
        string version; ///< current library version

        int screenX;    ///< initial screen X 
        int screenY;    ///< initial screen Y 
        int screenW;    ///< initial screen W 
        int screenH;    ///< initial screen H 
    public:
        // constructors
        GraphicsLib();  ///< default constructor
        GraphicsLib( int x, int y, int w, int h );  ///< initializing constructor`

        // accessors
        string getVersion( void );  ///< returns library version
        int getScreenX( void );     ///< returns current screen X
        int getScreenY( void );     ///< returns current screen Y
        int getScreenW( void );     ///< returns current screen W
        int getScreenH( void );     ///< returns current screen H

        // mutators
        void setSize( int width, int height );   ///< set size to width, height
        void setPosition( int x, int y );        ///< set position to x,y
        void clear( void );                      ///< clear screen
        void setColor( ColorName color );        ///< set drawing color
};

