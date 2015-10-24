Graphics Lib
############

..  include::   /references.inc

This graphics lib is a simple interface to freeglut_ and OpenGL_ intended to be
used by beginning C++ students. The library is not a full featured one, instead
it only provides a few primitives for drawing basic shapes on the screen. This
library is used to introduce C++ classes to students, and gives them something
fun to play with as they learn this basic concept.

The library is intended to be used by beginning students. Since students show
up on class with a variety of systems, installation instructions are provided
for these platforms:

    * PC running MinGW-w64_ from the command line

    * PC running Dev-C++

    * PC running code-blocks and MinGW-w64_

    * Macs running `Code::Blocks` and `Xcode` (`clang`)

    * Ubuntu_ Linux

See :ref:`installing-graphics-library` for details

GraphicsLib Class
*****************

The starting point for any class is a header file defining the interface to the
class. For this library, we will be providing a constructor so the student can
specify how big a graphics window to set up, and where it will be located on
the screen. Since we are using :term:`TDD` for this project, here is a test to
make sure this class can be accessed:

..  literalinclude::    code/test_init_1.cpp
    :linenos:

..  literalinclude::    code/GraphicsLib_1.h
    :linenos:


..  cpp:function:: string  GraphicsLib::getVersion( std::string version )

    Returns the current version of the library

..  vim:filetype=rst spell:

