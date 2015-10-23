Project Makefile
################

..  include::   /references.inc

I show my students how to use Make_ in building their projects. Despite the
fact that many choose to use an IDE of some form, I feel it is important that
they know how to build applications from the command line, and since Make_ is
installed as part of the tool chain we use, I show them how to use that tool

However, advanced ``Makefiles`` can be scary for the beginner. An all-in-one file,
full of advanced Make_ features is hard to read, especially for beginners. For
that reason, I am presenting a ``Makefile`` for this project that has been factored
out into major parts, and I extract those parts into separate files that are
included in the main project ``Makefile``. Hopefully, this will help in seeing how
Make_ can be taught to build more complicated projects.

GraphicsLib Makefile
********************

The ``Makefile`` for this project needs to build three items:

    * A demo program showing how to use the library

    * The Graphics library itself

    * A test application that will run all tests on the library

I am separating the source files for each of these items into separate
directories, for better project management. I am also setting up the ``Makefile`` so
everything constructed by the build process is easily removed. This makes it
easier to keep things out of a GitHub_ repository that do not belong there.


