..  _installing-homebrew:

Installing Homebrew on Macs
###########################

..  include::   /references.inc

If you do much development work on a Mac, you really should install Homebrew_
to manage adding development tools on your system. 

Prerequisites
*************

Before you can do much development work on a Mac, you need to install the
development tools for Mac

Xcode
=====

`Xcode` is a free development package providing compilers and other tools needed
for development on the Mac. This tool available for free from the Apple `App
Store`.

..  warning::

    This package is big. It takes a while to download it, so I recommend doing
    this somewhere where you can connect to a wired network. It will download
    faster that way!

After you get `Xcode` installed, open it up and let it complete a few
installation steps.

Command Line Tools 
==================

Once `Xcode` is installed, we will need to install the ``command line tools``.
Before starting this, note two items:

    * Your Mac OS version (click on the `Apple` icon, then `About this Mac`)

    * The version of `Xcode` you installed (It is displayed when you start the Xcode app.)

Once you have this information, start the  `Xcode` app, then select ``Xcode ->
Open Developer Tool -> More Developer Tools``. 

..  warning::
    
    You may need to register as a developer, but this is free, and you use your
    Apple ID for this. 

You will be asked to sign in as a developer for this step. Once you are signed
in, look for the ``Command Line Tools`` package that matches your operating
system version and the version of `Xcode` you installed. 

Installing Homebrew
*******************

Installing this  tool is simple. Just open up a Terminal session and enter this
command:

..  code-block:: text

    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Once this completes, you should run these commands to make sure your system is
read to "brew" the latest verisons of the software.

..  code-block:: text

    $ brew update
    $ brew doctor

You should see a message telling you the tool ir ready for use.

