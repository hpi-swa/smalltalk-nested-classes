# Module System for Squeak/Smalltalk

[![Build Status](https://travis-ci.org/HPI-SWA-Lab/smalltalk-nested-classes.svg?branch=master)](https://travis-ci.org/HPI-SWA-Lab/smalltalk-nested-classes)
[![SqueakJS](https://img.shields.io/badge/SqueakJS-Try%20now-blue.svg)](https://bertfreudenberg.github.io/SqueakJS/run/#url=https://raw.githubusercontent.com/HPI-SWA-Lab/smalltalk-nested-classes/images&files=[ModuleSystem.1.image,ModuleSystem.1.changes])

This is an experimental module system for [Squeak](http://squeak.org/). It is inspired by [Newspeak](http://www.newspeaklanguage.org/) and uses nested classes as a central concept.

Nested classes are members of their enclosing classes and they can be declared on the instance-side and on the class-side. Instance-side nested classes make it possible to implement mixin modules in the module system itself, without further modifications to the virtual machine. Class-side nested classes are typically used as namespaces for hierarchical decomposition.

The module system GUI is written in [Vivide](https://github.com/hpi-swa/vivide).
![Screenshot](https://raw.githubusercontent.com/HPI-SWA-Lab/smalltalk-nested-classes/images/screenshot_squeak.png?token=ACQlWIxyVsvZfqZlN7O75MpbeySAg1cDks5V3vY_wA%3D%3D)

There is no central module repository yet, but some modules are stored in the [`modules`](https://github.com/HPI-SWA-Lab/smalltalk-nested-classes/tree/master/modules) directory.

## Run with SqueakJS
You can run the module system with a prepared image in your browser. However, we do not update that image very often. And keep in mind that running this image in your browser is pretty slow! You can also download the image to your computer and run it with your favorite Smalltalk VM (e.g. [Cog](http://www.mirandabanda.org/files/Cog/VM/)).

[Try the module system in your browser.](https://bertfreudenberg.github.io/SqueakJS/run/#url=https://raw.githubusercontent.com/HPI-SWA-Lab/smalltalk-nested-classes/images&files=[ModuleSystem.1.image,ModuleSystem.1.changes])

## Install in your own image
You can find installation instructions in the [Wiki](https://github.com/HPI-SWA-Lab/smalltalk-nested-classes/wiki).
