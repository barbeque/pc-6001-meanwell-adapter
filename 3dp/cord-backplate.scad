// pc6001 rear shell for power entry connector
// about 5.5mm on either side of the qualitek entry

/*
Version history:
    1.0 - it fits
    1.1 - make more room for the IEC plug
*/

THICKNESS = 1.5; // 1.2 measured, just being safe
FUDGE = 0.5;

module iec_cutout () {
    // Qualitek 770W-X2/13 snap-in
    union() {
        // 24.5 x 7.5 inner cutout
        cube([7.5, 24.5, THICKNESS * 2], center=true);
        // 19.5 x 12.5 outer cutout
        cube([12.5, 19.5, THICKNESS * 2], center=true);
    }
}

module back_plate () {
    // The main vertical plate
    cube([23.7, 53, THICKNESS], center=true);
}

module mounting_lip() {
    union() {
        // The upright that connects it to the lip
        cube([15.75, THICKNESS, 5.6], center=true);
        // The lip
        translate([0, -6.8/2, (5.6 - THICKNESS)/2]) {
            cube([15.75, 6.8, THICKNESS], center=true);
        }
    }
}

//mounting_lip();

union() {
    difference() {
        back_plate();
        // move 1/2mm down
        translate([0, -0.5, 0]) {
            iec_cutout();
        }
    }
    
    // Move to the top, make top lip
    translate([0, (53 - THICKNESS)/2, 5.6/2]) {
        mounting_lip();
    }
}