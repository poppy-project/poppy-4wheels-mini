include <../robotis-scad/ollo_segments/ollo_segments_def.scad>

use <../robotis-scad/ollo/ollo_tools.scad>
use <../lego-scad/lego_axle.scad>

module ollo_to_lego_axle(axleLength, diameter=OlloSegmentWidth, nLayer=1) {

  thickness = ollo_segment_thickness(nLayer);

  difference(){
    cylinder(h=thickness, d=diameter, center=true);
    crossOlloHoles(nLayer=nLayer);
  }
  cylinder(h=thickness, d=OlloOutDiameter, center=true);

  rotate([0,0,45])
    lego_axle(axleLength);
}

// Testing
echo("##########");
echo("In ollo_to_lego_axle.scad");
echo("This file should not be included, use ''use <filemane>'' instead.");
echo("##########");

use <../robotis-scad/dynamixel/xl320.scad>

p = 1;
nLayer = 1;
if (p==1) {
  ollo_to_lego_axle(10);
}
