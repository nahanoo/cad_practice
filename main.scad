include <lab_equipment.scad>;
include <rack.scad>;
include <slide.scad>;

$fn=25;
stirrer_radius=135/2;
stirrer_width=190;
stirrer_depth=260;
stirrer_height=80;
translate([0,-30,0]){
    stirrer(stirrer_radius,stirrer_width,stirrer_depth,stirrer_height);
};

falcon_height=80;
falcon_radius=15;
syringe_height=100;
syringe_radius=15;

translate([0,0,stirrer_height]){
    falcon(falcon_height,falcon_radius);
    translate([-60,-100,falcon_height/4]){
        syringe(syringe_height,syringe_radius);
    };
    translate([0,-100,falcon_height/4]){
        syringe(syringe_height,syringe_radius);
    };
    translate([60,-100,falcon_height/4]){
        syringe(syringe_height,syringe_radius);
    };
};
