/**
 * GraphicsLib CS1 basic graphics library
 *
 * requires: freeglut, OpenGL
 */

#pragma once
#include <string>
using namespace std;

class GraphicsLib {
    private:
        string version;
    public:
        GraphicsLib();
        string getVersion( void );
};

