/**
 * \class GraphicsLib
 *
 * requires: freeglut, OpenGL
 */

#pragma once
#include <string>
using namespace std;

class GraphicsLib {
    private:
        string version; ///< current library version
    public:
        GraphicsLib();  ///< default constructor
        string getVersion( void );  /// returns library version
};

