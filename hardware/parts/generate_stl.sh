#!/bin/bash

# this fisrt and only argument is the definition of the stl export, it defines the $fn variable in openscad
if [ -z "$1" ]
  then
    fn=128
    echo "No argument supplied -> fn=$fn"
  else
    fn=$1
fi

echo "Generating parts with fn=$fn"
scadArg="\$fn=$fn"

# create the stl folder if it does not exist
mkdir -p stl;

# should be automated for all file in the folder
echo "Generating 4wheels_base..."
openscad -o stl/4wheels_base.stl 4wheels_base.scad -D $scadArg

# should be automated for all file in the folder
echo "Generating simple_wheel..."
openscad -o stl/simple_wheel.stl simple_wheel.scad -D $scadArg

# should be automated for all file in the folder
echo "Generating ollo_to_lego_axle..."
openscad -o stl/ollo_to_lego_axle.stl ollo_to_lego_axle.scad -D $scadArg
