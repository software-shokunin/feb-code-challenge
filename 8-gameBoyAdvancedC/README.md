This is a solution to the [Software Shokunin Community Febuary Code Challenge](https://github.com/software-shokunin/feb-code-challenge)

> Write a program that adds two (or more) integers, without using any of the
> plus literal (+), the minus literal (-), the add method (or equivalent), the
> subtraction method (or equivalent), the sum method. The integers can be
> negative, zero or positive.

How to run it
=============

1. Download a Game Boy Advance emulator such as [Boycott Advance](http://www.bannister.org/software/ba.htm)
2. Open the file called `legendofadda.gba`

Instructions:
=============

To add two numbers together, use the keypad to set the numbers and then press enter

* Keypad UP = Increment first number.
* Keypad DOWN = Decrement first number.
* Keypad RIGHT = Increment second number.
* Keypad LEFT = Decrement second number.
* ENTER = Add the numbers together.

For example

To find out the answer to 3 + 1

1. Press Keypad UP three times
2. Press Keypad RIGHT once
3. Press ENTER


To find out the answer to 1,999,999,999 + 999,937

1. Press Keypad UP one billion, nine hundred ninety-nine million, nine hundred ninety-nine thousand, nine hundred ninety-nine times
2. Press Keypad RIGHT nine hundred ninety-nine thousand, nine hundred thirty-seven times
3. Press ENTER


Compiling (MAC)
==================

Download [devkitARMupdate.pl](https://sourceforge.net/projects/devkitpro/files/Automated%20Installer/)

    $ chmod 755 devkitARMupdate.pl
    $ ./devkitARMupdate.pl
    
Use the Makefile
    
    $ cd legendofadder
    $ make clean
    $ make
