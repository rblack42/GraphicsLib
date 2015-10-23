#include "catch.hpp"

#include <GraphicsLib.h>

TEST_CASE("Glut is initialized") {
    GraphicsLib win;

    REQUIRE( win.getVersion() == "Mock Library");
}

