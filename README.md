# RMP

RMP is a ByteBeat system that allows you to live code and evaluate ByteBeat expressions using Bash, Vim and PureData.

## Description

This is inspired and influenced by [Rampcode](https://github.com/gabochi/rampcode) by Gabriel Vinazza aka Gabo, it gives you more control over the overall volume and, for the moment, a way to pan the signal over the stereo field. It is also, at least in the way expressions are written, based on an "older" version of rampcode, before the beautiful but unusual and somehow scary Forth-like [RPN](https://en.m.wikipedia.org/wiki/Reverse_Polish_notation) (Reversed Polish Notation) was adopted. :)

## Installation and usage

You need to have Pure Data installed with [ELSE](https://github.com/porres/pd-else) installed as well.
Also you'll need Vim.

- Download the folder an cd in into it.
- Open the rmp.pd file in Pure Data.
- Go to your terminal.
- Execute rmp.sh (./rmp.sh) file and it will open up the cheat.rmp file in Vim. 

## Basic Guide

You have two main prefix for sending messages: vl and p1 
The vl prefix (volume) takes two parameters: 
- Volume in db (0=loud, -100=no sound)
- Time in ms to reach the target volume

The p1 operator takes a float and controls the initial rate of the ramp


### Examples

- vl -10 2000; (-10db in 2000ms)
- t|t>>8; (bytebeat expression)

- Don't use spaces inside bytebeat expression.
- Evaluate code with F2 
- Every message must end with ;

The cheat.rmp file already has a collection of expressions that I hope will help you start exploring bytebeat.

## Contact Information

If you have any questions or suggestions, please contact Claudio Etol at claudiodonaggio83@gmail.com.
