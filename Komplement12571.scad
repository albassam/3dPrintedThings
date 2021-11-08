// Komplement 12571
$fn = 50;
difference() {
difference() {
linear_extrude(height=4.5, convexity = 0, twist = 0) {
hull() {
translate([-31.75,-12,0])
square(size=[63.3,24]);
translate([31.75,0,0])
circle(d=24);
translate([-31.75,0,0])
circle(d=24);

translate([-9,-38-11,0])
square(size=[40-22,22]);
translate([11,-38,0])
circle(d=22);
translate([-11,-38,0])
circle(d=22);
}
}
translate([31.75,0,0])
cylinder(d=6,h=5);
}
translate([-31.75,0,0])
cylinder(d=6,h=5);

}
difference() {
linear_extrude(height=17, convexity = 0, twist = 0) {
 hull() {
translate([-9,-38-11,0])
square(size=[40-22,22]);
translate([11,-38,0])
circle(d=27);
translate([-11,-38,0])
circle(d=27);
}
}
translate([0,0,3])
linear_extrude(height=14, convexity = 0, twist = 0) {
  hull() {
translate([-9,-38-9,0])
square(size=[40-22,19]);
translate([11,-38,0])
circle(d=19);
translate([-11,-38,0])
circle(d=19);
  }
      }
}