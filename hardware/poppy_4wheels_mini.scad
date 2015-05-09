include <poppy_4wheels_mini_def.scad>

include <robotis-scad/dynamixel/xl320_def.scad>

use <robotis-scad/dynamixel/xl320.scad>

use <robotis-scad/specific_frames/4wheels_base_frame.scad>
use <robotis-scad/specific_frames/wheel_tools.scad>

use <MCAD/rotate.scad>;

module poppy_4wheels_mini(wheelType="simple") {
  4wheels_base_frame(motorWidthSpacing=4WheelsFrameWidthSpacing, motorLengthSpacing=4WheelsFrameLengthSpacing, middleBarWidth=4WheelsFrameMiddleBarWidth, nLayer=1);
  translate([4WheelsFrameWidthSpacing/2,4WheelsFrameLengthSpacing/2+1.5*OlloSpacing,-MotorWidth/2])
    rotate([0,90,0])
      add_wheel(wheelType);
  translate([-4WheelsFrameWidthSpacing/2,4WheelsFrameLengthSpacing/2+1.5*OlloSpacing,-MotorWidth/2])
    rotate([0,-90,0])
      add_wheel(wheelType);
  translate([4WheelsFrameWidthSpacing/2,-4WheelsFrameLengthSpacing/2-1.5*OlloSpacing,-MotorWidth/2])
    rotate([0,-90,180])
      add_wheel(wheelType);
  translate([-4WheelsFrameWidthSpacing/2,-4WheelsFrameLengthSpacing/2-1.5*OlloSpacing,-MotorWidth/2])
    rotate([0,90,180])
      add_wheel(wheelType);
}

// Testing
echo("##########");
echo("In poppy_4wheels_mini.scad");
echo("This file should not be included, use ''use <filemane>'' instead.");
echo("##########");

p = 1;
nLayer = 1;
if (p==1) {
  poppy_4wheels_mini("simple");

  translate([2*4WheelsFrameWidthSpacing,0,0])
    poppy_4wheels_mini("lego");
}
