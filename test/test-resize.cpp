#include "catch.hpp"

#include <GraphicsLib.h>

TEST_CASE("Window is reshapedx") {
    GraphicsLib win;
    win.setSize( 100, 200 );
    win.setPosition( 25, 35 );
    REQUIRE( win.getScreenX() == 25);
    REQUIRE( win.getScreenY() == 35);
    REQUIRE( win.getScreenW() == 100);
    REQUIRE( win.getScreenH() == 200);
}

