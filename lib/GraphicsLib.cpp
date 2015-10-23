//! CS1 Graphics library using OpenGL and freeglut
#include <GraphicsLib.h>
#include <string>
using namespace std;

GraphicsLib::GraphicsLib() {
    /// default constructor
}

string GraphicsLib::getVersion( void ) {
    return version;
}
