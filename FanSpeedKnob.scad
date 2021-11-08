// fan speed knob
$fn = 100;
knob_radius = 15;
knob_width = 10;
wt = 2;

neck_length = 25;
neck_outer_radius = 5.5;
neck_inner_radius = 5.5-wt;


module knob() {
   difference() {
     cylinder(r=knob_radius, h=knob_width); 
     cylinder(r=knob_radius-wt, h=knob_width-wt);
   }
   translate([-knob_radius,-wt/2,0])
   cube([knob_radius*2,wt, knob_width]);
   rotate([0,0,90]) 
   translate([-knob_radius,-wt/2,0])
   cube([knob_radius*2,wt, knob_width]);
}

module neck() {
   difference() {
     cylinder(r=neck_outer_radius, h=neck_length); 
     cylinder(r=neck_inner_radius, h=neck_length-wt);
   }
   shaft_len1 = 8;
   shaft_start = 7;
   translate([neck_inner_radius-1,-neck_inner_radius,shaft_start])
   cube([1.5,neck_inner_radius*2,shaft_len1]);
   translate([neck_inner_radius-1.5,-neck_inner_radius/2,shaft_start])
   cube([0.5,0.5,shaft_len1]);
    translate([neck_inner_radius-1.5,(neck_inner_radius-wt),shaft_start])
   cube([0.5,0.5,shaft_len1]);
   translate([-neck_inner_radius,0,shaft_start])
   cube([0.5,0.5,shaft_len1]);
   translate([0,neck_inner_radius-0.5,shaft_start])
   cube([0.5,0.5,shaft_len1]);
   translate([0,-neck_inner_radius,shaft_start])
   cube([0.5,0.5,shaft_len1]);
}

knob();
translate([0,0,-neck_length/2-2*wt])
neck();