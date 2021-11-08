// Klemmträger
module long_arm() {
 hull() {
linear_extrude(height=2)
square([47, 16]);
     translate([1.2,16,1.2])
    rotate([90,0,0]) 
cylinder(r1=1.2, r2=1.2, h=16);
 }
}
module short_arm() {
hull() {
translate([1.2,16,1.2])
rotate([90,0,0]) 
cylinder(r1=1.2, r2=1.2, h=16);
rotate([0,90,0])
linear_extrude(height=2)
square([16, 16]);
rotate([90,0,0])
    translate([1,-18,-16])
cylinder(r1=1.2, r2=1.2, h=16);    
}
}

module claw() {
hull() {
rotate([90,0,0])
    translate([1,-18,-16])
cylinder(r1=1.2, r2=1.2, h=16);
rotate([0,180,0])
translate([-15,0,16])
linear_extrude(height=2)
square([15, 16]);
}
}

module rail() {
cube([16,4.5,2]);
rotate([90,0,0])
cube([16,4.5,2]);
}


long_arm();
short_arm();
rotate([0,-10,0])
translate([-2.5,0,0])
claw();
translate([47,0,5])
rotate([0,0,90])
rotate([-90,0,0])
rail();
translate([10,0,5])
rotate([0,-90,0])
rotate([0,0,90])
mirror([0,0,1])
rail();

