# RMP

RMP is a ByteBeat system that allows you to live code and evaluate ByteBeat expressions using Bash, Vim and PureData.

## Description

This is inspired and influenced by [Rampcode](https://github.com/gabochi/rampcode) by Gabriel Vinazza aka Gabo. It is also, at least in the way expressions are written, based on an "older" version of rampcode, before the beautiful but unusual and somehow scary Forth-like [RPN](https://en.m.wikipedia.org/wiki/Reverse_Polish_notation) (Reversed Polish Notation) was adopted. :)

## Installation and usage

You need to have Pure Data and Vim installed on your machine.

- Download the folder an cd into it.
- Open the rmp.pd file in Pure Data.
- Go to your terminal.
- Execute rmp.sh (./rmp.sh) file and it will open up the cheat.rmp file in Vim. In case you'd like to start from another file of your choice execute ./rmp.sh your_file_name.rmp and it will create a file in your working directory. 

## Basic Guide

You have two main "operators": vl and p1 

The vl operator (volume) takes two parameters: 
- Volume in db (0=loud, -100=no sound)
- Time in ms to reach the target volume

The p1 operator takes a float or an integer and controls the initial rate of the ramp.

Everything after an # symbol is a comment. 


### Examples

- vl -10 2000; (get to -10db in 2000ms)
- t|t>>8; (bytebeat expression)

### IMPORTANT:

- Evaluate code with F2 
- Every message must end with ;
- Remember, bytebeats can get very very loud. Always control the main volume and you can always go to no sound evaluating this line: vl -100 10; (keep this line at hand!!!)

The cheat.rmp file already has a collection of expressions that I hope will help you start exploring bytebeat.

## MORE ON BYTEBEAT

### Historical Background:

Bytebeat is a technique of algorithmic music that emerged from experiments by Finnish programmer Ville-Matias Heikkilä (aka Viznut). Although the concept could have been explored in the early 1950s, it gained popularity around 2011 when Viznut discovered that simple C programs could generate musical outputs when interpreted as raw audio data. This accidental discovery sparked a collaborative movement within the demoscene community, leading to the creation of a new electronic music subgenre.
[link](https://cult.honeypot.io/reads/hack-your-way-to-music/)

### Technological Overview:

Bytebeat music is generated from short programs, typically one line of code, which produce audio as a function of time. These programs output raw PCM (Pulse Code Modulation) audio data, often using unsigned 8-bit integers at an 8 kHz sampling rate. The simplicity and minimalism of bytebeat allow for creative manipulation of waveforms using mathematical and bitwise operations, making it an intriguing form of digital music creation.

### Bytebeat Interpreters and Learning Resources:

Here are some key resources for exploring bytebeat:
- Greggman’s HTML5 Bytebeat Player: A web-based tool for creating and experimenting with bytebeats directly in your browser [link](https://greggman.com/downloads/examples/html5bytebeat/html5bytebeat.html)
- The Absolute Beginner's Guide to Coding Bytebeats: A comprehensive PDF guide for newcomers to bytebeat programming [link](https://nightmachines.tv/downloads/Bytebeats_Beginners_Guide_TTNM_v1-5.pdf)
- ICMC Workshop on Bytebeat: Resources and lessons from a workshop on performing and teaching with bytebeat [link](https://www.youtube.com/watch?v=FQHQpSyd7Cw&list=PLe4ojWnlX92OOrDhM8_yGIP9LNqSE_gR2)
- Rampcode (bytebeat in Pure data... yes RMP is actually based on this...) [link](https://github.com/gabochi/rampcode)
- An article on bytebeat by Gabriel Vinazza published on [TopLap](https://blog.toplap.org/) [link](https://blog.toplap.org/2020/02/17/bytebeat-floatbeat-rampcode/)

## Contact Information 

If you have any questions or suggestions, please contact Claudio Donaggio (Etol) at claudiodonaggio83@gmail.com.
