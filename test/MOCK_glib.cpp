#include <iostream>
using namespace std;

#include <GraphicsLib.h>

//! GraphicsLib mock default constructor
GraphicsLib::GraphicsLib() {
    cout << "GraphicsLib::GraphicsLib()" << endl;
    version = "Mock Library";
}

string GraphicsLib::getVersion( void ) {
    return version;
}
