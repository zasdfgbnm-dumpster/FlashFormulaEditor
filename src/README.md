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
each class derived from FMESvgChar.


2.FMEUnit
---------

Because system's font library may not contain all characters that is needed
in formula, svg files are created for each character storing their appearance,
so that hte application won't rely on system's font library.Svgs are not
directedly used, what is directedly used is the classes derives from FMESvgChar
and FMEComposed. FMESvgChar and FMEComposed are all derived from FMEUnit.

In this application a formula is divided into several units. A unit can be a
character, a function(just an align of some characters), a fraction, a square
root, etc. For example, the formula "a = b + c/d + sin e" has eight units.
They are character "a", "=", "b", "+", frac "c/d", character "+", function "sin"
and character "e". In these units, "a", "=", "b", "+", "sin" and "e" are instance
of FMESvgChar,and frac "c/d" are instance of FMEComposed.

FMESvgChar is base of all units that are not composed of other units. Each class
derived from FMESvgChar have its svg file. In the example above, "a", "=", "b",
"+", "sin" and "e" are instance of FMESvgChar_a, FMESvgChar_equals, FMESvgChar_b,
FMESvgChar_plus, FMESvgChar_sin and FMESvgChar_e respectedly. 

FMEComposed are base class of units that are composed of other units, such as
fraction, square root, overset and so on.

In a formula, units doesn't stand close together. There is space between units.
Another problem is thiat units aren't aligned with top or bottom, they have their
own y cordinate.

To solve the first problem, we use another variables (actually getter and setter)
to represent the coordinate and size of a unit.FMEUnit has getter and setters called
"ax", "ay", "awidth" and "aheight" standing for "align x", "align y", "align width",
and "align height" respectively. The "align width" means the width it shows in a
formula. It can be either big or small than the real width. We type "ooo", then define
the left border of the second "o" as the mid point between the first "o" and the second.
Similarly the right border is defined as the distance between the second o and the third.
Other unit, for example "f", its left border is not defined using "fff" because "f" is
not symmetry. The left border of "f" is defined as the position of "o"'s right border in
"of" and right border is similarly defined. The align x of a unit is the x coordinate of
it's left border. The align width is the distance between left border and right border.
The top border, bottom border, align y and align height is defined similarly but it isn't
used right now so it is set to zero right now.

To solve the second problem, we use the variable "cy" and "cheight" standing for "center y"
and "center height" respectively. For unit "o", the align center is defined as the geometric
center. For unit other than "o", for example "f", the align center is defined as the align
center of "o" in "of". The center height is defined as the distance between the top boarder
and align center. The center y represents the y coordinate of align center.

Listeners are added when being constructed. These listeners decide objects' behavior.
It is used to handle the cursor of the formula.


3.FMEContainer
--------------

FMEContainer is a class that organize units in the same layer. When we say units
in the same layer,we mean the are in the same composed unit or they are all in
screen. For example, in "a + (b-c)/(sin d)" character "a" , "+" and fraction
"(b-c)/(sin d)" as an instance of FMEFraction are in the same layer. Also "b",
"-" and "c" are in the same layer. Function "sin" and character "e" are also in
the same layer. Each FMEComposed are composed of at list one FMEContainer and,
if needed, other display objects. For example FMEFraction are composed of the
FMEContainer of numerator, the FMEContainer of denominator and the fraction mid
line.

Each FMEContainer has a property called level. The level of a FMEContainer shows
the number of other FMEContainers outside this FMEContainer.

For example, in the formula "a + (b/c)/d" , there are five FMEContainers containing
"a + (b/c)/d","d","b/c","b" and "c" respectedly. The one containing the whole formula
belongs to screen. It's level is 0. The ones containing "b/c" or "d" belongs to the
FMEFraction "(b/c)/d". It's level is 1. The ones containing "b" or "c" belongs to the
FMEFraction "b/c". It's level is 2.

The FMEContainer has 


4.FMECursor
-----------

TODO:
introduce FMECursor


5.Things to be done
-------------------

Right now there are no comment in source code, which makes it unconvenient
to read. Comments should be added.