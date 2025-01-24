# rmp

rmp is my ByteBeat system to live code ByteBeat using Bash, Vim and PureData.

## Description

This is inspired and influenced by Rampcode by Gabriel Vinazza.

## Installation and usage

You need to have Pure Data installed with ELSE installed as well.
Also you'll need Vim.

- Download the folder an cd in into it.
- open the rmp.pd file in Pure Data.
- Go to your terminal.
-  Execute rmp.sh file and it will open up the cheat.rmp file in Vim. 

## Basic Guide

You have two main prefix for sending messages: vl an ex1. 
The vl prefix (volume) takes two parameters: 
- Volume in db (0=loud, -100=no sound)
- time in ms to reach the volume
The ex1 (expression1) prefix takes a bytebeat expression.

### Examples

- vl -10 2000; (-10db in 2000ms)
- ex1 t|t>>8; (bytebeat)

- Don't use spaces inside bytebeat expression.
- Evaluate code with F2 
- Every message must end with ;

## Contact Information

If you have any questions or suggestions, please contact Claudio Etol at claudiodonaggio83@gmail.com.
