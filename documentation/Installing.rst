..  _installing-graphics-library:

Installing GraphLib
###################

..  include::   /references.inc

Getting this graphics library running requires downloading a few files, and
copying them into directories where your compiler is installed. Depending on what system you have the exact
files and locations will differ.

..  warning::

    You may need administrator privileges to set things up if the compiler is
    installed in a protected directory on your system.

Windows PC
**********

If you are running on a Windows system, you will need to download  the
freeglut_ library from this link:

    * `freeglut-MinGW-3.0.0-1.mp.zip
      <http://files.transmissionzero.co.uk/software/development/GLUT/freeglut-MinGW.zip>`_

Unpack this archive using ``Windows Explorer``. You will find  the following
directories in this archive:

..  code-block::    text

    freeglut
       |
       +- bin/
       |
       +- include/
       |
       +- lib/

You will need to copy these directories tot he following locations:

Mac
***

I am assuming you are using Homebrew_ to manage adding development tools on
your system. See :ref:`installing-homebrew` if this package is not on your
system.

Here is how you install the freeglut_ library on your system:

..  code-block:: text

    $ brew install freeglut


Linux
*****

..  code-block:: text

    $ sudo apt-get install freeglut


..  vim:filetype=rst spell:

