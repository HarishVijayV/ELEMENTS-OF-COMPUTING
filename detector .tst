// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/detector.tst


load detector.hdl,
output-file detector.out,
compare-to detector.cmp,
output-list a%B1.16.1 out;

set a %B0000000000000000,
eval,
output;

set a %B0011000000000000,
eval,
output;

//normal case with 0110

set a %B0000000000000110,
eval,
output;

//overlapping case

set a  %B0000000000110110,
eval,
output;

set a %B0010000000100000,
eval,
output;

set a %B0000111100000000,
eval,
output;

//absence of 0110 (case)

set a %B000000010000000,
eval,
output;
