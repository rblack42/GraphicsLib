#include "catch.hpp"

#include <GraphicsLib.h>

TEST_CASE("Library exists") {
    GraphicsLib win;

    REQUIRE( win.getVersion()  ==  "Mock Library");
}

