# Module System for Squeak Smalltalk [![Build Status](https://travis-ci.org/matthias-springer/smalltalk-nested-classes.svg?branch=master)](https://travis-ci.org/matthias-springer/smalltalk-nested-classes)

This is an experimental module system for [Squeak](http://squeak.org/). It is inspired by [Newspeak](http://www.newspeaklanguage.org/) and uses nested classes as a central concepts.

Nested classes are members of their enclosing classes and they can be declared on the instance-side and on the class-side. Instance-side nested classes make it possible to implement mixin modules in the module system itself, without further modifications to the virtual machine. Class-side nested classes are typically used as namespaces for hierarchical decomposition.

The module system GUI is written in [Vivide](https://github.com/hpi-swa/vivide).
![Screenshot](https://raw.githubusercontent.com/matthias-springer/smalltalk-nested-classes/images/screenshot_squeak.png)

There is no central module repository yet, but some modules are stored in the "modules" directory.

## Run with SqueakJS
You can run the module system with a prepared image in your browser. However, we do not update that image very often. And keep in mind that running this image in your browser is pretty slow! You also download the image to your computer and run it with a Smalltalk VM (e.g. COG).
[Run prepared image](https://bertfreudenberg.github.io/SqueakJS/run/#url=https://raw.githubusercontent.com/matthias-springer/smalltalk-nested-classes/images&files=[ModuleSystem.1.image,ModuleSystem.1.changes])

## Install in your own image
Follow the installation instructions in the [Wiki](https://github.com/matthias-springer/smalltalk-nested-classes/wiki).
