The Structor of Flash Formula Editor
====================================

This README file introduces the structure of this application and how
this application implemented. This file aims to make you have a general
idea of how this application implemented.

1.Introduction
--------------

The bacic classes this application use is FMEUnit, FMEScreen,FMEContainer
and FMECursor. All classes' name are strarted with string "FME", which
means Formula Editor. All of these classes are derived from Sprite. That
means these classes will be added to display list to display on the screen
and listen to mouse events.
There are four directories(or say package in actionscript) in this src folder,
they are button_icon, FMEUnits, icon_button_skin and svgs. The button_icon
stores buttons' icons of this application, they are all fxg files. FMEUnits
stores classes derived from FMEUnit. The icon_button_skin folder stores
skin files of these buttons with icon. The svg folder stores the svg file for
each class derived from FMESvgChar


2.FMEUnit
---------

TODO:
introduce FMEUnit


3.FMEContainer
--------------

TODO:
introduce FMEContainer


4.FMECursor
-----------

TODO:
introduce FMECursor


5.Things to be done
-------------------

Right now there are no comment in source code, which makes it unconvenient
to read. Comments should be added.