use <../robotis-scad/ollo/ollo_tools.scad>

include <../robotis-scad/ollo_segments/ollo_segments_def.scad>

module simple_wheel(diameter=2*OlloSegmentWidth, nLayer=1) {

  thickness = ollo_segment_thickness(nLayer);

  difference(){
    cylinder(h=thickness, d=diameter, center=true);
    crossOlloHoles(nLayer=nLayer);
  }
}

// Testing
echo("##########");
echo("In wheel_frame.scad");
echo("This file should not be included, use ''use <filemane>'' instead.");
echo("##########");

use <../robotis-scad/dynamixel/xl320.scad>

p = 1;
nLayer = 1;
if (p==1) {
  simple_wheel();
}
