#include "catch.hpp"

#include <GraphicsLib.h>

TEST_CASE("Constructor sets version") {
    GraphicsLib win;

    REQUIRE( win.getVersion() == VERSION);
}

TEST_CASE("Initilzing construcor sets values") {
    GraphicsLib win( 10,20,30,40 );

    REQUIRE( win.getScreenX() == 10 );
    REQUIRE( win.getScreenY() == 20 );
    REQUIRE( win.getScreenW() == 30 );
    REQUIRE( win.getScreenH() == 40 );
}
